; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!190166 () Bool)

(assert start!190166)

(declare-fun b!1896560 () Bool)

(declare-fun b_free!52997 () Bool)

(declare-fun b_next!53701 () Bool)

(assert (=> b!1896560 (= b_free!52997 (not b_next!53701))))

(declare-fun tp!541325 () Bool)

(declare-fun b_and!146391 () Bool)

(assert (=> b!1896560 (= tp!541325 b_and!146391)))

(declare-fun b_free!52999 () Bool)

(declare-fun b_next!53703 () Bool)

(assert (=> b!1896560 (= b_free!52999 (not b_next!53703))))

(declare-fun tp!541322 () Bool)

(declare-fun b_and!146393 () Bool)

(assert (=> b!1896560 (= tp!541322 b_and!146393)))

(declare-fun b!1896542 () Bool)

(declare-fun b_free!53001 () Bool)

(declare-fun b_next!53705 () Bool)

(assert (=> b!1896542 (= b_free!53001 (not b_next!53705))))

(declare-fun tp!541324 () Bool)

(declare-fun b_and!146395 () Bool)

(assert (=> b!1896542 (= tp!541324 b_and!146395)))

(declare-fun b_free!53003 () Bool)

(declare-fun b_next!53707 () Bool)

(assert (=> b!1896542 (= b_free!53003 (not b_next!53707))))

(declare-fun tp!541330 () Bool)

(declare-fun b_and!146397 () Bool)

(assert (=> b!1896542 (= tp!541330 b_and!146397)))

(declare-fun b!1896547 () Bool)

(declare-fun b_free!53005 () Bool)

(declare-fun b_next!53709 () Bool)

(assert (=> b!1896547 (= b_free!53005 (not b_next!53709))))

(declare-fun tp!541329 () Bool)

(declare-fun b_and!146399 () Bool)

(assert (=> b!1896547 (= tp!541329 b_and!146399)))

(declare-fun b_free!53007 () Bool)

(declare-fun b_next!53711 () Bool)

(assert (=> b!1896547 (= b_free!53007 (not b_next!53711))))

(declare-fun tp!541321 () Bool)

(declare-fun b_and!146401 () Bool)

(assert (=> b!1896547 (= tp!541321 b_and!146401)))

(declare-fun b!1896539 () Bool)

(declare-fun res!846453 () Bool)

(declare-fun e!1210814 () Bool)

(assert (=> b!1896539 (=> (not res!846453) (not e!1210814))))

