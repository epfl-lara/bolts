; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!349092 () Bool)

(assert start!349092)

(declare-fun b!3703645 () Bool)

(declare-fun b_free!98845 () Bool)

(declare-fun b_next!99549 () Bool)

(assert (=> b!3703645 (= b_free!98845 (not b_next!99549))))

(declare-fun tp!1126015 () Bool)

(declare-fun b_and!277079 () Bool)

(assert (=> b!3703645 (= tp!1126015 b_and!277079)))

(declare-fun b_free!98847 () Bool)

(declare-fun b_next!99551 () Bool)

(assert (=> b!3703645 (= b_free!98847 (not b_next!99551))))

(declare-fun tp!1126017 () Bool)

(declare-fun b_and!277081 () Bool)

(assert (=> b!3703645 (= tp!1126017 b_and!277081)))

(declare-fun b!3703651 () Bool)

(declare-fun b_free!98849 () Bool)

(declare-fun b_next!99553 () Bool)

(assert (=> b!3703651 (= b_free!98849 (not b_next!99553))))

(declare-fun tp!1126018 () Bool)

(declare-fun b_and!277083 () Bool)

(assert (=> b!3703651 (= tp!1126018 b_and!277083)))

(declare-fun b_free!98851 () Bool)

(declare-fun b_next!99555 () Bool)

(assert (=> b!3703651 (= b_free!98851 (not b_next!99555))))

(declare-fun tp!1126013 () Bool)

(declare-fun b_and!277085 () Bool)

(assert (=> b!3703651 (= tp!1126013 b_and!277085)))

(declare-fun e!2293916 () Bool)

(declare-fun tp!1126019 () Bool)

(declare-datatypes ((List!39533 0))(
  ( (Nil!39409) (Cons!39409 (h!44829 (_ BitVec 16)) (t!302216 List!39533)) )
))
(declare-datatypes ((TokenValue!6229 0))(
  ( (FloatLiteralValue!12458 (text!44048 List!39533)) (TokenValueExt!6228 (__x!24675 Int)) (Broken!31145 (value!191387 List!39533)) (Object!6352) (End!6229) (Def!6229) (Underscore!6229) (Match!6229) (Else!6229) (Error!6229) (Case!6229) (If!6229) (Extends!6229) (Abstract!6229) (Class!6229) (Val!6229) (DelimiterValue!12458 (del!6289 List!39533)) (KeywordValue!6235 (value!191388 List!39533)) (CommentValue!12458 (value!191389 List!39533)) (WhitespaceValue!12458 (value!191390 List!39533)) (IndentationValue!6229 (value!191391 List!39533)) (String!44480) (Int32!6229) (Broken!31146 (value!191392 List!39533)) (Boolean!6230) (Unit!57364) (OperatorValue!6232 (op!6289 List!39533)) (IdentifierValue!12458 (value!191393 List!39533)) (IdentifierValue!12459 (value!191394 List!39533)) (WhitespaceValue!12459 (value!191395 List!39533)) (True!12458) (False!12458) (Broken!31147 (value!191396 List!39533)) (Broken!31148 (value!191397 List!39533)) (True!12459) (RightBrace!6229) (RightBracket!6229) (Colon!6229) (Null!6229) (Comma!6229) (LeftBracket!6229) (False!12459) (LeftBrace!6229) (ImaginaryLiteralValue!6229 (text!44049 List!39533)) (StringLiteralValue!18687 (value!191398 List!39533)) (EOFValue!6229 (value!191399 List!39533)) (IdentValue!6229 (value!191400 List!39533)) (DelimiterValue!12459 (value!191401 List!39533)) (DedentValue!6229 (value!191402 List!39533)) (NewLineValue!6229 (value!191403 List!39533)) (IntegerValue!18687 (value!191404 (_ BitVec 32)) (text!44050 List!39533)) (IntegerValue!18688 (value!191405 Int) (text!44051 List!39533)) (Times!6229) (Or!6229) (Equal!6229) (Minus!6229) (Broken!31149 (value!191406 List!39533)) (And!6229) (Div!6229) (LessEqual!6229) (Mod!6229) (Concat!16987) (Not!6229) (Plus!6229) (SpaceValue!6229 (value!191407 List!39533)) (IntegerValue!18689 (value!191408 Int) (text!44052 List!39533)) (StringLiteralValue!18688 (text!44053 List!39533)) (FloatLiteralValue!12459 (text!44054 List!39533)) (BytesLiteralValue!6229 (value!191409 List!39533)) (CommentValue!12459 (value!191410 List!39533)) (StringLiteralValue!18689 (value!191411 List!39533)) (ErrorTokenValue!6229 (msg!6290 List!39533)) )
))
(declare-datatypes ((C!21702 0))(
  ( (C!21703 (val!12899 Int)) )
))
(declare-datatypes ((List!39534 0))(
  ( (Nil!39410) (Cons!39410 (h!44830 C!21702) (t!302217 List!39534)) )
))
(declare-datatypes ((IArray!24197 0))(
  ( (IArray!24198 (innerList!12156 List!39534)) )
))
(declare-datatypes ((Conc!12096 0))(
  ( (Node!12096 (left!30650 Conc!12096) (right!30980 Conc!12096) (csize!24422 Int) (cheight!12307 Int)) (Leaf!18707 (xs!15298 IArray!24197) (csize!24423 Int)) (Empty!12096) )
))
(declare-datatypes ((BalanceConc!23806 0))(
  ( (BalanceConc!23807 (c!639868 Conc!12096)) )
))
(declare-datatypes ((TokenValueInjection!11886 0))(
  ( (TokenValueInjection!11887 (toValue!8339 Int) (toChars!8198 Int)) )
))
(declare-datatypes ((Regex!10758 0))(
  ( (ElementMatch!10758 (c!639869 C!21702)) (Concat!16988 (regOne!22028 Regex!10758) (regTwo!22028 Regex!10758)) (EmptyExpr!10758) (Star!10758 (reg!11087 Regex!10758)) (EmptyLang!10758) (Union!10758 (regOne!22029 Regex!10758) (regTwo!22029 Regex!10758)) )
))
(declare-datatypes ((String!44481 0))(
  ( (String!44482 (value!191412 String)) )
))
(declare-datatypes ((Rule!11798 0))(
  ( (Rule!11799 (regex!5999 Regex!10758) (tag!6845 String!44481) (isSeparator!5999 Bool) (transformation!5999 TokenValueInjection!11886)) )
))
(declare-datatypes ((List!39535 0))(
  ( (Nil!39411) (Cons!39411 (h!44831 Rule!11798) (t!302218 List!39535)) )
))
(declare-fun rules!3698 () List!39535)

(declare-fun b!3703643 () Bool)

(declare-fun e!2293915 () Bool)

(declare-fun inv!52936 (String!44481) Bool)

(declare-fun inv!52939 (TokenValueInjection!11886) Bool)

(assert (=> b!3703643 (= e!2293916 (and tp!1126019 (inv!52936 (tag!6845 (h!44831 rules!3698))) (inv!52939 (transformation!5999 (h!44831 rules!3698))) e!2293915))))

(declare-fun b!3703644 () Bool)

(declare-fun e!2293917 () Bool)

(declare-fun e!2293921 () Bool)

(assert (=> b!3703644 (= e!2293917 e!2293921)))

(declare-fun res!1506650 () Bool)

(assert (=> b!3703644 (=> res!1506650 e!2293921)))

(declare-datatypes ((List!39536 0))(
  ( (Nil!39412) (Cons!39412 (h!44832 String!44481) (t!302219 List!39536)) )
))
(declare-fun lt!1295964 () List!39536)

(declare-fun newHd!19 () Rule!11798)

(declare-fun contains!7863 (List!39536 String!44481) Bool)

(assert (=> b!3703644 (= res!1506650 (not (contains!7863 lt!1295964 (tag!6845 newHd!19))))))

(assert (=> b!3703644 (= lt!1295964 (Cons!39412 (tag!6845 newHd!19) Nil!39412))))

(declare-fun e!2293911 () Bool)

(assert (=> b!3703645 (= e!2293911 (and tp!1126015 tp!1126017))))

(declare-fun b!3703646 () Bool)

(declare-fun e!2293913 () Bool)

(assert (=> b!3703646 (= e!2293913 (not e!2293917))))

(declare-fun res!1506649 () Bool)

(assert (=> b!3703646 (=> res!1506649 e!2293917)))

(declare-datatypes ((LexerInterface!5588 0))(
  ( (LexerInterfaceExt!5585 (__x!24676 Int)) (Lexer!5586) )
))
(declare-fun thiss!25522 () LexerInterface!5588)

(declare-fun tag!250 () String!44481)

(declare-datatypes ((Option!8541 0))(
  ( (None!8540) (Some!8540 (v!38508 Rule!11798)) )
))
(declare-fun isDefined!6728 (Option!8541) Bool)

(declare-fun getRuleFromTag!1533 (LexerInterface!5588 List!39535 String!44481) Option!8541)

(assert (=> b!3703646 (= res!1506649 (not (isDefined!6728 (getRuleFromTag!1533 thiss!25522 rules!3698 tag!250))))))

(declare-fun rulesInvariant!4985 (LexerInterface!5588 List!39535) Bool)

(assert (=> b!3703646 (rulesInvariant!4985 thiss!25522 rules!3698)))

(declare-datatypes ((Unit!57365 0))(
  ( (Unit!57366) )
))
(declare-fun lt!1295963 () Unit!57365)

(declare-fun lemmaInvariantOnRulesThenOnTail!691 (LexerInterface!5588 Rule!11798 List!39535) Unit!57365)

(assert (=> b!3703646 (= lt!1295963 (lemmaInvariantOnRulesThenOnTail!691 thiss!25522 newHd!19 rules!3698))))

(declare-fun b!3703647 () Bool)

(declare-fun e!2293912 () Bool)

(declare-fun tp!1126016 () Bool)

(assert (=> b!3703647 (= e!2293912 (and e!2293916 tp!1126016))))

(declare-fun res!1506647 () Bool)

(assert (=> start!349092 (=> (not res!1506647) (not e!2293913))))

(assert (=> start!349092 (= res!1506647 (is-Lexer!5586 thiss!25522))))

(assert (=> start!349092 e!2293913))

(assert (=> start!349092 true))

(declare-fun e!2293914 () Bool)

