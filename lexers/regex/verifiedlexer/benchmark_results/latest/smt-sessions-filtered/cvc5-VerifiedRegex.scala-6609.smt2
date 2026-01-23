; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!349060 () Bool)

(assert start!349060)

(declare-fun b!3703476 () Bool)

(declare-fun b_free!98825 () Bool)

(declare-fun b_next!99529 () Bool)

(assert (=> b!3703476 (= b_free!98825 (not b_next!99529))))

(declare-fun tp!1125911 () Bool)

(declare-fun b_and!277059 () Bool)

(assert (=> b!3703476 (= tp!1125911 b_and!277059)))

(declare-fun b_free!98827 () Bool)

(declare-fun b_next!99531 () Bool)

(assert (=> b!3703476 (= b_free!98827 (not b_next!99531))))

(declare-fun tp!1125912 () Bool)

(declare-fun b_and!277061 () Bool)

(assert (=> b!3703476 (= tp!1125912 b_and!277061)))

(declare-fun b!3703478 () Bool)

(declare-fun b_free!98829 () Bool)

(declare-fun b_next!99533 () Bool)

(assert (=> b!3703478 (= b_free!98829 (not b_next!99533))))

(declare-fun tp!1125910 () Bool)

(declare-fun b_and!277063 () Bool)

(assert (=> b!3703478 (= tp!1125910 b_and!277063)))

(declare-fun b_free!98831 () Bool)

(declare-fun b_next!99535 () Bool)

(assert (=> b!3703478 (= b_free!98831 (not b_next!99535))))

(declare-fun tp!1125909 () Bool)

(declare-fun b_and!277065 () Bool)

(assert (=> b!3703478 (= tp!1125909 b_and!277065)))

(declare-fun res!1506585 () Bool)

(declare-fun e!2293771 () Bool)

(assert (=> start!349060 (=> (not res!1506585) (not e!2293771))))

(declare-datatypes ((LexerInterface!5586 0))(
  ( (LexerInterfaceExt!5583 (__x!24671 Int)) (Lexer!5584) )
))
(declare-fun thiss!25522 () LexerInterface!5586)

(assert (=> start!349060 (= res!1506585 (is-Lexer!5584 thiss!25522))))

(assert (=> start!349060 e!2293771))

(assert (=> start!349060 true))

(declare-fun e!2293765 () Bool)

(assert (=> start!349060 e!2293765))

(declare-fun e!2293772 () Bool)

(assert (=> start!349060 e!2293772))

(declare-datatypes ((String!44470 0))(
  ( (String!44471 (value!191332 String)) )
))
(declare-fun tag!250 () String!44470)

(declare-fun inv!52931 (String!44470) Bool)

(assert (=> start!349060 (inv!52931 tag!250)))

(declare-fun b!3703471 () Bool)

(declare-fun e!2293769 () Bool)