(declare-datatypes ((List!21354 0))(
  ( (Nil!21272) (Cons!21272 (h!26673 (_ BitVec 16)) (t!176303 List!21354)) )
))
(declare-datatypes ((TokenValue!3913 0))(
  ( (FloatLiteralValue!7826 (text!27836 List!21354)) (TokenValueExt!3912 (__x!13324 Int)) (Broken!19565 (value!119211 List!21354)) (Object!3994) (End!3913) (Def!3913) (Underscore!3913) (Match!3913) (Else!3913) (Error!3913) (Case!3913) (If!3913) (Extends!3913) (Abstract!3913) (Class!3913) (Val!3913) (DelimiterValue!7826 (del!3973 List!21354)) (KeywordValue!3919 (value!119212 List!21354)) (CommentValue!7826 (value!119213 List!21354)) (WhitespaceValue!7826 (value!119214 List!21354)) (IndentationValue!3913 (value!119215 List!21354)) (String!24684) (Int32!3913) (Broken!19566 (value!119216 List!21354)) (Boolean!3914) (Unit!35626) (OperatorValue!3916 (op!3973 List!21354)) (IdentifierValue!7826 (value!119217 List!21354)) (IdentifierValue!7827 (value!119218 List!21354)) (WhitespaceValue!7827 (value!119219 List!21354)) (True!7826) (False!7826) (Broken!19567 (value!119220 List!21354)) (Broken!19568 (value!119221 List!21354)) (True!7827) (RightBrace!3913) (RightBracket!3913) (Colon!3913) (Null!3913) (Comma!3913) (LeftBracket!3913) (False!7827) (LeftBrace!3913) (ImaginaryLiteralValue!3913 (text!27837 List!21354)) (StringLiteralValue!11739 (value!119222 List!21354)) (EOFValue!3913 (value!119223 List!21354)) (IdentValue!3913 (value!119224 List!21354)) (DelimiterValue!7827 (value!119225 List!21354)) (DedentValue!3913 (value!119226 List!21354)) (NewLineValue!3913 (value!119227 List!21354)) (IntegerValue!11739 (value!119228 (_ BitVec 32)) (text!27838 List!21354)) (IntegerValue!11740 (value!119229 Int) (text!27839 List!21354)) (Times!3913) (Or!3913) (Equal!3913) (Minus!3913) (Broken!19569 (value!119230 List!21354)) (And!3913) (Div!3913) (LessEqual!3913) (Mod!3913) (Concat!9115) (Not!3913) (Plus!3913) (SpaceValue!3913 (value!119231 List!21354)) (IntegerValue!11741 (value!119232 Int) (text!27840 List!21354)) (StringLiteralValue!11740 (text!27841 List!21354)) (FloatLiteralValue!7827 (text!27842 List!21354)) (BytesLiteralValue!3913 (value!119233 List!21354)) (CommentValue!7827 (value!119234 List!21354)) (StringLiteralValue!11741 (value!119235 List!21354)) (ErrorTokenValue!3913 (msg!3974 List!21354)) )
))
(declare-datatypes ((C!10550 0))(
  ( (C!10551 (val!6227 Int)) )
))
(declare-datatypes ((List!21355 0))(
  ( (Nil!21273) (Cons!21273 (h!26674 C!10550) (t!176304 List!21355)) )
))
(declare-datatypes ((Regex!5202 0))(
  ( (ElementMatch!5202 (c!309334 C!10550)) (Concat!9116 (regOne!10916 Regex!5202) (regTwo!10916 Regex!5202)) (EmptyExpr!5202) (Star!5202 (reg!5531 Regex!5202)) (EmptyLang!5202) (Union!5202 (regOne!10917 Regex!5202) (regTwo!10917 Regex!5202)) )
))
(declare-datatypes ((String!24685 0))(
  ( (String!24686 (value!119236 String)) )
))
(declare-datatypes ((IArray!14169 0))(
  ( (IArray!14170 (innerList!7142 List!21355)) )
))
(declare-datatypes ((Conc!7082 0))(
  ( (Node!7082 (left!17061 Conc!7082) (right!17391 Conc!7082) (csize!14394 Int) (cheight!7293 Int)) (Leaf!10434 (xs!9976 IArray!14169) (csize!14395 Int)) (Empty!7082) )
))
(declare-datatypes ((BalanceConc!13980 0))(
  ( (BalanceConc!13981 (c!309335 Conc!7082)) )
))
(declare-datatypes ((TokenValueInjection!7410 0))(
  ( (TokenValueInjection!7411 (toValue!5394 Int) (toChars!5253 Int)) )
))
(declare-datatypes ((Rule!7354 0))(
  ( (Rule!7355 (regex!3777 Regex!5202) (tag!4195 String!24685) (isSeparator!3777 Bool) (transformation!3777 TokenValueInjection!7410)) )
))
(declare-datatypes ((Token!7106 0))(
  ( (Token!7107 (value!119237 TokenValue!3913) (rule!5970 Rule!7354) (size!16855 Int) (originalCharacters!4584 List!21355)) )
))
(declare-fun separatorToken!354 () Token!7106)

(declare-datatypes ((LexerInterface!3390 0))(
  ( (LexerInterfaceExt!3387 (__x!13325 Int)) (Lexer!3388) )
))
(declare-fun thiss!23328 () LexerInterface!3390)

(declare-datatypes ((List!21356 0))(
  ( (Nil!21274) (Cons!21274 (h!26675 Rule!7354) (t!176305 List!21356)) )
))
(declare-fun rules!3198 () List!21356)

(declare-fun rulesProduceIndividualToken!1562 (LexerInterface!3390 List!21356 Token!7106) Bool)

(assert (=> b!1896539 (= res!846453 (rulesProduceIndividualToken!1562 thiss!23328 rules!3198 separatorToken!354))))