(assert (=> start!349092 e!2293914))

(assert (=> start!349092 e!2293912))

(assert (=> start!349092 (inv!52936 tag!250)))

(declare-fun b!3703648 () Bool)

(declare-fun res!1506648 () Bool)

(assert (=> b!3703648 (=> (not res!1506648) (not e!2293913))))

(assert (=> b!3703648 (= res!1506648 (rulesInvariant!4985 thiss!25522 (Cons!39411 newHd!19 rules!3698)))))

(declare-fun b!3703649 () Bool)

(declare-fun tp!1126014 () Bool)

(assert (=> b!3703649 (= e!2293914 (and tp!1126014 (inv!52936 (tag!6845 newHd!19)) (inv!52939 (transformation!5999 newHd!19)) e!2293911))))

(declare-fun b!3703650 () Bool)

(declare-fun noDuplicateTag!2319 (LexerInterface!5588 List!39535 List!39536) Bool)

(assert (=> b!3703650 (= e!2293921 (noDuplicateTag!2319 thiss!25522 rules!3698 lt!1295964))))

(assert (=> b!3703651 (= e!2293915 (and tp!1126018 tp!1126013))))

(assert (= (and start!349092 res!1506647) b!3703648))

(assert (= (and b!3703648 res!1506648) b!3703646))

(assert (= (and b!3703646 (not res!1506649)) b!3703644))

(assert (= (and b!3703644 (not res!1506650)) b!3703650))

(assert (= b!3703649 b!3703645))

(assert (= start!349092 b!3703649))

(assert (= b!3703643 b!3703651))

(assert (= b!3703647 b!3703643))

(assert (= (and start!349092 (is-Cons!39411 rules!3698)) b!3703647))

(declare-fun m!4214517 () Bool)

(assert (=> b!3703643 m!4214517))

(declare-fun m!4214519 () Bool)

(assert (=> b!3703643 m!4214519))

(declare-fun m!4214521 () Bool)

(assert (=> b!3703644 m!4214521))

(declare-fun m!4214523 () Bool)

(assert (=> b!3703650 m!4214523))

(declare-fun m!4214525 () Bool)

(assert (=> b!3703646 m!4214525))

(assert (=> b!3703646 m!4214525))

(declare-fun m!4214527 () Bool)

(assert (=> b!3703646 m!4214527))

(declare-fun m!4214529 () Bool)

(assert (=> b!3703646 m!4214529))

(declare-fun m!4214531 () Bool)

(assert (=> b!3703646 m!4214531))

(declare-fun m!4214533 () Bool)

(assert (=> b!3703649 m!4214533))

(declare-fun m!4214535 () Bool)

(assert (=> b!3703649 m!4214535))

(declare-fun m!4214537 () Bool)

(assert (=> start!349092 m!4214537))

(declare-fun m!4214539 () Bool)

(assert (=> b!3703648 m!4214539))

(push 1)

(assert (not b!3703646))

(assert (not start!349092))

(assert (not b!3703650))

(assert (not b_next!99549))

(assert (not b_next!99553))

(assert (not b!3703647))

(assert (not b_next!99551))

(assert b_and!277081)

(assert b_and!277079)

(assert (not b!3703643))

(assert (not b_next!99555))

(assert (not b!3703648))

(assert (not b!3703649))

(assert b_and!277085)

(assert (not b!3703644))

(assert b_and!277083)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!99549))

(assert b_and!277079)

(assert (not b_next!99555))

(assert (not b_next!99553))

(assert b_and!277085)

(assert b_and!277083)

(assert (not b_next!99551))

(assert b_and!277081)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1085917 () Bool)

(declare-fun res!1506669 () Bool)

(declare-fun e!2293957 () Bool)

(assert (=> d!1085917 (=> (not res!1506669) (not e!2293957))))

(declare-fun rulesValid!2319 (LexerInterface!5588 List!39535) Bool)

(assert (=> d!1085917 (= res!1506669 (rulesValid!2319 thiss!25522 (Cons!39411 newHd!19 rules!3698)))))

(assert (=> d!1085917 (= (rulesInvariant!4985 thiss!25522 (Cons!39411 newHd!19 rules!3698)) e!2293957)))

(declare-fun b!3703681 () Bool)

(assert (=> b!3703681 (= e!2293957 (noDuplicateTag!2319 thiss!25522 (Cons!39411 newHd!19 rules!3698) Nil!39412))))

(assert (= (and d!1085917 res!1506669) b!3703681))

(declare-fun m!4214565 () Bool)

(assert (=> d!1085917 m!4214565))

(declare-fun m!4214567 () Bool)

(assert (=> b!3703681 m!4214567))

(assert (=> b!3703648 d!1085917))

(declare-fun d!1085919 () Bool)

(assert (=> d!1085919 (= (inv!52936 tag!250) (= (mod (str.len (value!191412 tag!250)) 2) 0))))

(assert (=> start!349092 d!1085919))

(declare-fun d!1085923 () Bool)

(assert (=> d!1085923 (= (inv!52936 (tag!6845 (h!44831 rules!3698))) (= (mod (str.len (value!191412 (tag!6845 (h!44831 rules!3698)))) 2) 0))))

(assert (=> b!3703643 d!1085923))

(declare-fun d!1085925 () Bool)

(declare-fun res!1506672 () Bool)

(declare-fun e!2293960 () Bool)

(assert (=> d!1085925 (=> (not res!1506672) (not e!2293960))))

(declare-fun semiInverseModEq!2562 (Int Int) Bool)

(assert (=> d!1085925 (= res!1506672 (semiInverseModEq!2562 (toChars!8198 (transformation!5999 (h!44831 rules!3698))) (toValue!8339 (transformation!5999 (h!44831 rules!3698)))))))

(assert (=> d!1085925 (= (inv!52939 (transformation!5999 (h!44831 rules!3698))) e!2293960)))

(declare-fun b!3703684 () Bool)

(declare-fun equivClasses!2461 (Int Int) Bool)

(assert (=> b!3703684 (= e!2293960 (equivClasses!2461 (toChars!8198 (transformation!5999 (h!44831 rules!3698))) (toValue!8339 (transformation!5999 (h!44831 rules!3698)))))))

(assert (= (and d!1085925 res!1506672) b!3703684))

(declare-fun m!4214569 () Bool)

(assert (=> d!1085925 m!4214569))

(declare-fun m!4214571 () Bool)

(assert (=> b!3703684 m!4214571))

(assert (=> b!3703643 d!1085925))

(declare-fun d!1085929 () Bool)

(assert (=> d!1085929 (= (inv!52936 (tag!6845 newHd!19)) (= (mod (str.len (value!191412 (tag!6845 newHd!19))) 2) 0))))

(assert (=> b!3703649 d!1085929))

(declare-fun d!1085931 () Bool)

(declare-fun res!1506673 () Bool)

(declare-fun e!2293961 () Bool)

(assert (=> d!1085931 (=> (not res!1506673) (not e!2293961))))

(assert (=> d!1085931 (= res!1506673 (semiInverseModEq!2562 (toChars!8198 (transformation!5999 newHd!19)) (toValue!8339 (transformation!5999 newHd!19))))))

(assert (=> d!1085931 (= (inv!52939 (transformation!5999 newHd!19)) e!2293961)))

(declare-fun b!3703685 () Bool)

(assert (=> b!3703685 (= e!2293961 (equivClasses!2461 (toChars!8198 (transformation!5999 newHd!19)) (toValue!8339 (transformation!5999 newHd!19))))))

(assert (= (and d!1085931 res!1506673) b!3703685))

(declare-fun m!4214573 () Bool)

(assert (=> d!1085931 m!4214573))

(declare-fun m!4214575 () Bool)

(assert (=> b!3703685 m!4214575))

(assert (=> b!3703649 d!1085931))

(declare-fun d!1085933 () Bool)

(declare-fun isEmpty!23466 (Option!8541) Bool)

(assert (=> d!1085933 (= (isDefined!6728 (getRuleFromTag!1533 thiss!25522 rules!3698 tag!250)) (not (isEmpty!23466 (getRuleFromTag!1533 thiss!25522 rules!3698 tag!250))))))

(declare-fun bs!574564 () Bool)

(assert (= bs!574564 d!1085933))

(assert (=> bs!574564 m!4214525))

(declare-fun m!4214577 () Bool)

(assert (=> bs!574564 m!4214577))

(assert (=> b!3703646 d!1085933))

(declare-fun b!3703707 () Bool)

(declare-fun lt!1295980 () Unit!57365)

(declare-fun lt!1295982 () Unit!57365)

(assert (=> b!3703707 (= lt!1295980 lt!1295982)))

(assert (=> b!3703707 (rulesInvariant!4985 thiss!25522 (t!302218 rules!3698))))

(assert (=> b!3703707 (= lt!1295982 (lemmaInvariantOnRulesThenOnTail!691 thiss!25522 (h!44831 rules!3698) (t!302218 rules!3698)))))

(declare-fun e!2293981 () Option!8541)

(assert (=> b!3703707 (= e!2293981 (getRuleFromTag!1533 thiss!25522 (t!302218 rules!3698) tag!250))))

(declare-fun b!3703708 () Bool)

(declare-fun e!2293980 () Bool)

(declare-fun e!2293979 () Bool)

(assert (=> b!3703708 (= e!2293980 e!2293979)))

(declare-fun res!1506688 () Bool)

(assert (=> b!3703708 (=> (not res!1506688) (not e!2293979))))

(declare-fun lt!1295981 () Option!8541)

(declare-fun contains!7865 (List!39535 Rule!11798) Bool)

(declare-fun get!13125 (Option!8541) Rule!11798)

(assert (=> b!3703708 (= res!1506688 (contains!7865 rules!3698 (get!13125 lt!1295981)))))

(declare-fun b!3703709 () Bool)

(declare-fun e!2293982 () Option!8541)

(assert (=> b!3703709 (= e!2293982 (Some!8540 (h!44831 rules!3698)))))

(declare-fun b!3703710 () Bool)

(assert (=> b!3703710 (= e!2293979 (= (tag!6845 (get!13125 lt!1295981)) tag!250))))

(declare-fun d!1085935 () Bool)

(assert (=> d!1085935 e!2293980))

(declare-fun res!1506687 () Bool)

(assert (=> d!1085935 (=> res!1506687 e!2293980)))