(declare-datatypes ((List!39525 0))(
  ( (Nil!39401) (Cons!39401 (h!44821 (_ BitVec 16)) (t!302208 List!39525)) )
))
(declare-datatypes ((TokenValue!6227 0))(
  ( (FloatLiteralValue!12454 (text!44034 List!39525)) (TokenValueExt!6226 (__x!24672 Int)) (Broken!31135 (value!191333 List!39525)) (Object!6350) (End!6227) (Def!6227) (Underscore!6227) (Match!6227) (Else!6227) (Error!6227) (Case!6227) (If!6227) (Extends!6227) (Abstract!6227) (Class!6227) (Val!6227) (DelimiterValue!12454 (del!6287 List!39525)) (KeywordValue!6233 (value!191334 List!39525)) (CommentValue!12454 (value!191335 List!39525)) (WhitespaceValue!12454 (value!191336 List!39525)) (IndentationValue!6227 (value!191337 List!39525)) (String!44472) (Int32!6227) (Broken!31136 (value!191338 List!39525)) (Boolean!6228) (Unit!57358) (OperatorValue!6230 (op!6287 List!39525)) (IdentifierValue!12454 (value!191339 List!39525)) (IdentifierValue!12455 (value!191340 List!39525)) (WhitespaceValue!12455 (value!191341 List!39525)) (True!12454) (False!12454) (Broken!31137 (value!191342 List!39525)) (Broken!31138 (value!191343 List!39525)) (True!12455) (RightBrace!6227) (RightBracket!6227) (Colon!6227) (Null!6227) (Comma!6227) (LeftBracket!6227) (False!12455) (LeftBrace!6227) (ImaginaryLiteralValue!6227 (text!44035 List!39525)) (StringLiteralValue!18681 (value!191344 List!39525)) (EOFValue!6227 (value!191345 List!39525)) (IdentValue!6227 (value!191346 List!39525)) (DelimiterValue!12455 (value!191347 List!39525)) (DedentValue!6227 (value!191348 List!39525)) (NewLineValue!6227 (value!191349 List!39525)) (IntegerValue!18681 (value!191350 (_ BitVec 32)) (text!44036 List!39525)) (IntegerValue!18682 (value!191351 Int) (text!44037 List!39525)) (Times!6227) (Or!6227) (Equal!6227) (Minus!6227) (Broken!31139 (value!191352 List!39525)) (And!6227) (Div!6227) (LessEqual!6227) (Mod!6227) (Concat!16983) (Not!6227) (Plus!6227) (SpaceValue!6227 (value!191353 List!39525)) (IntegerValue!18683 (value!191354 Int) (text!44038 List!39525)) (StringLiteralValue!18682 (text!44039 List!39525)) (FloatLiteralValue!12455 (text!44040 List!39525)) (BytesLiteralValue!6227 (value!191355 List!39525)) (CommentValue!12455 (value!191356 List!39525)) (StringLiteralValue!18683 (value!191357 List!39525)) (ErrorTokenValue!6227 (msg!6288 List!39525)) )
))
(declare-datatypes ((C!21698 0))(
  ( (C!21699 (val!12897 Int)) )
))
(declare-datatypes ((List!39526 0))(
  ( (Nil!39402) (Cons!39402 (h!44822 C!21698) (t!302209 List!39526)) )
))
(declare-datatypes ((IArray!24193 0))(
  ( (IArray!24194 (innerList!12154 List!39526)) )
))
(declare-datatypes ((Conc!12094 0))(
  ( (Node!12094 (left!30647 Conc!12094) (right!30977 Conc!12094) (csize!24418 Int) (cheight!12305 Int)) (Leaf!18704 (xs!15296 IArray!24193) (csize!24419 Int)) (Empty!12094) )
))
(declare-datatypes ((BalanceConc!23802 0))(
  ( (BalanceConc!23803 (c!639852 Conc!12094)) )
))
(declare-datatypes ((TokenValueInjection!11882 0))(
  ( (TokenValueInjection!11883 (toValue!8337 Int) (toChars!8196 Int)) )
))
(declare-datatypes ((Regex!10756 0))(
  ( (ElementMatch!10756 (c!639853 C!21698)) (Concat!16984 (regOne!22024 Regex!10756) (regTwo!22024 Regex!10756)) (EmptyExpr!10756) (Star!10756 (reg!11085 Regex!10756)) (EmptyLang!10756) (Union!10756 (regOne!22025 Regex!10756) (regTwo!22025 Regex!10756)) )
))
(declare-datatypes ((Rule!11794 0))(
  ( (Rule!11795 (regex!5997 Regex!10756) (tag!6841 String!44470) (isSeparator!5997 Bool) (transformation!5997 TokenValueInjection!11882)) )
))
(declare-fun newHd!19 () Rule!11794)

(declare-datatypes ((List!39527 0))(
  ( (Nil!39403) (Cons!39403 (h!44823 String!44470) (t!302210 List!39527)) )
))
(declare-fun contains!7860 (List!39527 String!44470) Bool)

(assert (=> b!3703471 (= e!2293769 (contains!7860 (Cons!39403 (tag!6841 newHd!19) Nil!39403) (tag!6841 newHd!19)))))

(declare-fun b!3703472 () Bool)

(declare-fun res!1506584 () Bool)

(assert (=> b!3703472 (=> (not res!1506584) (not e!2293771))))