(declare-fun b!1896540 () Bool)

(declare-fun e!1210830 () Bool)

(declare-fun e!1210817 () Bool)

(assert (=> b!1896540 (= e!1210830 e!1210817)))

(declare-fun res!846463 () Bool)

(assert (=> b!1896540 (=> (not res!846463) (not e!1210817))))

(declare-fun lt!725330 () Rule!7354)

(declare-fun lt!725329 () List!21355)

(declare-fun matchR!2488 (Regex!5202 List!21355) Bool)

(assert (=> b!1896540 (= res!846463 (matchR!2488 (regex!3777 lt!725330) lt!725329))))

(declare-datatypes ((Option!4259 0))(
  ( (None!4258) (Some!4258 (v!26287 Rule!7354)) )
))
(declare-fun lt!725332 () Option!4259)

(declare-fun get!6555 (Option!4259) Rule!7354)

(assert (=> b!1896540 (= lt!725330 (get!6555 lt!725332))))

(declare-fun b!1896541 () Bool)

(declare-fun e!1210820 () Bool)

(declare-fun e!1210825 () Bool)

(declare-fun tp!541331 () Bool)

(assert (=> b!1896541 (= e!1210820 (and e!1210825 tp!541331))))

(declare-fun e!1210822 () Bool)

(assert (=> b!1896542 (= e!1210822 (and tp!541324 tp!541330))))

(declare-fun b!1896543 () Bool)

(declare-fun res!846452 () Bool)

(assert (=> b!1896543 (=> (not res!846452) (not e!1210814))))

(declare-fun rulesInvariant!2997 (LexerInterface!3390 List!21356) Bool)

(assert (=> b!1896543 (= res!846452 (rulesInvariant!2997 thiss!23328 rules!3198))))

(declare-fun res!846460 () Bool)

(assert (=> start!190166 (=> (not res!846460) (not e!1210814))))

(assert (=> start!190166 (= res!846460 (is-Lexer!3388 thiss!23328))))

(assert (=> start!190166 e!1210814))

(assert (=> start!190166 true))

(assert (=> start!190166 e!1210820))

(declare-fun e!1210813 () Bool)

(assert (=> start!190166 e!1210813))

(declare-fun e!1210829 () Bool)

(declare-fun inv!28377 (Token!7106) Bool)

(assert (=> start!190166 (and (inv!28377 separatorToken!354) e!1210829)))

(declare-fun b!1896544 () Bool)

(assert (=> b!1896544 (= e!1210817 (= (rule!5970 separatorToken!354) lt!725330))))

(declare-fun b!1896545 () Bool)

(declare-fun res!846457 () Bool)

(assert (=> b!1896545 (=> (not res!846457) (not e!1210814))))

(declare-datatypes ((List!21357 0))(
  ( (Nil!21275) (Cons!21275 (h!26676 Token!7106) (t!176306 List!21357)) )
))
(declare-fun tokens!598 () List!21357)

(assert (=> b!1896545 (= res!846457 (is-Cons!21275 tokens!598))))

(declare-fun tp!541319 () Bool)

(declare-fun e!1210819 () Bool)

(declare-fun b!1896546 () Bool)

(declare-fun inv!21 (TokenValue!3913) Bool)

(assert (=> b!1896546 (= e!1210829 (and (inv!21 (value!119237 separatorToken!354)) e!1210819 tp!541319))))

(declare-fun e!1210818 () Bool)

(assert (=> b!1896547 (= e!1210818 (and tp!541329 tp!541321))))

(declare-fun b!1896548 () Bool)

(declare-fun tp!541327 () Bool)

(declare-fun inv!28374 (String!24685) Bool)

(declare-fun inv!28378 (TokenValueInjection!7410) Bool)

(assert (=> b!1896548 (= e!1210825 (and tp!541327 (inv!28374 (tag!4195 (h!26675 rules!3198))) (inv!28378 (transformation!3777 (h!26675 rules!3198))) e!1210818))))

(declare-fun e!1210823 () Bool)

(declare-fun b!1896549 () Bool)

(declare-fun e!1210815 () Bool)