(assert (=> d!1085935 (= res!1506687 (isEmpty!23466 lt!1295981))))

(assert (=> d!1085935 (= lt!1295981 e!2293982)))

(declare-fun c!639876 () Bool)

(assert (=> d!1085935 (= c!639876 (and (is-Cons!39411 rules!3698) (= (tag!6845 (h!44831 rules!3698)) tag!250)))))

(assert (=> d!1085935 (rulesInvariant!4985 thiss!25522 rules!3698)))

(assert (=> d!1085935 (= (getRuleFromTag!1533 thiss!25522 rules!3698 tag!250) lt!1295981)))

(declare-fun b!3703711 () Bool)

(assert (=> b!3703711 (= e!2293982 e!2293981)))

(declare-fun c!639877 () Bool)

(assert (=> b!3703711 (= c!639877 (and (is-Cons!39411 rules!3698) (not (= (tag!6845 (h!44831 rules!3698)) tag!250))))))

(declare-fun b!3703712 () Bool)

(assert (=> b!3703712 (= e!2293981 None!8540)))

(assert (= (and d!1085935 c!639876) b!3703709))

(assert (= (and d!1085935 (not c!639876)) b!3703711))

(assert (= (and b!3703711 c!639877) b!3703707))

(assert (= (and b!3703711 (not c!639877)) b!3703712))

(assert (= (and d!1085935 (not res!1506687)) b!3703708))

(assert (= (and b!3703708 res!1506688) b!3703710))

(declare-fun m!4214591 () Bool)

(assert (=> b!3703707 m!4214591))

(declare-fun m!4214593 () Bool)

(assert (=> b!3703707 m!4214593))

(declare-fun m!4214595 () Bool)

(assert (=> b!3703707 m!4214595))

(declare-fun m!4214597 () Bool)

(assert (=> b!3703708 m!4214597))

(assert (=> b!3703708 m!4214597))

(declare-fun m!4214599 () Bool)

(assert (=> b!3703708 m!4214599))

(assert (=> b!3703710 m!4214597))

(declare-fun m!4214601 () Bool)

(assert (=> d!1085935 m!4214601))

(assert (=> d!1085935 m!4214529))

(assert (=> b!3703646 d!1085935))

(declare-fun d!1085945 () Bool)

(declare-fun res!1506689 () Bool)

(declare-fun e!2293983 () Bool)

(assert (=> d!1085945 (=> (not res!1506689) (not e!2293983))))

(assert (=> d!1085945 (= res!1506689 (rulesValid!2319 thiss!25522 rules!3698))))

(assert (=> d!1085945 (= (rulesInvariant!4985 thiss!25522 rules!3698) e!2293983)))

(declare-fun b!3703713 () Bool)

(assert (=> b!3703713 (= e!2293983 (noDuplicateTag!2319 thiss!25522 rules!3698 Nil!39412))))

(assert (= (and d!1085945 res!1506689) b!3703713))

(declare-fun m!4214603 () Bool)

(assert (=> d!1085945 m!4214603))

(declare-fun m!4214605 () Bool)

(assert (=> b!3703713 m!4214605))

(assert (=> b!3703646 d!1085945))

(declare-fun d!1085947 () Bool)

(assert (=> d!1085947 (rulesInvariant!4985 thiss!25522 rules!3698)))

(declare-fun lt!1295985 () Unit!57365)

(declare-fun choose!22146 (LexerInterface!5588 Rule!11798 List!39535) Unit!57365)

(assert (=> d!1085947 (= lt!1295985 (choose!22146 thiss!25522 newHd!19 rules!3698))))

(assert (=> d!1085947 (rulesInvariant!4985 thiss!25522 (Cons!39411 newHd!19 rules!3698))))

(assert (=> d!1085947 (= (lemmaInvariantOnRulesThenOnTail!691 thiss!25522 newHd!19 rules!3698) lt!1295985)))

(declare-fun bs!574566 () Bool)

(assert (= bs!574566 d!1085947))

(assert (=> bs!574566 m!4214529))

(declare-fun m!4214607 () Bool)

(assert (=> bs!574566 m!4214607))

(assert (=> bs!574566 m!4214539))

(assert (=> b!3703646 d!1085947))

(declare-fun d!1085949 () Bool)

(declare-fun lt!1295994 () Bool)

(declare-fun content!5691 (List!39536) (Set String!44481))

(assert (=> d!1085949 (= lt!1295994 (set.member (tag!6845 newHd!19) (content!5691 lt!1295964)))))

(declare-fun e!2293997 () Bool)

(assert (=> d!1085949 (= lt!1295994 e!2293997)))

(declare-fun res!1506699 () Bool)

(assert (=> d!1085949 (=> (not res!1506699) (not e!2293997))))

(assert (=> d!1085949 (= res!1506699 (is-Cons!39412 lt!1295964))))

(assert (=> d!1085949 (= (contains!7863 lt!1295964 (tag!6845 newHd!19)) lt!1295994)))

(declare-fun b!3703730 () Bool)

(declare-fun e!2293996 () Bool)

(assert (=> b!3703730 (= e!2293997 e!2293996)))

(declare-fun res!1506698 () Bool)

(assert (=> b!3703730 (=> res!1506698 e!2293996)))

(assert (=> b!3703730 (= res!1506698 (= (h!44832 lt!1295964) (tag!6845 newHd!19)))))

(declare-fun b!3703731 () Bool)

(assert (=> b!3703731 (= e!2293996 (contains!7863 (t!302219 lt!1295964) (tag!6845 newHd!19)))))

(assert (= (and d!1085949 res!1506699) b!3703730))

(assert (= (and b!3703730 (not res!1506698)) b!3703731))

(declare-fun m!4214609 () Bool)

(assert (=> d!1085949 m!4214609))

(declare-fun m!4214611 () Bool)

(assert (=> d!1085949 m!4214611))

(declare-fun m!4214613 () Bool)

(assert (=> b!3703731 m!4214613))

(assert (=> b!3703644 d!1085949))

(declare-fun d!1085951 () Bool)

(declare-fun res!1506706 () Bool)

(declare-fun e!2294006 () Bool)

(assert (=> d!1085951 (=> res!1506706 e!2294006)))

(assert (=> d!1085951 (= res!1506706 (is-Nil!39411 rules!3698))))

(assert (=> d!1085951 (= (noDuplicateTag!2319 thiss!25522 rules!3698 lt!1295964) e!2294006)))

(declare-fun b!3703742 () Bool)

(declare-fun e!2294007 () Bool)

(assert (=> b!3703742 (= e!2294006 e!2294007)))

(declare-fun res!1506707 () Bool)

(assert (=> b!3703742 (=> (not res!1506707) (not e!2294007))))

(assert (=> b!3703742 (= res!1506707 (not (contains!7863 lt!1295964 (tag!6845 (h!44831 rules!3698)))))))

(declare-fun b!3703743 () Bool)

(assert (=> b!3703743 (= e!2294007 (noDuplicateTag!2319 thiss!25522 (t!302218 rules!3698) (Cons!39412 (tag!6845 (h!44831 rules!3698)) lt!1295964)))))

(assert (= (and d!1085951 (not res!1506706)) b!3703742))

(assert (= (and b!3703742 res!1506707) b!3703743))

(declare-fun m!4214627 () Bool)

(assert (=> b!3703742 m!4214627))

(declare-fun m!4214629 () Bool)

(assert (=> b!3703743 m!4214629))

(assert (=> b!3703650 d!1085951))

(declare-fun b!3703756 () Bool)

(declare-fun e!2294012 () Bool)

(declare-fun tp_is_empty!18571 () Bool)

(assert (=> b!3703756 (= e!2294012 tp_is_empty!18571)))

(declare-fun b!3703758 () Bool)

(declare-fun tp!1126053 () Bool)

(assert (=> b!3703758 (= e!2294012 tp!1126053)))

(declare-fun b!3703759 () Bool)

(declare-fun tp!1126055 () Bool)

(declare-fun tp!1126051 () Bool)

(assert (=> b!3703759 (= e!2294012 (and tp!1126055 tp!1126051))))

(assert (=> b!3703643 (= tp!1126019 e!2294012)))

(declare-fun b!3703757 () Bool)

(declare-fun tp!1126054 () Bool)

(declare-fun tp!1126052 () Bool)

(assert (=> b!3703757 (= e!2294012 (and tp!1126054 tp!1126052))))

(assert (= (and b!3703643 (is-ElementMatch!10758 (regex!5999 (h!44831 rules!3698)))) b!3703756))

(assert (= (and b!3703643 (is-Concat!16988 (regex!5999 (h!44831 rules!3698)))) b!3703757))

(assert (= (and b!3703643 (is-Star!10758 (regex!5999 (h!44831 rules!3698)))) b!3703758))

(assert (= (and b!3703643 (is-Union!10758 (regex!5999 (h!44831 rules!3698)))) b!3703759))

(declare-fun b!3703760 () Bool)

(declare-fun e!2294013 () Bool)

(assert (=> b!3703760 (= e!2294013 tp_is_empty!18571)))

(declare-fun b!3703762 () Bool)

(declare-fun tp!1126058 () Bool)

(assert (=> b!3703762 (= e!2294013 tp!1126058)))

(declare-fun b!3703763 () Bool)

(declare-fun tp!1126060 () Bool)

(declare-fun tp!1126056 () Bool)

(assert (=> b!3703763 (= e!2294013 (and tp!1126060 tp!1126056))))

(assert (=> b!3703649 (= tp!1126014 e!2294013)))

(declare-fun b!3703761 () Bool)

(declare-fun tp!1126059 () Bool)

(declare-fun tp!1126057 () Bool)

(assert (=> b!3703761 (= e!2294013 (and tp!1126059 tp!1126057))))

(assert (= (and b!3703649 (is-ElementMatch!10758 (regex!5999 newHd!19))) b!3703760))

(assert (= (and b!3703649 (is-Concat!16988 (regex!5999 newHd!19))) b!3703761))

(assert (= (and b!3703649 (is-Star!10758 (regex!5999 newHd!19))) b!3703762))

(assert (= (and b!3703649 (is-Union!10758 (regex!5999 newHd!19))) b!3703763))

(declare-fun b!3703775 () Bool)

(declare-fun b_free!98861 () Bool)

(declare-fun b_next!99565 () Bool)

(assert (=> b!3703775 (= b_free!98861 (not b_next!99565))))