(declare-datatypes ((List!39528 0))(
  ( (Nil!39404) (Cons!39404 (h!44824 Rule!11794) (t!302211 List!39528)) )
))
(declare-fun rules!3698 () List!39528)

(declare-fun rulesInvariant!4983 (LexerInterface!5586 List!39528) Bool)

(assert (=> b!3703472 (= res!1506584 (rulesInvariant!4983 thiss!25522 (Cons!39404 newHd!19 rules!3698)))))

(declare-fun e!2293766 () Bool)

(declare-fun b!3703473 () Bool)

(declare-fun tp!1125907 () Bool)

(declare-fun e!2293773 () Bool)

(declare-fun inv!52934 (TokenValueInjection!11882) Bool)

(assert (=> b!3703473 (= e!2293766 (and tp!1125907 (inv!52931 (tag!6841 (h!44824 rules!3698))) (inv!52934 (transformation!5997 (h!44824 rules!3698))) e!2293773))))

(declare-fun b!3703474 () Bool)

(declare-fun tp!1125908 () Bool)

(assert (=> b!3703474 (= e!2293772 (and e!2293766 tp!1125908))))

(declare-fun e!2293767 () Bool)

(declare-fun b!3703475 () Bool)

(declare-fun tp!1125913 () Bool)

(assert (=> b!3703475 (= e!2293765 (and tp!1125913 (inv!52931 (tag!6841 newHd!19)) (inv!52934 (transformation!5997 newHd!19)) e!2293767))))

(assert (=> b!3703476 (= e!2293767 (and tp!1125911 tp!1125912))))

(declare-fun b!3703477 () Bool)

(assert (=> b!3703477 (= e!2293771 (not e!2293769))))

(declare-fun res!1506583 () Bool)

(assert (=> b!3703477 (=> res!1506583 e!2293769)))

(declare-datatypes ((Option!8539 0))(
  ( (None!8538) (Some!8538 (v!38504 Rule!11794)) )
))
(declare-fun isDefined!6726 (Option!8539) Bool)

(declare-fun getRuleFromTag!1531 (LexerInterface!5586 List!39528 String!44470) Option!8539)

(assert (=> b!3703477 (= res!1506583 (not (isDefined!6726 (getRuleFromTag!1531 thiss!25522 rules!3698 tag!250))))))

(assert (=> b!3703477 (rulesInvariant!4983 thiss!25522 rules!3698)))

(declare-datatypes ((Unit!57359 0))(
  ( (Unit!57360) )
))
(declare-fun lt!1295925 () Unit!57359)

(declare-fun lemmaInvariantOnRulesThenOnTail!689 (LexerInterface!5586 Rule!11794 List!39528) Unit!57359)

(assert (=> b!3703477 (= lt!1295925 (lemmaInvariantOnRulesThenOnTail!689 thiss!25522 newHd!19 rules!3698))))

(assert (=> b!3703478 (= e!2293773 (and tp!1125910 tp!1125909))))

(assert (= (and start!349060 res!1506585) b!3703472))

(assert (= (and b!3703472 res!1506584) b!3703477))

(assert (= (and b!3703477 (not res!1506583)) b!3703471))

(assert (= b!3703475 b!3703476))

(assert (= start!349060 b!3703475))

(assert (= b!3703473 b!3703478))

(assert (= b!3703474 b!3703473))

(assert (= (and start!349060 (is-Cons!39404 rules!3698)) b!3703474))

(declare-fun m!4214393 () Bool)

(assert (=> start!349060 m!4214393))

(declare-fun m!4214395 () Bool)

(assert (=> b!3703472 m!4214395))

(declare-fun m!4214397 () Bool)

(assert (=> b!3703471 m!4214397))

(declare-fun m!4214399 () Bool)

(assert (=> b!3703475 m!4214399))

(declare-fun m!4214401 () Bool)

(assert (=> b!3703475 m!4214401))

(declare-fun m!4214403 () Bool)

(assert (=> b!3703473 m!4214403))

(declare-fun m!4214405 () Bool)

(assert (=> b!3703473 m!4214405))

(declare-fun m!4214407 () Bool)

(assert (=> b!3703477 m!4214407))

(assert (=> b!3703477 m!4214407))