(declare-fun tp!541328 () Bool)

(assert (=> b!1896549 (= e!1210823 (and (inv!21 (value!119237 (h!26676 tokens!598))) e!1210815 tp!541328))))

(declare-fun tp!541323 () Bool)

(declare-fun b!1896550 () Bool)

(assert (=> b!1896550 (= e!1210813 (and (inv!28377 (h!26676 tokens!598)) e!1210823 tp!541323))))

(declare-fun b!1896551 () Bool)

(assert (=> b!1896551 (= e!1210814 (not true))))

(declare-fun e!1210828 () Bool)

(assert (=> b!1896551 e!1210828))

(declare-fun res!846456 () Bool)

(assert (=> b!1896551 (=> (not res!846456) (not e!1210828))))

(declare-datatypes ((tuple2!20078 0))(
  ( (tuple2!20079 (_1!11508 Token!7106) (_2!11508 List!21355)) )
))
(declare-datatypes ((Option!4260 0))(
  ( (None!4259) (Some!4259 (v!26288 tuple2!20078)) )
))
(declare-fun lt!725334 () Option!4260)

(declare-fun isDefined!3557 (Option!4260) Bool)

(assert (=> b!1896551 (= res!846456 (isDefined!3557 lt!725334))))

(declare-fun lt!725331 () BalanceConc!13980)

(declare-fun maxPrefix!1836 (LexerInterface!3390 List!21356 List!21355) Option!4260)

(declare-fun list!8653 (BalanceConc!13980) List!21355)

(assert (=> b!1896551 (= lt!725334 (maxPrefix!1836 thiss!23328 rules!3198 (list!8653 lt!725331)))))

(assert (=> b!1896551 e!1210830))

(declare-fun res!846455 () Bool)

(assert (=> b!1896551 (=> (not res!846455) (not e!1210830))))

(declare-fun isDefined!3558 (Option!4259) Bool)

(assert (=> b!1896551 (= res!846455 (isDefined!3558 lt!725332))))

(declare-fun getRuleFromTag!620 (LexerInterface!3390 List!21356 String!24685) Option!4259)

(assert (=> b!1896551 (= lt!725332 (getRuleFromTag!620 thiss!23328 rules!3198 (tag!4195 (rule!5970 separatorToken!354))))))

(declare-datatypes ((Unit!35627 0))(
  ( (Unit!35628) )
))
(declare-fun lt!725333 () Unit!35627)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!620 (LexerInterface!3390 List!21356 List!21355 Token!7106) Unit!35627)

(assert (=> b!1896551 (= lt!725333 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!620 thiss!23328 rules!3198 lt!725329 separatorToken!354))))

(declare-fun charsOf!2333 (Token!7106) BalanceConc!13980)

(assert (=> b!1896551 (= lt!725329 (list!8653 (charsOf!2333 separatorToken!354)))))

(declare-fun lt!725328 () Unit!35627)

(declare-fun lemmaEqSameImage!485 (TokenValueInjection!7410 BalanceConc!13980 BalanceConc!13980) Unit!35627)

(declare-fun seqFromList!2649 (List!21355) BalanceConc!13980)

(assert (=> b!1896551 (= lt!725328 (lemmaEqSameImage!485 (transformation!3777 (rule!5970 (h!26676 tokens!598))) lt!725331 (seqFromList!2649 (originalCharacters!4584 (h!26676 tokens!598)))))))

(declare-fun lt!725327 () Unit!35627)

(declare-fun lemmaSemiInverse!756 (TokenValueInjection!7410 BalanceConc!13980) Unit!35627)

(assert (=> b!1896551 (= lt!725327 (lemmaSemiInverse!756 (transformation!3777 (rule!5970 (h!26676 tokens!598))) lt!725331))))

(assert (=> b!1896551 (= lt!725331 (charsOf!2333 (h!26676 tokens!598)))))

(declare-fun b!1896552 () Bool)

(declare-fun get!6556 (Option!4260) tuple2!20078)

(assert (=> b!1896552 (= e!1210828 (= (_1!11508 (get!6556 lt!725334)) (h!26676 tokens!598)))))

(declare-fun b!1896553 () Bool)