(declare-fun tp!1126069 () Bool)

(declare-fun b_and!277095 () Bool)

(assert (=> b!3703775 (= tp!1126069 b_and!277095)))

(declare-fun b_free!98863 () Bool)

(declare-fun b_next!99567 () Bool)

(assert (=> b!3703775 (= b_free!98863 (not b_next!99567))))

(declare-fun tp!1126072 () Bool)

(declare-fun b_and!277097 () Bool)

(assert (=> b!3703775 (= tp!1126072 b_and!277097)))

(declare-fun e!2294024 () Bool)

(assert (=> b!3703775 (= e!2294024 (and tp!1126069 tp!1126072))))

(declare-fun tp!1126071 () Bool)

(declare-fun e!2294026 () Bool)

(declare-fun b!3703774 () Bool)

(assert (=> b!3703774 (= e!2294026 (and tp!1126071 (inv!52936 (tag!6845 (h!44831 (t!302218 rules!3698)))) (inv!52939 (transformation!5999 (h!44831 (t!302218 rules!3698)))) e!2294024))))

(declare-fun b!3703773 () Bool)

(declare-fun e!2294023 () Bool)

(declare-fun tp!1126070 () Bool)

(assert (=> b!3703773 (= e!2294023 (and e!2294026 tp!1126070))))

(assert (=> b!3703647 (= tp!1126016 e!2294023)))

(assert (= b!3703774 b!3703775))

(assert (= b!3703773 b!3703774))

(assert (= (and b!3703647 (is-Cons!39411 (t!302218 rules!3698))) b!3703773))

(declare-fun m!4214635 () Bool)

(assert (=> b!3703774 m!4214635))

(declare-fun m!4214637 () Bool)

(assert (=> b!3703774 m!4214637))

(push 1)

(assert b_and!277095)

(assert tp_is_empty!18571)

(assert (not d!1085935))

(assert (not d!1085925))

(assert (not b!3703757))

(assert (not d!1085933))

(assert (not b_next!99555))

(assert (not b!3703773))

(assert (not b!3703761))

(assert b_and!277083)

(assert (not b!3703685))

(assert b_and!277081)

(assert (not b!3703708))

(assert (not b!3703681))

(assert (not d!1085947))

(assert (not b!3703763))

(assert (not b_next!99565))

(assert (not b_next!99549))

(assert (not b!3703742))

(assert (not b!3703774))

(assert b_and!277079)

(assert (not d!1085931))

(assert (not b!3703731))

(assert (not d!1085917))

(assert (not b_next!99567))

(assert (not b_next!99553))

(assert (not b!3703684))

(assert b_and!277085)

(assert (not b!3703758))

(assert (not b!3703762))

(assert (not b!3703759))

(assert (not b!3703710))

(assert (not b!3703713))

(assert (not d!1085945))

(assert b_and!277097)

(assert (not b!3703743))

(assert (not b!3703707))

(assert (not d!1085949))

(assert (not b_next!99551))

(check-sat)

(pop 1)

(push 1)

(assert b_and!277095)

(assert (not b_next!99565))

(assert (not b_next!99549))

(assert b_and!277079)

(assert (not b_next!99555))

(assert (not b_next!99567))

(assert (not b_next!99553))

(assert b_and!277085)

(assert b_and!277083)

(assert b_and!277097)

(assert (not b_next!99551))

(assert b_and!277081)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1085965 () Bool)

(declare-fun res!1506721 () Bool)

(declare-fun e!2294051 () Bool)

(assert (=> d!1085965 (=> res!1506721 e!2294051)))

(assert (=> d!1085965 (= res!1506721 (is-Nil!39411 (t!302218 rules!3698)))))

(assert (=> d!1085965 (= (noDuplicateTag!2319 thiss!25522 (t!302218 rules!3698) (Cons!39412 (tag!6845 (h!44831 rules!3698)) lt!1295964)) e!2294051)))

(declare-fun b!3703813 () Bool)

(declare-fun e!2294052 () Bool)

(assert (=> b!3703813 (= e!2294051 e!2294052)))

(declare-fun res!1506722 () Bool)

(assert (=> b!3703813 (=> (not res!1506722) (not e!2294052))))

(assert (=> b!3703813 (= res!1506722 (not (contains!7863 (Cons!39412 (tag!6845 (h!44831 rules!3698)) lt!1295964) (tag!6845 (h!44831 (t!302218 rules!3698))))))))

(declare-fun b!3703814 () Bool)

(assert (=> b!3703814 (= e!2294052 (noDuplicateTag!2319 thiss!25522 (t!302218 (t!302218 rules!3698)) (Cons!39412 (tag!6845 (h!44831 (t!302218 rules!3698))) (Cons!39412 (tag!6845 (h!44831 rules!3698)) lt!1295964))))))

(assert (= (and d!1085965 (not res!1506721)) b!3703813))

(assert (= (and b!3703813 res!1506722) b!3703814))

(declare-fun m!4214657 () Bool)

(assert (=> b!3703813 m!4214657))

(declare-fun m!4214659 () Bool)

(assert (=> b!3703814 m!4214659))

(assert (=> b!3703743 d!1085965))

(assert (=> d!1085947 d!1085945))

(declare-fun d!1085967 () Bool)

(assert (=> d!1085967 (rulesInvariant!4985 thiss!25522 rules!3698)))

(assert (=> d!1085967 true))

(declare-fun _$66!551 () Unit!57365)

(assert (=> d!1085967 (= (choose!22146 thiss!25522 newHd!19 rules!3698) _$66!551)))

(declare-fun bs!574568 () Bool)

(assert (= bs!574568 d!1085967))

(assert (=> bs!574568 m!4214529))

(assert (=> d!1085947 d!1085967))

(assert (=> d!1085947 d!1085917))

(declare-fun d!1085969 () Bool)

(assert (=> d!1085969 true))

(declare-fun order!21717 () Int)

(declare-fun order!21715 () Int)

(declare-fun lambda!125110 () Int)

(declare-fun dynLambda!17199 (Int Int) Int)

(declare-fun dynLambda!17200 (Int Int) Int)

(assert (=> d!1085969 (< (dynLambda!17199 order!21715 (toChars!8198 (transformation!5999 (h!44831 rules!3698)))) (dynLambda!17200 order!21717 lambda!125110))))

(assert (=> d!1085969 true))

(declare-fun order!21719 () Int)

(declare-fun dynLambda!17201 (Int Int) Int)

(assert (=> d!1085969 (< (dynLambda!17201 order!21719 (toValue!8339 (transformation!5999 (h!44831 rules!3698)))) (dynLambda!17200 order!21717 lambda!125110))))

(declare-fun Forall!1393 (Int) Bool)

(assert (=> d!1085969 (= (semiInverseModEq!2562 (toChars!8198 (transformation!5999 (h!44831 rules!3698))) (toValue!8339 (transformation!5999 (h!44831 rules!3698)))) (Forall!1393 lambda!125110))))

(declare-fun bs!574569 () Bool)

(assert (= bs!574569 d!1085969))

(declare-fun m!4214661 () Bool)

(assert (=> bs!574569 m!4214661))

(assert (=> d!1085925 d!1085969))

(declare-fun d!1085973 () Bool)

(declare-fun lt!1296001 () Bool)

(assert (=> d!1085973 (= lt!1296001 (set.member (tag!6845 (h!44831 rules!3698)) (content!5691 lt!1295964)))))

(declare-fun e!2294054 () Bool)

(assert (=> d!1085973 (= lt!1296001 e!2294054)))

(declare-fun res!1506728 () Bool)

(assert (=> d!1085973 (=> (not res!1506728) (not e!2294054))))

(assert (=> d!1085973 (= res!1506728 (is-Cons!39412 lt!1295964))))

(assert (=> d!1085973 (= (contains!7863 lt!1295964 (tag!6845 (h!44831 rules!3698))) lt!1296001)))

(declare-fun b!3703819 () Bool)

(declare-fun e!2294053 () Bool)

(assert (=> b!3703819 (= e!2294054 e!2294053)))

(declare-fun res!1506727 () Bool)

(assert (=> b!3703819 (=> res!1506727 e!2294053)))

(assert (=> b!3703819 (= res!1506727 (= (h!44832 lt!1295964) (tag!6845 (h!44831 rules!3698))))))

(declare-fun b!3703820 () Bool)

(assert (=> b!3703820 (= e!2294053 (contains!7863 (t!302219 lt!1295964) (tag!6845 (h!44831 rules!3698))))))

(assert (= (and d!1085973 res!1506728) b!3703819))

(assert (= (and b!3703819 (not res!1506727)) b!3703820))

(assert (=> d!1085973 m!4214609))

(declare-fun m!4214663 () Bool)

(assert (=> d!1085973 m!4214663))

(declare-fun m!4214665 () Bool)

(assert (=> b!3703820 m!4214665))

(assert (=> b!3703742 d!1085973))

(declare-fun d!1085975 () Bool)

(assert (=> d!1085975 true))

(declare-fun lt!1296004 () Bool)

(declare-fun rulesValidInductive!2158 (LexerInterface!5588 List!39535) Bool)

(assert (=> d!1085975 (= lt!1296004 (rulesValidInductive!2158 thiss!25522 rules!3698))))

(declare-fun lambda!125113 () Int)

(declare-fun forall!8185 (List!39535 Int) Bool)

(assert (=> d!1085975 (= lt!1296004 (forall!8185 rules!3698 lambda!125113))))

(assert (=> d!1085975 (= (rulesValid!2319 thiss!25522 rules!3698) lt!1296004)))

(declare-fun bs!574570 () Bool)

(assert (= bs!574570 d!1085975))

(declare-fun m!4214667 () Bool)

(assert (=> bs!574570 m!4214667))

(declare-fun m!4214669 () Bool)

(assert (=> bs!574570 m!4214669))

(assert (=> d!1085945 d!1085975))

(declare-fun d!1085977 () Bool)

(assert (=> d!1085977 (= (isEmpty!23466 (getRuleFromTag!1533 thiss!25522 rules!3698 tag!250)) (not (is-Some!8540 (getRuleFromTag!1533 thiss!25522 rules!3698 tag!250))))))

(assert (=> d!1085933 d!1085977))

(declare-fun d!1085979 () Bool)

(assert (=> d!1085979 (= (isEmpty!23466 lt!1295981) (not (is-Some!8540 lt!1295981)))))