(declare-fun m!4214409 () Bool)

(assert (=> b!3703477 m!4214409))

(declare-fun m!4214411 () Bool)

(assert (=> b!3703477 m!4214411))

(declare-fun m!4214413 () Bool)

(assert (=> b!3703477 m!4214413))

(push 1)

(assert b_and!277061)

(assert (not b_next!99535))

(assert (not b_next!99529))

(assert b_and!277063)

(assert (not b!3703474))

(assert (not b!3703473))

(assert (not b_next!99531))

(assert b_and!277059)

(assert (not b!3703477))

(assert (not b!3703475))

(assert (not b!3703472))

(assert b_and!277065)

(assert (not b_next!99533))

(assert (not start!349060))

(assert (not b!3703471))

(check-sat)

(pop 1)

(push 1)

(assert b_and!277061)

(assert (not b_next!99535))

(assert (not b_next!99529))

(assert b_and!277063)

(assert (not b_next!99531))

(assert b_and!277059)

(assert b_and!277065)

(assert (not b_next!99533))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1085872 () Bool)

(assert (=> d!1085872 (= (inv!52931 (tag!6841 newHd!19)) (= (mod (str.len (value!191332 (tag!6841 newHd!19))) 2) 0))))

(assert (=> b!3703475 d!1085872))

(declare-fun d!1085874 () Bool)

(declare-fun res!1506601 () Bool)

(declare-fun e!2293807 () Bool)

(assert (=> d!1085874 (=> (not res!1506601) (not e!2293807))))

(declare-fun semiInverseModEq!2561 (Int Int) Bool)

(assert (=> d!1085874 (= res!1506601 (semiInverseModEq!2561 (toChars!8196 (transformation!5997 newHd!19)) (toValue!8337 (transformation!5997 newHd!19))))))

(assert (=> d!1085874 (= (inv!52934 (transformation!5997 newHd!19)) e!2293807)))

(declare-fun b!3703505 () Bool)

(declare-fun equivClasses!2460 (Int Int) Bool)

(assert (=> b!3703505 (= e!2293807 (equivClasses!2460 (toChars!8196 (transformation!5997 newHd!19)) (toValue!8337 (transformation!5997 newHd!19))))))

(assert (= (and d!1085874 res!1506601) b!3703505))

(declare-fun m!4214437 () Bool)

(assert (=> d!1085874 m!4214437))

(declare-fun m!4214439 () Bool)

(assert (=> b!3703505 m!4214439))

(assert (=> b!3703475 d!1085874))

(declare-fun d!1085876 () Bool)

(assert (=> d!1085876 (= (inv!52931 (tag!6841 (h!44824 rules!3698))) (= (mod (str.len (value!191332 (tag!6841 (h!44824 rules!3698)))) 2) 0))))

(assert (=> b!3703473 d!1085876))

(declare-fun d!1085878 () Bool)

(declare-fun res!1506602 () Bool)

(declare-fun e!2293808 () Bool)

(assert (=> d!1085878 (=> (not res!1506602) (not e!2293808))))

(assert (=> d!1085878 (= res!1506602 (semiInverseModEq!2561 (toChars!8196 (transformation!5997 (h!44824 rules!3698))) (toValue!8337 (transformation!5997 (h!44824 rules!3698)))))))

(assert (=> d!1085878 (= (inv!52934 (transformation!5997 (h!44824 rules!3698))) e!2293808)))

(declare-fun b!3703506 () Bool)

(assert (=> b!3703506 (= e!2293808 (equivClasses!2460 (toChars!8196 (transformation!5997 (h!44824 rules!3698))) (toValue!8337 (transformation!5997 (h!44824 rules!3698)))))))

(assert (= (and d!1085878 res!1506602) b!3703506))

(declare-fun m!4214441 () Bool)

(assert (=> d!1085878 m!4214441))

(declare-fun m!4214443 () Bool)

(assert (=> b!3703506 m!4214443))

(assert (=> b!3703473 d!1085878))

(declare-fun d!1085880 () Bool)

(declare-fun isEmpty!23465 (Option!8539) Bool)