(declare-fun res!846462 () Bool)

(assert (=> b!1896553 (=> (not res!846462) (not e!1210814))))

(assert (=> b!1896553 (= res!846462 (isSeparator!3777 (rule!5970 separatorToken!354)))))

(declare-fun b!1896554 () Bool)

(declare-fun res!846461 () Bool)

(assert (=> b!1896554 (=> (not res!846461) (not e!1210814))))

(declare-fun lambda!74102 () Int)

(declare-fun forall!4455 (List!21357 Int) Bool)

(assert (=> b!1896554 (= res!846461 (forall!4455 tokens!598 lambda!74102))))

(declare-fun b!1896555 () Bool)

(declare-fun tp!541326 () Bool)

(declare-fun e!1210816 () Bool)

(assert (=> b!1896555 (= e!1210819 (and tp!541326 (inv!28374 (tag!4195 (rule!5970 separatorToken!354))) (inv!28378 (transformation!3777 (rule!5970 separatorToken!354))) e!1210816))))

(declare-fun b!1896556 () Bool)

(declare-fun res!846459 () Bool)

(assert (=> b!1896556 (=> (not res!846459) (not e!1210814))))

(declare-fun sepAndNonSepRulesDisjointChars!875 (List!21356 List!21356) Bool)

(assert (=> b!1896556 (= res!846459 (sepAndNonSepRulesDisjointChars!875 rules!3198 rules!3198))))

(declare-fun b!1896557 () Bool)

(declare-fun res!846458 () Bool)

(assert (=> b!1896557 (=> (not res!846458) (not e!1210814))))

(declare-fun isEmpty!13059 (List!21356) Bool)

(assert (=> b!1896557 (= res!846458 (not (isEmpty!13059 rules!3198)))))

(declare-fun b!1896558 () Bool)

(declare-fun res!846454 () Bool)

(assert (=> b!1896558 (=> (not res!846454) (not e!1210814))))

(declare-fun rulesProduceEachTokenIndividuallyList!1121 (LexerInterface!3390 List!21356 List!21357) Bool)

(assert (=> b!1896558 (= res!846454 (rulesProduceEachTokenIndividuallyList!1121 thiss!23328 rules!3198 tokens!598))))

(declare-fun tp!541320 () Bool)

(declare-fun b!1896559 () Bool)

(assert (=> b!1896559 (= e!1210815 (and tp!541320 (inv!28374 (tag!4195 (rule!5970 (h!26676 tokens!598)))) (inv!28378 (transformation!3777 (rule!5970 (h!26676 tokens!598)))) e!1210822))))

(assert (=> b!1896560 (= e!1210816 (and tp!541325 tp!541322))))

(assert (= (and start!190166 res!846460) b!1896557))

(assert (= (and b!1896557 res!846458) b!1896543))

(assert (= (and b!1896543 res!846452) b!1896558))

(assert (= (and b!1896558 res!846454) b!1896539))

(assert (= (and b!1896539 res!846453) b!1896553))

(assert (= (and b!1896553 res!846462) b!1896554))

(assert (= (and b!1896554 res!846461) b!1896556))

(assert (= (and b!1896556 res!846459) b!1896545))

(assert (= (and b!1896545 res!846457) b!1896551))

(assert (= (and b!1896551 res!846455) b!1896540))

(assert (= (and b!1896540 res!846463) b!1896544))

(assert (= (and b!1896551 res!846456) b!1896552))

(assert (= b!1896548 b!1896547))

(assert (= b!1896541 b!1896548))

(assert (= (and start!190166 (is-Cons!21274 rules!3198)) b!1896541))

(assert (= b!1896559 b!1896542))

(assert (= b!1896549 b!1896559))

(assert (= b!1896550 b!1896549))

(assert (= (and start!190166 (is-Cons!21275 tokens!598)) b!1896550))

(assert (= b!1896555 b!1896560))

(assert (= b!1896546 b!1896555))

(assert (= start!190166 b!1896546))

(declare-fun m!2327759 () Bool)

(assert (=> b!1896555 m!2327759))

(declare-fun m!2327761 () Bool)