(assert (=> d!1085935 d!1085979))

(assert (=> d!1085935 d!1085945))

(declare-fun d!1085981 () Bool)

(assert (=> d!1085981 true))

(declare-fun lambda!125116 () Int)

(declare-fun order!21721 () Int)

(declare-fun dynLambda!17202 (Int Int) Int)

(assert (=> d!1085981 (< (dynLambda!17201 order!21719 (toValue!8339 (transformation!5999 (h!44831 rules!3698)))) (dynLambda!17202 order!21721 lambda!125116))))

(declare-fun Forall2!991 (Int) Bool)

(assert (=> d!1085981 (= (equivClasses!2461 (toChars!8198 (transformation!5999 (h!44831 rules!3698))) (toValue!8339 (transformation!5999 (h!44831 rules!3698)))) (Forall2!991 lambda!125116))))

(declare-fun bs!574571 () Bool)

(assert (= bs!574571 d!1085981))

(declare-fun m!4214671 () Bool)

(assert (=> bs!574571 m!4214671))

(assert (=> b!3703684 d!1085981))

(declare-fun d!1085983 () Bool)

(declare-fun res!1506731 () Bool)

(declare-fun e!2294057 () Bool)

(assert (=> d!1085983 (=> res!1506731 e!2294057)))

(assert (=> d!1085983 (= res!1506731 (is-Nil!39411 (Cons!39411 newHd!19 rules!3698)))))

(assert (=> d!1085983 (= (noDuplicateTag!2319 thiss!25522 (Cons!39411 newHd!19 rules!3698) Nil!39412) e!2294057)))

(declare-fun b!3703827 () Bool)

(declare-fun e!2294058 () Bool)

(assert (=> b!3703827 (= e!2294057 e!2294058)))

(declare-fun res!1506732 () Bool)

(assert (=> b!3703827 (=> (not res!1506732) (not e!2294058))))

(assert (=> b!3703827 (= res!1506732 (not (contains!7863 Nil!39412 (tag!6845 (h!44831 (Cons!39411 newHd!19 rules!3698))))))))

(declare-fun b!3703828 () Bool)

(assert (=> b!3703828 (= e!2294058 (noDuplicateTag!2319 thiss!25522 (t!302218 (Cons!39411 newHd!19 rules!3698)) (Cons!39412 (tag!6845 (h!44831 (Cons!39411 newHd!19 rules!3698))) Nil!39412)))))

(assert (= (and d!1085983 (not res!1506731)) b!3703827))

(assert (= (and b!3703827 res!1506732) b!3703828))

(declare-fun m!4214673 () Bool)

(assert (=> b!3703827 m!4214673))

(declare-fun m!4214675 () Bool)

(assert (=> b!3703828 m!4214675))

(assert (=> b!3703681 d!1085983))

(declare-fun d!1085985 () Bool)

(declare-fun lt!1296007 () Bool)

(declare-fun content!5692 (List!39535) (Set Rule!11798))

(assert (=> d!1085985 (= lt!1296007 (set.member (get!13125 lt!1295981) (content!5692 rules!3698)))))

(declare-fun e!2294064 () Bool)

(assert (=> d!1085985 (= lt!1296007 e!2294064)))

(declare-fun res!1506737 () Bool)

(assert (=> d!1085985 (=> (not res!1506737) (not e!2294064))))

(assert (=> d!1085985 (= res!1506737 (is-Cons!39411 rules!3698))))

(assert (=> d!1085985 (= (contains!7865 rules!3698 (get!13125 lt!1295981)) lt!1296007)))

(declare-fun b!3703833 () Bool)

(declare-fun e!2294063 () Bool)

(assert (=> b!3703833 (= e!2294064 e!2294063)))

(declare-fun res!1506738 () Bool)

(assert (=> b!3703833 (=> res!1506738 e!2294063)))

(assert (=> b!3703833 (= res!1506738 (= (h!44831 rules!3698) (get!13125 lt!1295981)))))

(declare-fun b!3703834 () Bool)

(assert (=> b!3703834 (= e!2294063 (contains!7865 (t!302218 rules!3698) (get!13125 lt!1295981)))))

(assert (= (and d!1085985 res!1506737) b!3703833))

(assert (= (and b!3703833 (not res!1506738)) b!3703834))

(declare-fun m!4214677 () Bool)

(assert (=> d!1085985 m!4214677))

(assert (=> d!1085985 m!4214597))

(declare-fun m!4214679 () Bool)

(assert (=> d!1085985 m!4214679))

(assert (=> b!3703834 m!4214597))

(declare-fun m!4214681 () Bool)

(assert (=> b!3703834 m!4214681))

(assert (=> b!3703708 d!1085985))

(declare-fun d!1085987 () Bool)

(assert (=> d!1085987 (= (get!13125 lt!1295981) (v!38508 lt!1295981))))

(assert (=> b!3703708 d!1085987))

(declare-fun d!1085989 () Bool)

(declare-fun res!1506739 () Bool)

(declare-fun e!2294065 () Bool)

(assert (=> d!1085989 (=> res!1506739 e!2294065)))

(assert (=> d!1085989 (= res!1506739 (is-Nil!39411 rules!3698))))

(assert (=> d!1085989 (= (noDuplicateTag!2319 thiss!25522 rules!3698 Nil!39412) e!2294065)))

(declare-fun b!3703835 () Bool)

(declare-fun e!2294066 () Bool)

(assert (=> b!3703835 (= e!2294065 e!2294066)))

(declare-fun res!1506740 () Bool)

(assert (=> b!3703835 (=> (not res!1506740) (not e!2294066))))

(assert (=> b!3703835 (= res!1506740 (not (contains!7863 Nil!39412 (tag!6845 (h!44831 rules!3698)))))))

(declare-fun b!3703836 () Bool)

(assert (=> b!3703836 (= e!2294066 (noDuplicateTag!2319 thiss!25522 (t!302218 rules!3698) (Cons!39412 (tag!6845 (h!44831 rules!3698)) Nil!39412)))))

(assert (= (and d!1085989 (not res!1506739)) b!3703835))

(assert (= (and b!3703835 res!1506740) b!3703836))

(declare-fun m!4214683 () Bool)

(assert (=> b!3703835 m!4214683))

(declare-fun m!4214685 () Bool)

(assert (=> b!3703836 m!4214685))

(assert (=> b!3703713 d!1085989))

(assert (=> b!3703710 d!1085987))

(declare-fun d!1085991 () Bool)

(declare-fun c!639886 () Bool)

(assert (=> d!1085991 (= c!639886 (is-Nil!39412 lt!1295964))))

(declare-fun e!2294069 () (Set String!44481))

(assert (=> d!1085991 (= (content!5691 lt!1295964) e!2294069)))

(declare-fun b!3703841 () Bool)

(assert (=> b!3703841 (= e!2294069 (as set.empty (Set String!44481)))))

(declare-fun b!3703842 () Bool)

(assert (=> b!3703842 (= e!2294069 (set.union (set.insert (h!44832 lt!1295964) (as set.empty (Set String!44481))) (content!5691 (t!302219 lt!1295964))))))

(assert (= (and d!1085991 c!639886) b!3703841))

(assert (= (and d!1085991 (not c!639886)) b!3703842))

(declare-fun m!4214687 () Bool)

(assert (=> b!3703842 m!4214687))

(declare-fun m!4214689 () Bool)

(assert (=> b!3703842 m!4214689))

(assert (=> d!1085949 d!1085991))

(declare-fun bs!574572 () Bool)

(declare-fun d!1085993 () Bool)

(assert (= bs!574572 (and d!1085993 d!1085981)))

(declare-fun lambda!125117 () Int)

(assert (=> bs!574572 (= (= (toValue!8339 (transformation!5999 newHd!19)) (toValue!8339 (transformation!5999 (h!44831 rules!3698)))) (= lambda!125117 lambda!125116))))

(assert (=> d!1085993 true))

(assert (=> d!1085993 (< (dynLambda!17201 order!21719 (toValue!8339 (transformation!5999 newHd!19))) (dynLambda!17202 order!21721 lambda!125117))))

(assert (=> d!1085993 (= (equivClasses!2461 (toChars!8198 (transformation!5999 newHd!19)) (toValue!8339 (transformation!5999 newHd!19))) (Forall2!991 lambda!125117))))

(declare-fun bs!574573 () Bool)

(assert (= bs!574573 d!1085993))

(declare-fun m!4214691 () Bool)

(assert (=> bs!574573 m!4214691))

(assert (=> b!3703685 d!1085993))

(declare-fun bs!574574 () Bool)

(declare-fun d!1085995 () Bool)

(assert (= bs!574574 (and d!1085995 d!1085975)))

(declare-fun lambda!125118 () Int)

(assert (=> bs!574574 (= lambda!125118 lambda!125113)))

(assert (=> d!1085995 true))

(declare-fun lt!1296008 () Bool)

(assert (=> d!1085995 (= lt!1296008 (rulesValidInductive!2158 thiss!25522 (Cons!39411 newHd!19 rules!3698)))))

(assert (=> d!1085995 (= lt!1296008 (forall!8185 (Cons!39411 newHd!19 rules!3698) lambda!125118))))

(assert (=> d!1085995 (= (rulesValid!2319 thiss!25522 (Cons!39411 newHd!19 rules!3698)) lt!1296008)))

(declare-fun bs!574575 () Bool)

(assert (= bs!574575 d!1085995))

(declare-fun m!4214693 () Bool)

(assert (=> bs!574575 m!4214693))

(declare-fun m!4214695 () Bool)

(assert (=> bs!574575 m!4214695))

(assert (=> d!1085917 d!1085995))

(declare-fun bs!574576 () Bool)

(declare-fun d!1085997 () Bool)

(assert (= bs!574576 (and d!1085997 d!1085969)))

(declare-fun lambda!125119 () Int)

(assert (=> bs!574576 (= (and (= (toChars!8198 (transformation!5999 newHd!19)) (toChars!8198 (transformation!5999 (h!44831 rules!3698)))) (= (toValue!8339 (transformation!5999 newHd!19)) (toValue!8339 (transformation!5999 (h!44831 rules!3698))))) (= lambda!125119 lambda!125110))))

(assert (=> d!1085997 true))