(assert (=> d!1085880 (= (isDefined!6726 (getRuleFromTag!1531 thiss!25522 rules!3698 tag!250)) (not (isEmpty!23465 (getRuleFromTag!1531 thiss!25522 rules!3698 tag!250))))))

(declare-fun bs!574558 () Bool)

(assert (= bs!574558 d!1085880))

(assert (=> bs!574558 m!4214407))

(declare-fun m!4214445 () Bool)

(assert (=> bs!574558 m!4214445))

(assert (=> b!3703477 d!1085880))

(declare-fun b!3703520 () Bool)

(declare-fun e!2293820 () Option!8539)

(assert (=> b!3703520 (= e!2293820 None!8538)))

(declare-fun b!3703521 () Bool)

(declare-fun e!2293818 () Bool)

(declare-fun lt!1295936 () Option!8539)

(declare-fun get!13123 (Option!8539) Rule!11794)

(assert (=> b!3703521 (= e!2293818 (= (tag!6841 (get!13123 lt!1295936)) tag!250))))

(declare-fun b!3703522 () Bool)

(declare-fun e!2293817 () Bool)

(assert (=> b!3703522 (= e!2293817 e!2293818)))

(declare-fun res!1506608 () Bool)

(assert (=> b!3703522 (=> (not res!1506608) (not e!2293818))))

(declare-fun contains!7862 (List!39528 Rule!11794) Bool)

(assert (=> b!3703522 (= res!1506608 (contains!7862 rules!3698 (get!13123 lt!1295936)))))

(declare-fun b!3703523 () Bool)

(declare-fun e!2293819 () Option!8539)

(assert (=> b!3703523 (= e!2293819 e!2293820)))

(declare-fun c!639860 () Bool)

(assert (=> b!3703523 (= c!639860 (and (is-Cons!39404 rules!3698) (not (= (tag!6841 (h!44824 rules!3698)) tag!250))))))

(declare-fun b!3703524 () Bool)

(declare-fun lt!1295937 () Unit!57359)

(declare-fun lt!1295935 () Unit!57359)

(assert (=> b!3703524 (= lt!1295937 lt!1295935)))

(assert (=> b!3703524 (rulesInvariant!4983 thiss!25522 (t!302211 rules!3698))))

(assert (=> b!3703524 (= lt!1295935 (lemmaInvariantOnRulesThenOnTail!689 thiss!25522 (h!44824 rules!3698) (t!302211 rules!3698)))))

(assert (=> b!3703524 (= e!2293820 (getRuleFromTag!1531 thiss!25522 (t!302211 rules!3698) tag!250))))

(declare-fun d!1085882 () Bool)

(assert (=> d!1085882 e!2293817))

(declare-fun res!1506607 () Bool)

(assert (=> d!1085882 (=> res!1506607 e!2293817)))

(assert (=> d!1085882 (= res!1506607 (isEmpty!23465 lt!1295936))))

(assert (=> d!1085882 (= lt!1295936 e!2293819)))

(declare-fun c!639861 () Bool)

(assert (=> d!1085882 (= c!639861 (and (is-Cons!39404 rules!3698) (= (tag!6841 (h!44824 rules!3698)) tag!250)))))

(assert (=> d!1085882 (rulesInvariant!4983 thiss!25522 rules!3698)))

(assert (=> d!1085882 (= (getRuleFromTag!1531 thiss!25522 rules!3698 tag!250) lt!1295936)))

(declare-fun b!3703519 () Bool)

(assert (=> b!3703519 (= e!2293819 (Some!8538 (h!44824 rules!3698)))))

(assert (= (and d!1085882 c!639861) b!3703519))

(assert (= (and d!1085882 (not c!639861)) b!3703523))

(assert (= (and b!3703523 c!639860) b!3703524))

(assert (= (and b!3703523 (not c!639860)) b!3703520))

(assert (= (and d!1085882 (not res!1506607)) b!3703522))

(assert (= (and b!3703522 res!1506608) b!3703521))

(declare-fun m!4214449 () Bool)

(assert (=> b!3703521 m!4214449))

(assert (=> b!3703522 m!4214449))

(assert (=> b!3703522 m!4214449))

(declare-fun m!4214451 () Bool)