(assert (=> b!1896555 m!2327761))

(declare-fun m!2327763 () Bool)

(assert (=> b!1896551 m!2327763))

(declare-fun m!2327765 () Bool)

(assert (=> b!1896551 m!2327765))

(declare-fun m!2327767 () Bool)

(assert (=> b!1896551 m!2327767))

(assert (=> b!1896551 m!2327767))

(declare-fun m!2327769 () Bool)

(assert (=> b!1896551 m!2327769))

(assert (=> b!1896551 m!2327765))

(declare-fun m!2327771 () Bool)

(assert (=> b!1896551 m!2327771))

(declare-fun m!2327773 () Bool)

(assert (=> b!1896551 m!2327773))

(declare-fun m!2327775 () Bool)

(assert (=> b!1896551 m!2327775))

(declare-fun m!2327777 () Bool)

(assert (=> b!1896551 m!2327777))

(declare-fun m!2327779 () Bool)

(assert (=> b!1896551 m!2327779))

(assert (=> b!1896551 m!2327777))

(declare-fun m!2327781 () Bool)

(assert (=> b!1896551 m!2327781))

(declare-fun m!2327783 () Bool)

(assert (=> b!1896551 m!2327783))

(declare-fun m!2327785 () Bool)

(assert (=> b!1896551 m!2327785))

(declare-fun m!2327787 () Bool)

(assert (=> b!1896549 m!2327787))

(declare-fun m!2327789 () Bool)

(assert (=> b!1896554 m!2327789))

(declare-fun m!2327791 () Bool)

(assert (=> b!1896539 m!2327791))

(declare-fun m!2327793 () Bool)

(assert (=> b!1896556 m!2327793))

(declare-fun m!2327795 () Bool)

(assert (=> b!1896546 m!2327795))

(declare-fun m!2327797 () Bool)

(assert (=> b!1896543 m!2327797))

(declare-fun m!2327799 () Bool)

(assert (=> b!1896550 m!2327799))

(declare-fun m!2327801 () Bool)

(assert (=> b!1896552 m!2327801))

(declare-fun m!2327803 () Bool)

(assert (=> start!190166 m!2327803))

(declare-fun m!2327805 () Bool)

(assert (=> b!1896540 m!2327805))

(declare-fun m!2327807 () Bool)

(assert (=> b!1896540 m!2327807))

(declare-fun m!2327809 () Bool)

(assert (=> b!1896558 m!2327809))

(declare-fun m!2327811 () Bool)

(assert (=> b!1896548 m!2327811))

(declare-fun m!2327813 () Bool)

(assert (=> b!1896548 m!2327813))

(declare-fun m!2327815 () Bool)

(assert (=> b!1896559 m!2327815))

(declare-fun m!2327817 () Bool)

(assert (=> b!1896559 m!2327817))

(declare-fun m!2327819 () Bool)

(assert (=> b!1896557 m!2327819))

(push 1)

(assert (not b!1896543))

(assert (not b!1896556))

(assert b_and!146401)

(assert (not b!1896540))

(assert (not b_next!53709))

(assert b_and!146391)

(assert b_and!146395)

(assert (not b!1896557))

(assert (not b!1896552))

(assert (not start!190166))

(assert (not b_next!53701))

(assert (not b!1896559))

(assert (not b!1896550))

(assert (not b_next!53707))

(assert (not b!1896551))

(assert (not b!1896546))

(assert (not b!1896555))

(assert (not b!1896539))

(assert (not b_next!53705))

(assert (not b_next!53711))

(assert (not b!1896554))

(assert b_and!146393)

(assert (not b!1896548))

(assert (not b!1896541))

(assert b_and!146397)

(assert b_and!146399)

(assert (not b_next!53703))

(assert (not b!1896558))

(assert (not b!1896549))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!53701))

(assert (not b_next!53707))

(assert b_and!146401)

(assert (not b_next!53709))

(assert b_and!146391)

(assert (not b_next!53705))

(assert b_and!146395)

(assert (not b_next!53711))

(assert b_and!146393)

(assert b_and!146397)

(assert b_and!146399)

(assert (not b_next!53703))

(check-sat)

(pop 1)