(assert (=> d!1085997 (< (dynLambda!17199 order!21715 (toChars!8198 (transformation!5999 newHd!19))) (dynLambda!17200 order!21717 lambda!125119))))

(assert (=> d!1085997 true))

(assert (=> d!1085997 (< (dynLambda!17201 order!21719 (toValue!8339 (transformation!5999 newHd!19))) (dynLambda!17200 order!21717 lambda!125119))))

(assert (=> d!1085997 (= (semiInverseModEq!2562 (toChars!8198 (transformation!5999 newHd!19)) (toValue!8339 (transformation!5999 newHd!19))) (Forall!1393 lambda!125119))))

(declare-fun bs!574577 () Bool)

(assert (= bs!574577 d!1085997))

(declare-fun m!4214697 () Bool)

(assert (=> bs!574577 m!4214697))

(assert (=> d!1085931 d!1085997))

(declare-fun d!1085999 () Bool)

(assert (=> d!1085999 (= (inv!52936 (tag!6845 (h!44831 (t!302218 rules!3698)))) (= (mod (str.len (value!191412 (tag!6845 (h!44831 (t!302218 rules!3698))))) 2) 0))))

(assert (=> b!3703774 d!1085999))

(declare-fun d!1086001 () Bool)

(declare-fun res!1506741 () Bool)

(declare-fun e!2294070 () Bool)

(assert (=> d!1086001 (=> (not res!1506741) (not e!2294070))))

(assert (=> d!1086001 (= res!1506741 (semiInverseModEq!2562 (toChars!8198 (transformation!5999 (h!44831 (t!302218 rules!3698)))) (toValue!8339 (transformation!5999 (h!44831 (t!302218 rules!3698))))))))

(assert (=> d!1086001 (= (inv!52939 (transformation!5999 (h!44831 (t!302218 rules!3698)))) e!2294070)))

(declare-fun b!3703843 () Bool)

(assert (=> b!3703843 (= e!2294070 (equivClasses!2461 (toChars!8198 (transformation!5999 (h!44831 (t!302218 rules!3698)))) (toValue!8339 (transformation!5999 (h!44831 (t!302218 rules!3698))))))))

(assert (= (and d!1086001 res!1506741) b!3703843))

(declare-fun m!4214699 () Bool)

(assert (=> d!1086001 m!4214699))

(declare-fun m!4214701 () Bool)

(assert (=> b!3703843 m!4214701))

(assert (=> b!3703774 d!1086001))

(declare-fun d!1086003 () Bool)

(declare-fun lt!1296009 () Bool)

(assert (=> d!1086003 (= lt!1296009 (set.member (tag!6845 newHd!19) (content!5691 (t!302219 lt!1295964))))))

(declare-fun e!2294072 () Bool)

(assert (=> d!1086003 (= lt!1296009 e!2294072)))

(declare-fun res!1506743 () Bool)

(assert (=> d!1086003 (=> (not res!1506743) (not e!2294072))))

(assert (=> d!1086003 (= res!1506743 (is-Cons!39412 (t!302219 lt!1295964)))))

(assert (=> d!1086003 (= (contains!7863 (t!302219 lt!1295964) (tag!6845 newHd!19)) lt!1296009)))

(declare-fun b!3703844 () Bool)

(declare-fun e!2294071 () Bool)

(assert (=> b!3703844 (= e!2294072 e!2294071)))

(declare-fun res!1506742 () Bool)

(assert (=> b!3703844 (=> res!1506742 e!2294071)))

(assert (=> b!3703844 (= res!1506742 (= (h!44832 (t!302219 lt!1295964)) (tag!6845 newHd!19)))))

(declare-fun b!3703845 () Bool)

(assert (=> b!3703845 (= e!2294071 (contains!7863 (t!302219 (t!302219 lt!1295964)) (tag!6845 newHd!19)))))

(assert (= (and d!1086003 res!1506743) b!3703844))

(assert (= (and b!3703844 (not res!1506742)) b!3703845))

(assert (=> d!1086003 m!4214689))

(declare-fun m!4214703 () Bool)

(assert (=> d!1086003 m!4214703))

(declare-fun m!4214705 () Bool)

(assert (=> b!3703845 m!4214705))

(assert (=> b!3703731 d!1086003))

(declare-fun d!1086005 () Bool)

(declare-fun res!1506744 () Bool)

(declare-fun e!2294073 () Bool)

(assert (=> d!1086005 (=> (not res!1506744) (not e!2294073))))

(assert (=> d!1086005 (= res!1506744 (rulesValid!2319 thiss!25522 (t!302218 rules!3698)))))

(assert (=> d!1086005 (= (rulesInvariant!4985 thiss!25522 (t!302218 rules!3698)) e!2294073)))

(declare-fun b!3703846 () Bool)

(assert (=> b!3703846 (= e!2294073 (noDuplicateTag!2319 thiss!25522 (t!302218 rules!3698) Nil!39412))))

(assert (= (and d!1086005 res!1506744) b!3703846))

(declare-fun m!4214707 () Bool)

(assert (=> d!1086005 m!4214707))

(declare-fun m!4214709 () Bool)

(assert (=> b!3703846 m!4214709))

(assert (=> b!3703707 d!1086005))

(declare-fun d!1086007 () Bool)

(assert (=> d!1086007 (rulesInvariant!4985 thiss!25522 (t!302218 rules!3698))))

(declare-fun lt!1296010 () Unit!57365)

(assert (=> d!1086007 (= lt!1296010 (choose!22146 thiss!25522 (h!44831 rules!3698) (t!302218 rules!3698)))))

(assert (=> d!1086007 (rulesInvariant!4985 thiss!25522 (Cons!39411 (h!44831 rules!3698) (t!302218 rules!3698)))))

(assert (=> d!1086007 (= (lemmaInvariantOnRulesThenOnTail!691 thiss!25522 (h!44831 rules!3698) (t!302218 rules!3698)) lt!1296010)))

(declare-fun bs!574578 () Bool)

(assert (= bs!574578 d!1086007))

(assert (=> bs!574578 m!4214591))

(declare-fun m!4214711 () Bool)

(assert (=> bs!574578 m!4214711))

(declare-fun m!4214713 () Bool)

(assert (=> bs!574578 m!4214713))

(assert (=> b!3703707 d!1086007))

(declare-fun b!3703847 () Bool)

(declare-fun lt!1296011 () Unit!57365)

(declare-fun lt!1296013 () Unit!57365)

(assert (=> b!3703847 (= lt!1296011 lt!1296013)))

(assert (=> b!3703847 (rulesInvariant!4985 thiss!25522 (t!302218 (t!302218 rules!3698)))))

(assert (=> b!3703847 (= lt!1296013 (lemmaInvariantOnRulesThenOnTail!691 thiss!25522 (h!44831 (t!302218 rules!3698)) (t!302218 (t!302218 rules!3698))))))

(declare-fun e!2294076 () Option!8541)

(assert (=> b!3703847 (= e!2294076 (getRuleFromTag!1533 thiss!25522 (t!302218 (t!302218 rules!3698)) tag!250))))

(declare-fun b!3703848 () Bool)

(declare-fun e!2294075 () Bool)

(declare-fun e!2294074 () Bool)

(assert (=> b!3703848 (= e!2294075 e!2294074)))

(declare-fun res!1506746 () Bool)

(assert (=> b!3703848 (=> (not res!1506746) (not e!2294074))))

(declare-fun lt!1296012 () Option!8541)

(assert (=> b!3703848 (= res!1506746 (contains!7865 (t!302218 rules!3698) (get!13125 lt!1296012)))))

(declare-fun b!3703849 () Bool)

(declare-fun e!2294077 () Option!8541)

(assert (=> b!3703849 (= e!2294077 (Some!8540 (h!44831 (t!302218 rules!3698))))))

(declare-fun b!3703850 () Bool)

(assert (=> b!3703850 (= e!2294074 (= (tag!6845 (get!13125 lt!1296012)) tag!250))))

(declare-fun d!1086009 () Bool)

(assert (=> d!1086009 e!2294075))

(declare-fun res!1506745 () Bool)

(assert (=> d!1086009 (=> res!1506745 e!2294075)))

(assert (=> d!1086009 (= res!1506745 (isEmpty!23466 lt!1296012))))

(assert (=> d!1086009 (= lt!1296012 e!2294077)))

(declare-fun c!639887 () Bool)

(assert (=> d!1086009 (= c!639887 (and (is-Cons!39411 (t!302218 rules!3698)) (= (tag!6845 (h!44831 (t!302218 rules!3698))) tag!250)))))

(assert (=> d!1086009 (rulesInvariant!4985 thiss!25522 (t!302218 rules!3698))))

(assert (=> d!1086009 (= (getRuleFromTag!1533 thiss!25522 (t!302218 rules!3698) tag!250) lt!1296012)))

(declare-fun b!3703851 () Bool)

(assert (=> b!3703851 (= e!2294077 e!2294076)))

(declare-fun c!639888 () Bool)

(assert (=> b!3703851 (= c!639888 (and (is-Cons!39411 (t!302218 rules!3698)) (not (= (tag!6845 (h!44831 (t!302218 rules!3698))) tag!250))))))

(declare-fun b!3703852 () Bool)

(assert (=> b!3703852 (= e!2294076 None!8540)))

(assert (= (and d!1086009 c!639887) b!3703849))

(assert (= (and d!1086009 (not c!639887)) b!3703851))

(assert (= (and b!3703851 c!639888) b!3703847))

(assert (= (and b!3703851 (not c!639888)) b!3703852))

(assert (= (and d!1086009 (not res!1506745)) b!3703848))

(assert (= (and b!3703848 res!1506746) b!3703850))

(declare-fun m!4214715 () Bool)

(assert (=> b!3703847 m!4214715))

(declare-fun m!4214717 () Bool)

(assert (=> b!3703847 m!4214717))

(declare-fun m!4214719 () Bool)

(assert (=> b!3703847 m!4214719))

(declare-fun m!4214721 () Bool)

(assert (=> b!3703848 m!4214721))

(assert (=> b!3703848 m!4214721))

(declare-fun m!4214723 () Bool)

(assert (=> b!3703848 m!4214723))

(assert (=> b!3703850 m!4214721))

(declare-fun m!4214725 () Bool)

(assert (=> d!1086009 m!4214725))

(assert (=> d!1086009 m!4214591))

(assert (=> b!3703707 d!1086009))