(assert (=> b!3703522 m!4214451))

(declare-fun m!4214453 () Bool)

(assert (=> b!3703524 m!4214453))

(declare-fun m!4214455 () Bool)

(assert (=> b!3703524 m!4214455))

(declare-fun m!4214457 () Bool)

(assert (=> b!3703524 m!4214457))

(declare-fun m!4214459 () Bool)

(assert (=> d!1085882 m!4214459))

(assert (=> d!1085882 m!4214411))

(assert (=> b!3703477 d!1085882))

(declare-fun d!1085888 () Bool)

(declare-fun res!1506611 () Bool)

(declare-fun e!2293823 () Bool)

(assert (=> d!1085888 (=> (not res!1506611) (not e!2293823))))

(declare-fun rulesValid!2318 (LexerInterface!5586 List!39528) Bool)

(assert (=> d!1085888 (= res!1506611 (rulesValid!2318 thiss!25522 rules!3698))))

(assert (=> d!1085888 (= (rulesInvariant!4983 thiss!25522 rules!3698) e!2293823)))

(declare-fun b!3703527 () Bool)

(declare-fun noDuplicateTag!2318 (LexerInterface!5586 List!39528 List!39527) Bool)

(assert (=> b!3703527 (= e!2293823 (noDuplicateTag!2318 thiss!25522 rules!3698 Nil!39403))))

(assert (= (and d!1085888 res!1506611) b!3703527))

(declare-fun m!4214461 () Bool)

(assert (=> d!1085888 m!4214461))

(declare-fun m!4214463 () Bool)

(assert (=> b!3703527 m!4214463))

(assert (=> b!3703477 d!1085888))

(declare-fun d!1085890 () Bool)

(assert (=> d!1085890 (rulesInvariant!4983 thiss!25522 rules!3698)))

(declare-fun lt!1295940 () Unit!57359)

(declare-fun choose!22145 (LexerInterface!5586 Rule!11794 List!39528) Unit!57359)

(assert (=> d!1085890 (= lt!1295940 (choose!22145 thiss!25522 newHd!19 rules!3698))))

(assert (=> d!1085890 (rulesInvariant!4983 thiss!25522 (Cons!39404 newHd!19 rules!3698))))

(assert (=> d!1085890 (= (lemmaInvariantOnRulesThenOnTail!689 thiss!25522 newHd!19 rules!3698) lt!1295940)))

(declare-fun bs!574560 () Bool)

(assert (= bs!574560 d!1085890))

(assert (=> bs!574560 m!4214411))

(declare-fun m!4214465 () Bool)

(assert (=> bs!574560 m!4214465))

(assert (=> bs!574560 m!4214395))

(assert (=> b!3703477 d!1085890))

(declare-fun d!1085892 () Bool)

(declare-fun res!1506612 () Bool)

(declare-fun e!2293824 () Bool)

(assert (=> d!1085892 (=> (not res!1506612) (not e!2293824))))

(assert (=> d!1085892 (= res!1506612 (rulesValid!2318 thiss!25522 (Cons!39404 newHd!19 rules!3698)))))

(assert (=> d!1085892 (= (rulesInvariant!4983 thiss!25522 (Cons!39404 newHd!19 rules!3698)) e!2293824)))

(declare-fun b!3703528 () Bool)

(assert (=> b!3703528 (= e!2293824 (noDuplicateTag!2318 thiss!25522 (Cons!39404 newHd!19 rules!3698) Nil!39403))))

(assert (= (and d!1085892 res!1506612) b!3703528))

(declare-fun m!4214467 () Bool)

(assert (=> d!1085892 m!4214467))

(declare-fun m!4214469 () Bool)

(assert (=> b!3703528 m!4214469))

(assert (=> b!3703472 d!1085892))

(declare-fun d!1085894 () Bool)

(declare-fun lt!1295943 () Bool)

(declare-fun content!5689 (List!39527) (Set String!44470))

(assert (=> d!1085894 (= lt!1295943 (set.member (tag!6841 newHd!19) (content!5689 (Cons!39403 (tag!6841 newHd!19) Nil!39403))))))

(declare-fun e!2293829 () Bool)