(declare-fun b!3703855 () Bool)

(declare-fun b_free!98869 () Bool)

(declare-fun b_next!99573 () Bool)

(assert (=> b!3703855 (= b_free!98869 (not b_next!99573))))

(declare-fun tp!1126105 () Bool)

(declare-fun b_and!277103 () Bool)

(assert (=> b!3703855 (= tp!1126105 b_and!277103)))

(declare-fun b_free!98871 () Bool)

(declare-fun b_next!99575 () Bool)

(assert (=> b!3703855 (= b_free!98871 (not b_next!99575))))

(declare-fun tp!1126108 () Bool)

(declare-fun b_and!277105 () Bool)

(assert (=> b!3703855 (= tp!1126108 b_and!277105)))

(declare-fun e!2294079 () Bool)

(assert (=> b!3703855 (= e!2294079 (and tp!1126105 tp!1126108))))

(declare-fun e!2294081 () Bool)

(declare-fun b!3703854 () Bool)

(declare-fun tp!1126107 () Bool)

(assert (=> b!3703854 (= e!2294081 (and tp!1126107 (inv!52936 (tag!6845 (h!44831 (t!302218 (t!302218 rules!3698))))) (inv!52939 (transformation!5999 (h!44831 (t!302218 (t!302218 rules!3698))))) e!2294079))))

(declare-fun b!3703853 () Bool)

(declare-fun e!2294078 () Bool)

(declare-fun tp!1126106 () Bool)

(assert (=> b!3703853 (= e!2294078 (and e!2294081 tp!1126106))))

(assert (=> b!3703773 (= tp!1126070 e!2294078)))

(assert (= b!3703854 b!3703855))

(assert (= b!3703853 b!3703854))

(assert (= (and b!3703773 (is-Cons!39411 (t!302218 (t!302218 rules!3698)))) b!3703853))

(declare-fun m!4214727 () Bool)

(assert (=> b!3703854 m!4214727))

(declare-fun m!4214729 () Bool)

(assert (=> b!3703854 m!4214729))

(declare-fun b!3703856 () Bool)

(declare-fun e!2294082 () Bool)

(assert (=> b!3703856 (= e!2294082 tp_is_empty!18571)))

(declare-fun b!3703858 () Bool)

(declare-fun tp!1126111 () Bool)

(assert (=> b!3703858 (= e!2294082 tp!1126111)))

(declare-fun b!3703859 () Bool)

(declare-fun tp!1126113 () Bool)

(declare-fun tp!1126109 () Bool)

(assert (=> b!3703859 (= e!2294082 (and tp!1126113 tp!1126109))))

(assert (=> b!3703761 (= tp!1126059 e!2294082)))

(declare-fun b!3703857 () Bool)

(declare-fun tp!1126112 () Bool)

(declare-fun tp!1126110 () Bool)

(assert (=> b!3703857 (= e!2294082 (and tp!1126112 tp!1126110))))

(assert (= (and b!3703761 (is-ElementMatch!10758 (regOne!22028 (regex!5999 newHd!19)))) b!3703856))

(assert (= (and b!3703761 (is-Concat!16988 (regOne!22028 (regex!5999 newHd!19)))) b!3703857))

(assert (= (and b!3703761 (is-Star!10758 (regOne!22028 (regex!5999 newHd!19)))) b!3703858))

(assert (= (and b!3703761 (is-Union!10758 (regOne!22028 (regex!5999 newHd!19)))) b!3703859))

(declare-fun b!3703860 () Bool)

(declare-fun e!2294083 () Bool)

(assert (=> b!3703860 (= e!2294083 tp_is_empty!18571)))

(declare-fun b!3703862 () Bool)

(declare-fun tp!1126116 () Bool)

(assert (=> b!3703862 (= e!2294083 tp!1126116)))

(declare-fun b!3703863 () Bool)

(declare-fun tp!1126118 () Bool)

(declare-fun tp!1126114 () Bool)

(assert (=> b!3703863 (= e!2294083 (and tp!1126118 tp!1126114))))

(assert (=> b!3703761 (= tp!1126057 e!2294083)))

(declare-fun b!3703861 () Bool)

(declare-fun tp!1126117 () Bool)

(declare-fun tp!1126115 () Bool)

(assert (=> b!3703861 (= e!2294083 (and tp!1126117 tp!1126115))))

(assert (= (and b!3703761 (is-ElementMatch!10758 (regTwo!22028 (regex!5999 newHd!19)))) b!3703860))

(assert (= (and b!3703761 (is-Concat!16988 (regTwo!22028 (regex!5999 newHd!19)))) b!3703861))

(assert (= (and b!3703761 (is-Star!10758 (regTwo!22028 (regex!5999 newHd!19)))) b!3703862))

(assert (= (and b!3703761 (is-Union!10758 (regTwo!22028 (regex!5999 newHd!19)))) b!3703863))

(declare-fun b!3703864 () Bool)

(declare-fun e!2294084 () Bool)

(assert (=> b!3703864 (= e!2294084 tp_is_empty!18571)))

(declare-fun b!3703866 () Bool)

(declare-fun tp!1126121 () Bool)

(assert (=> b!3703866 (= e!2294084 tp!1126121)))

(declare-fun b!3703867 () Bool)

(declare-fun tp!1126123 () Bool)

(declare-fun tp!1126119 () Bool)

(assert (=> b!3703867 (= e!2294084 (and tp!1126123 tp!1126119))))

(assert (=> b!3703774 (= tp!1126071 e!2294084)))

(declare-fun b!3703865 () Bool)

(declare-fun tp!1126122 () Bool)

(declare-fun tp!1126120 () Bool)

(assert (=> b!3703865 (= e!2294084 (and tp!1126122 tp!1126120))))

(assert (= (and b!3703774 (is-ElementMatch!10758 (regex!5999 (h!44831 (t!302218 rules!3698))))) b!3703864))

(assert (= (and b!3703774 (is-Concat!16988 (regex!5999 (h!44831 (t!302218 rules!3698))))) b!3703865))

(assert (= (and b!3703774 (is-Star!10758 (regex!5999 (h!44831 (t!302218 rules!3698))))) b!3703866))

(assert (= (and b!3703774 (is-Union!10758 (regex!5999 (h!44831 (t!302218 rules!3698))))) b!3703867))

(declare-fun b!3703868 () Bool)

(declare-fun e!2294085 () Bool)

(assert (=> b!3703868 (= e!2294085 tp_is_empty!18571)))

(declare-fun b!3703870 () Bool)

(declare-fun tp!1126126 () Bool)

(assert (=> b!3703870 (= e!2294085 tp!1126126)))

(declare-fun b!3703871 () Bool)

(declare-fun tp!1126128 () Bool)

(declare-fun tp!1126124 () Bool)

(assert (=> b!3703871 (= e!2294085 (and tp!1126128 tp!1126124))))

(assert (=> b!3703762 (= tp!1126058 e!2294085)))

(declare-fun b!3703869 () Bool)

(declare-fun tp!1126127 () Bool)

(declare-fun tp!1126125 () Bool)

(assert (=> b!3703869 (= e!2294085 (and tp!1126127 tp!1126125))))

(assert (= (and b!3703762 (is-ElementMatch!10758 (reg!11087 (regex!5999 newHd!19)))) b!3703868))

(assert (= (and b!3703762 (is-Concat!16988 (reg!11087 (regex!5999 newHd!19)))) b!3703869))

(assert (= (and b!3703762 (is-Star!10758 (reg!11087 (regex!5999 newHd!19)))) b!3703870))

(assert (= (and b!3703762 (is-Union!10758 (reg!11087 (regex!5999 newHd!19)))) b!3703871))

(declare-fun b!3703872 () Bool)

(declare-fun e!2294086 () Bool)

(assert (=> b!3703872 (= e!2294086 tp_is_empty!18571)))

(declare-fun b!3703874 () Bool)

(declare-fun tp!1126131 () Bool)

(assert (=> b!3703874 (= e!2294086 tp!1126131)))

(declare-fun b!3703875 () Bool)

(declare-fun tp!1126133 () Bool)

(declare-fun tp!1126129 () Bool)

(assert (=> b!3703875 (= e!2294086 (and tp!1126133 tp!1126129))))

(assert (=> b!3703757 (= tp!1126054 e!2294086)))

(declare-fun b!3703873 () Bool)

(declare-fun tp!1126132 () Bool)

(declare-fun tp!1126130 () Bool)

(assert (=> b!3703873 (= e!2294086 (and tp!1126132 tp!1126130))))

(assert (= (and b!3703757 (is-ElementMatch!10758 (regOne!22028 (regex!5999 (h!44831 rules!3698))))) b!3703872))

(assert (= (and b!3703757 (is-Concat!16988 (regOne!22028 (regex!5999 (h!44831 rules!3698))))) b!3703873))

(assert (= (and b!3703757 (is-Star!10758 (regOne!22028 (regex!5999 (h!44831 rules!3698))))) b!3703874))

(assert (= (and b!3703757 (is-Union!10758 (regOne!22028 (regex!5999 (h!44831 rules!3698))))) b!3703875))

(declare-fun b!3703876 () Bool)

(declare-fun e!2294087 () Bool)

(assert (=> b!3703876 (= e!2294087 tp_is_empty!18571)))

(declare-fun b!3703878 () Bool)

(declare-fun tp!1126136 () Bool)

(assert (=> b!3703878 (= e!2294087 tp!1126136)))

(declare-fun b!3703879 () Bool)

(declare-fun tp!1126138 () Bool)

(declare-fun tp!1126134 () Bool)

(assert (=> b!3703879 (= e!2294087 (and tp!1126138 tp!1126134))))

(assert (=> b!3703757 (= tp!1126052 e!2294087)))

(declare-fun b!3703877 () Bool)

(declare-fun tp!1126137 () Bool)

(declare-fun tp!1126135 () Bool)

(assert (=> b!3703877 (= e!2294087 (and tp!1126137 tp!1126135))))

(assert (= (and b!3703757 (is-ElementMatch!10758 (regTwo!22028 (regex!5999 (h!44831 rules!3698))))) b!3703876))

(assert (= (and b!3703757 (is-Concat!16988 (regTwo!22028 (regex!5999 (h!44831 rules!3698))))) b!3703877))

(assert (= (and b!3703757 (is-Star!10758 (regTwo!22028 (regex!5999 (h!44831 rules!3698))))) b!3703878))