(assert (=> d!1085894 (= lt!1295943 e!2293829)))

(declare-fun res!1506617 () Bool)

(assert (=> d!1085894 (=> (not res!1506617) (not e!2293829))))

(assert (=> d!1085894 (= res!1506617 (is-Cons!39403 (Cons!39403 (tag!6841 newHd!19) Nil!39403)))))

(assert (=> d!1085894 (= (contains!7860 (Cons!39403 (tag!6841 newHd!19) Nil!39403) (tag!6841 newHd!19)) lt!1295943)))

(declare-fun b!3703533 () Bool)

(declare-fun e!2293830 () Bool)

(assert (=> b!3703533 (= e!2293829 e!2293830)))

(declare-fun res!1506618 () Bool)

(assert (=> b!3703533 (=> res!1506618 e!2293830)))

(assert (=> b!3703533 (= res!1506618 (= (h!44823 (Cons!39403 (tag!6841 newHd!19) Nil!39403)) (tag!6841 newHd!19)))))

(declare-fun b!3703534 () Bool)

(assert (=> b!3703534 (= e!2293830 (contains!7860 (t!302210 (Cons!39403 (tag!6841 newHd!19) Nil!39403)) (tag!6841 newHd!19)))))

(assert (= (and d!1085894 res!1506617) b!3703533))

(assert (= (and b!3703533 (not res!1506618)) b!3703534))

(declare-fun m!4214471 () Bool)

(assert (=> d!1085894 m!4214471))

(declare-fun m!4214473 () Bool)

(assert (=> d!1085894 m!4214473))

(declare-fun m!4214475 () Bool)

(assert (=> b!3703534 m!4214475))

(assert (=> b!3703471 d!1085894))

(declare-fun d!1085896 () Bool)

(assert (=> d!1085896 (= (inv!52931 tag!250) (= (mod (str.len (value!191332 tag!250)) 2) 0))))

(assert (=> start!349060 d!1085896))

(declare-fun b!3703553 () Bool)

(declare-fun b_free!98841 () Bool)

(declare-fun b_next!99545 () Bool)

(assert (=> b!3703553 (= b_free!98841 (not b_next!99545))))

(declare-fun tp!1125943 () Bool)

(declare-fun b_and!277075 () Bool)

(assert (=> b!3703553 (= tp!1125943 b_and!277075)))

(declare-fun b_free!98843 () Bool)

(declare-fun b_next!99547 () Bool)

(assert (=> b!3703553 (= b_free!98843 (not b_next!99547))))

(declare-fun tp!1125945 () Bool)

(declare-fun b_and!277077 () Bool)

(assert (=> b!3703553 (= tp!1125945 b_and!277077)))

(declare-fun e!2293846 () Bool)

(assert (=> b!3703553 (= e!2293846 (and tp!1125943 tp!1125945))))

(declare-fun tp!1125946 () Bool)

(declare-fun e!2293843 () Bool)

(declare-fun b!3703552 () Bool)

(assert (=> b!3703552 (= e!2293843 (and tp!1125946 (inv!52931 (tag!6841 (h!44824 (t!302211 rules!3698)))) (inv!52934 (transformation!5997 (h!44824 (t!302211 rules!3698)))) e!2293846))))

(declare-fun b!3703551 () Bool)

(declare-fun e!2293844 () Bool)

(declare-fun tp!1125944 () Bool)

(assert (=> b!3703551 (= e!2293844 (and e!2293843 tp!1125944))))

(assert (=> b!3703474 (= tp!1125908 e!2293844)))

(assert (= b!3703552 b!3703553))

(assert (= b!3703551 b!3703552))

(assert (= (and b!3703474 (is-Cons!39404 (t!302211 rules!3698))) b!3703551))

(declare-fun m!4214477 () Bool)

(assert (=> b!3703552 m!4214477))

(declare-fun m!4214479 () Bool)

(assert (=> b!3703552 m!4214479))

(declare-fun b!3703568 () Bool)

(declare-fun e!2293851 () Bool)

(declare-fun tp!1125958 () Bool)

(assert (=> b!3703568 (= e!2293851 tp!1125958)))

(assert (=> b!3703475 (= tp!1125913 e!2293851)))

(declare-fun b!3703569 () Bool)

(declare-fun tp!1125960 () Bool)

(declare-fun tp!1125961 () Bool)

(assert (=> b!3703569 (= e!2293851 (and tp!1125960 tp!1125961))))

(declare-fun b!3703567 () Bool)

(declare-fun tp!1125957 () Bool)

(declare-fun tp!1125959 () Bool)

(assert (=> b!3703567 (= e!2293851 (and tp!1125957 tp!1125959))))

(declare-fun b!3703566 () Bool)

(declare-fun tp_is_empty!18567 () Bool)

(assert (=> b!3703566 (= e!2293851 tp_is_empty!18567)))

(assert (= (and b!3703475 (is-ElementMatch!10756 (regex!5997 newHd!19))) b!3703566))

(assert (= (and b!3703475 (is-Concat!16984 (regex!5997 newHd!19))) b!3703567))

(assert (= (and b!3703475 (is-Star!10756 (regex!5997 newHd!19))) b!3703568))

(assert (= (and b!3703475 (is-Union!10756 (regex!5997 newHd!19))) b!3703569))

(declare-fun b!3703574 () Bool)

(declare-fun e!2293854 () Bool)

(declare-fun tp!1125963 () Bool)

(assert (=> b!3703574 (= e!2293854 tp!1125963)))

(assert (=> b!3703473 (= tp!1125907 e!2293854)))

(declare-fun b!3703575 () Bool)

(declare-fun tp!1125965 () Bool)

(declare-fun tp!1125966 () Bool)

(assert (=> b!3703575 (= e!2293854 (and tp!1125965 tp!1125966))))

(declare-fun b!3703573 () Bool)

(declare-fun tp!1125962 () Bool)

(declare-fun tp!1125964 () Bool)

(assert (=> b!3703573 (= e!2293854 (and tp!1125962 tp!1125964))))

(declare-fun b!3703572 () Bool)

(assert (=> b!3703572 (= e!2293854 tp_is_empty!18567)))

(assert (= (and b!3703473 (is-ElementMatch!10756 (regex!5997 (h!44824 rules!3698)))) b!3703572))

(assert (= (and b!3703473 (is-Concat!16984 (regex!5997 (h!44824 rules!3698)))) b!3703573))

(assert (= (and b!3703473 (is-Star!10756 (regex!5997 (h!44824 rules!3698)))) b!3703574))

(assert (= (and b!3703473 (is-Union!10756 (regex!5997 (h!44824 rules!3698)))) b!3703575))

(push 1)

(assert (not b!3703567))

(assert (not b!3703569))

(assert (not d!1085882))

(assert (not b!3703522))

(assert (not d!1085880))

(assert (not d!1085878))

(assert (not b!3703573))

(assert tp_is_empty!18567)

(assert (not b!3703552))

(assert (not b!3703506))

(assert (not b!3703527))

(assert (not d!1085888))

(assert (not b!3703574))

(assert b_and!277065)

(assert (not b_next!99533))

(assert (not d!1085892))

(assert b_and!277061)

(assert (not b!3703524))

(assert (not b_next!99535))

(assert (not b!3703568))

(assert (not b!3703521))

(assert (not b_next!99547))

(assert (not d!1085894))

(assert (not b_next!99545))

(assert (not b_next!99529))

(assert (not b!3703505))

(assert b_and!277075)

(assert b_and!277063)

(assert (not b!3703575))

(assert b_and!277077)

(assert (not b_next!99531))

(assert (not b!3703534))

(assert b_and!277059)

(assert (not d!1085874))

(assert (not d!1085890))

(assert (not b!3703551))

(assert (not b!3703528))

(check-sat)

(pop 1)

(push 1)

(assert b_and!277061)

(assert (not b_next!99535))

(assert (not b_next!99547))

(assert b_and!277063)

(assert b_and!277059)

(assert b_and!277065)

(assert (not b_next!99533))

(assert (not b_next!99545))

(assert (not b_next!99529))

(assert b_and!277075)

(assert b_and!277077)

(assert (not b_next!99531))

(check-sat)

(pop 1)