(assert (= (and b!3703757 (is-Union!10758 (regTwo!22028 (regex!5999 (h!44831 rules!3698))))) b!3703879))

(declare-fun b!3703880 () Bool)

(declare-fun e!2294088 () Bool)

(assert (=> b!3703880 (= e!2294088 tp_is_empty!18571)))

(declare-fun b!3703882 () Bool)

(declare-fun tp!1126141 () Bool)

(assert (=> b!3703882 (= e!2294088 tp!1126141)))

(declare-fun b!3703883 () Bool)

(declare-fun tp!1126143 () Bool)

(declare-fun tp!1126139 () Bool)

(assert (=> b!3703883 (= e!2294088 (and tp!1126143 tp!1126139))))

(assert (=> b!3703759 (= tp!1126055 e!2294088)))

(declare-fun b!3703881 () Bool)

(declare-fun tp!1126142 () Bool)

(declare-fun tp!1126140 () Bool)

(assert (=> b!3703881 (= e!2294088 (and tp!1126142 tp!1126140))))

(assert (= (and b!3703759 (is-ElementMatch!10758 (regOne!22029 (regex!5999 (h!44831 rules!3698))))) b!3703880))

(assert (= (and b!3703759 (is-Concat!16988 (regOne!22029 (regex!5999 (h!44831 rules!3698))))) b!3703881))

(assert (= (and b!3703759 (is-Star!10758 (regOne!22029 (regex!5999 (h!44831 rules!3698))))) b!3703882))

(assert (= (and b!3703759 (is-Union!10758 (regOne!22029 (regex!5999 (h!44831 rules!3698))))) b!3703883))

(declare-fun b!3703884 () Bool)

(declare-fun e!2294089 () Bool)

(assert (=> b!3703884 (= e!2294089 tp_is_empty!18571)))

(declare-fun b!3703886 () Bool)

(declare-fun tp!1126146 () Bool)

(assert (=> b!3703886 (= e!2294089 tp!1126146)))

(declare-fun b!3703887 () Bool)

(declare-fun tp!1126148 () Bool)

(declare-fun tp!1126144 () Bool)

(assert (=> b!3703887 (= e!2294089 (and tp!1126148 tp!1126144))))

(assert (=> b!3703759 (= tp!1126051 e!2294089)))

(declare-fun b!3703885 () Bool)

(declare-fun tp!1126147 () Bool)

(declare-fun tp!1126145 () Bool)

(assert (=> b!3703885 (= e!2294089 (and tp!1126147 tp!1126145))))

(assert (= (and b!3703759 (is-ElementMatch!10758 (regTwo!22029 (regex!5999 (h!44831 rules!3698))))) b!3703884))

(assert (= (and b!3703759 (is-Concat!16988 (regTwo!22029 (regex!5999 (h!44831 rules!3698))))) b!3703885))

(assert (= (and b!3703759 (is-Star!10758 (regTwo!22029 (regex!5999 (h!44831 rules!3698))))) b!3703886))

(assert (= (and b!3703759 (is-Union!10758 (regTwo!22029 (regex!5999 (h!44831 rules!3698))))) b!3703887))

(declare-fun b!3703888 () Bool)

(declare-fun e!2294090 () Bool)

(assert (=> b!3703888 (= e!2294090 tp_is_empty!18571)))

(declare-fun b!3703890 () Bool)

(declare-fun tp!1126151 () Bool)

(assert (=> b!3703890 (= e!2294090 tp!1126151)))

(declare-fun b!3703891 () Bool)

(declare-fun tp!1126153 () Bool)

(declare-fun tp!1126149 () Bool)

(assert (=> b!3703891 (= e!2294090 (and tp!1126153 tp!1126149))))

(assert (=> b!3703763 (= tp!1126060 e!2294090)))

(declare-fun b!3703889 () Bool)

(declare-fun tp!1126152 () Bool)

(declare-fun tp!1126150 () Bool)

(assert (=> b!3703889 (= e!2294090 (and tp!1126152 tp!1126150))))

(assert (= (and b!3703763 (is-ElementMatch!10758 (regOne!22029 (regex!5999 newHd!19)))) b!3703888))

(assert (= (and b!3703763 (is-Concat!16988 (regOne!22029 (regex!5999 newHd!19)))) b!3703889))

(assert (= (and b!3703763 (is-Star!10758 (regOne!22029 (regex!5999 newHd!19)))) b!3703890))

(assert (= (and b!3703763 (is-Union!10758 (regOne!22029 (regex!5999 newHd!19)))) b!3703891))

(declare-fun b!3703892 () Bool)

(declare-fun e!2294091 () Bool)

(assert (=> b!3703892 (= e!2294091 tp_is_empty!18571)))

(declare-fun b!3703894 () Bool)

(declare-fun tp!1126156 () Bool)

(assert (=> b!3703894 (= e!2294091 tp!1126156)))

(declare-fun b!3703895 () Bool)

(declare-fun tp!1126158 () Bool)

(declare-fun tp!1126154 () Bool)

(assert (=> b!3703895 (= e!2294091 (and tp!1126158 tp!1126154))))

(assert (=> b!3703763 (= tp!1126056 e!2294091)))

(declare-fun b!3703893 () Bool)

(declare-fun tp!1126157 () Bool)

(declare-fun tp!1126155 () Bool)

(assert (=> b!3703893 (= e!2294091 (and tp!1126157 tp!1126155))))

(assert (= (and b!3703763 (is-ElementMatch!10758 (regTwo!22029 (regex!5999 newHd!19)))) b!3703892))

(assert (= (and b!3703763 (is-Concat!16988 (regTwo!22029 (regex!5999 newHd!19)))) b!3703893))

(assert (= (and b!3703763 (is-Star!10758 (regTwo!22029 (regex!5999 newHd!19)))) b!3703894))

(assert (= (and b!3703763 (is-Union!10758 (regTwo!22029 (regex!5999 newHd!19)))) b!3703895))

(declare-fun b!3703896 () Bool)

(declare-fun e!2294092 () Bool)

(assert (=> b!3703896 (= e!2294092 tp_is_empty!18571)))

(declare-fun b!3703898 () Bool)

(declare-fun tp!1126161 () Bool)

(assert (=> b!3703898 (= e!2294092 tp!1126161)))

(declare-fun b!3703899 () Bool)

(declare-fun tp!1126163 () Bool)

(declare-fun tp!1126159 () Bool)

(assert (=> b!3703899 (= e!2294092 (and tp!1126163 tp!1126159))))

(assert (=> b!3703758 (= tp!1126053 e!2294092)))

(declare-fun b!3703897 () Bool)

(declare-fun tp!1126162 () Bool)

(declare-fun tp!1126160 () Bool)

(assert (=> b!3703897 (= e!2294092 (and tp!1126162 tp!1126160))))

(assert (= (and b!3703758 (is-ElementMatch!10758 (reg!11087 (regex!5999 (h!44831 rules!3698))))) b!3703896))

(assert (= (and b!3703758 (is-Concat!16988 (reg!11087 (regex!5999 (h!44831 rules!3698))))) b!3703897))

(assert (= (and b!3703758 (is-Star!10758 (reg!11087 (regex!5999 (h!44831 rules!3698))))) b!3703898))

(assert (= (and b!3703758 (is-Union!10758 (reg!11087 (regex!5999 (h!44831 rules!3698))))) b!3703899))

(push 1)

(assert (not b!3703869))

(assert (not b!3703885))

(assert (not d!1085985))

(assert b_and!277085)

(assert (not b!3703835))

(assert (not b!3703828))

(assert (not b!3703847))

(assert (not b!3703891))

(assert b_and!277095)

(assert (not d!1086001))

(assert tp_is_empty!18571)

(assert (not b!3703879))

(assert (not d!1085981))

(assert b_and!277105)

(assert (not b_next!99573))

(assert (not b!3703843))

(assert (not b!3703863))

(assert (not b!3703899))

(assert (not b!3703887))

(assert (not d!1085975))

(assert (not b!3703898))

(assert (not b!3703866))

(assert (not b_next!99565))

(assert (not d!1085995))

(assert (not b!3703842))

(assert (not d!1086005))

(assert (not b_next!99549))

(assert (not d!1086003))

(assert b_and!277079)

(assert (not b!3703878))

(assert (not b!3703861))

(assert (not b_next!99555))

(assert (not b!3703870))

(assert (not b!3703827))

(assert (not b!3703848))

(assert (not b!3703854))

(assert (not b_next!99567))

(assert (not b!3703867))

(assert (not b!3703877))

(assert (not b_next!99553))

(assert (not b!3703813))

(assert (not b!3703834))

(assert (not b!3703857))

(assert (not b!3703886))

(assert (not b!3703875))

(assert (not d!1085967))

(assert (not b!3703853))

(assert (not d!1086007))

(assert (not b!3703845))

(assert (not d!1085969))

(assert (not b!3703820))

(assert (not b!3703865))

(assert (not b!3703897))

(assert (not b!3703836))

(assert (not d!1086009))

(assert (not b!3703871))

(assert (not b!3703858))

(assert (not b!3703882))

(assert b_and!277083)

(assert (not b!3703846))

(assert (not b!3703850))

(assert (not b!3703893))

(assert (not b!3703895))

(assert (not b_next!99575))

(assert (not b!3703874))

(assert b_and!277097)

(assert (not b!3703890))

(assert (not d!1085973))

(assert (not b!3703881))

(assert (not b_next!99551))

(assert b_and!277103)

(assert (not d!1085997))

(assert (not b!3703889))

(assert (not b!3703894))

(assert (not b!3703873))

(assert b_and!277081)

(assert (not b!3703859))

(assert (not b!3703814))

(assert (not d!1085993))

(assert (not b!3703862))

(assert (not b!3703883))

(check-sat)

(pop 1)

(push 1)

(assert b_and!277095)

(assert b_and!277105)

(assert (not b_next!99573))

(assert (not b_next!99565))

(assert (not b_next!99549))

(assert b_and!277079)

(assert (not b_next!99555))

(assert (not b_next!99567))

(assert (not b_next!99553))

(assert b_and!277085)

(assert b_and!277083)

(assert b_and!277081)

(assert (not b_next!99575))

(assert b_and!277097)

(assert (not b_next!99551))

(assert b_and!277103)

(check-sat)

(pop 1)

