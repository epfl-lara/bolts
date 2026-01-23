; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!307784 () Bool)

(assert start!307784)

(declare-fun b!3304844 () Bool)

(declare-fun b_free!86845 () Bool)

(declare-fun b_next!87549 () Bool)

(assert (=> b!3304844 (= b_free!86845 (not b_next!87549))))

(declare-fun tp!1034767 () Bool)

(declare-fun b_and!226427 () Bool)

(assert (=> b!3304844 (= tp!1034767 b_and!226427)))

(declare-fun b_free!86847 () Bool)

(declare-fun b_next!87551 () Bool)

(assert (=> b!3304844 (= b_free!86847 (not b_next!87551))))

(declare-fun tp!1034763 () Bool)

(declare-fun b_and!226429 () Bool)

(assert (=> b!3304844 (= tp!1034763 b_and!226429)))

(declare-fun b!3304843 () Bool)

(declare-fun b_free!86849 () Bool)

(declare-fun b_next!87553 () Bool)

(assert (=> b!3304843 (= b_free!86849 (not b_next!87553))))

(declare-fun tp!1034759 () Bool)

(declare-fun b_and!226431 () Bool)

(assert (=> b!3304843 (= tp!1034759 b_and!226431)))

(declare-fun b_free!86851 () Bool)

(declare-fun b_next!87555 () Bool)

(assert (=> b!3304843 (= b_free!86851 (not b_next!87555))))

(declare-fun tp!1034769 () Bool)

(declare-fun b_and!226433 () Bool)

(assert (=> b!3304843 (= tp!1034769 b_and!226433)))

(declare-fun b!3304839 () Bool)

(declare-fun b_free!86853 () Bool)

(declare-fun b_next!87557 () Bool)

(assert (=> b!3304839 (= b_free!86853 (not b_next!87557))))

(declare-fun tp!1034765 () Bool)

(declare-fun b_and!226435 () Bool)

(assert (=> b!3304839 (= tp!1034765 b_and!226435)))

(declare-fun b_free!86855 () Bool)

(declare-fun b_next!87559 () Bool)

(assert (=> b!3304839 (= b_free!86855 (not b_next!87559))))

(declare-fun tp!1034766 () Bool)

(declare-fun b_and!226437 () Bool)

(assert (=> b!3304839 (= tp!1034766 b_and!226437)))

(declare-fun b!3304825 () Bool)

(declare-fun res!1340365 () Bool)

(declare-fun e!2055265 () Bool)

(assert (=> b!3304825 (=> (not res!1340365) (not e!2055265))))

(declare-datatypes ((C!20294 0))(
  ( (C!20295 (val!12195 Int)) )
))
(declare-datatypes ((Regex!10054 0))(
  ( (ElementMatch!10054 (c!560672 C!20294)) (Concat!15579 (regOne!20620 Regex!10054) (regTwo!20620 Regex!10054)) (EmptyExpr!10054) (Star!10054 (reg!10383 Regex!10054)) (EmptyLang!10054) (Union!10054 (regOne!20621 Regex!10054) (regTwo!20621 Regex!10054)) )
))
(declare-datatypes ((List!36620 0))(
  ( (Nil!36496) (Cons!36496 (h!41916 (_ BitVec 16)) (t!253451 List!36620)) )
))
(declare-datatypes ((TokenValue!5525 0))(
  ( (FloatLiteralValue!11050 (text!39120 List!36620)) (TokenValueExt!5524 (__x!23267 Int)) (Broken!27625 (value!171343 List!36620)) (Object!5648) (End!5525) (Def!5525) (Underscore!5525) (Match!5525) (Else!5525) (Error!5525) (Case!5525) (If!5525) (Extends!5525) (Abstract!5525) (Class!5525) (Val!5525) (DelimiterValue!11050 (del!5585 List!36620)) (KeywordValue!5531 (value!171344 List!36620)) (CommentValue!11050 (value!171345 List!36620)) (WhitespaceValue!11050 (value!171346 List!36620)) (IndentationValue!5525 (value!171347 List!36620)) (String!40960) (Int32!5525) (Broken!27626 (value!171348 List!36620)) (Boolean!5526) (Unit!51430) (OperatorValue!5528 (op!5585 List!36620)) (IdentifierValue!11050 (value!171349 List!36620)) (IdentifierValue!11051 (value!171350 List!36620)) (WhitespaceValue!11051 (value!171351 List!36620)) (True!11050) (False!11050) (Broken!27627 (value!171352 List!36620)) (Broken!27628 (value!171353 List!36620)) (True!11051) (RightBrace!5525) (RightBracket!5525) (Colon!5525) (Null!5525) (Comma!5525) (LeftBracket!5525) (False!11051) (LeftBrace!5525) (ImaginaryLiteralValue!5525 (text!39121 List!36620)) (StringLiteralValue!16575 (value!171354 List!36620)) (EOFValue!5525 (value!171355 List!36620)) (IdentValue!5525 (value!171356 List!36620)) (DelimiterValue!11051 (value!171357 List!36620)) (DedentValue!5525 (value!171358 List!36620)) (NewLineValue!5525 (value!171359 List!36620)) (IntegerValue!16575 (value!171360 (_ BitVec 32)) (text!39122 List!36620)) (IntegerValue!16576 (value!171361 Int) (text!39123 List!36620)) (Times!5525) (Or!5525) (Equal!5525) (Minus!5525) (Broken!27629 (value!171362 List!36620)) (And!5525) (Div!5525) (LessEqual!5525) (Mod!5525) (Concat!15580) (Not!5525) (Plus!5525) (SpaceValue!5525 (value!171363 List!36620)) (IntegerValue!16577 (value!171364 Int) (text!39124 List!36620)) (StringLiteralValue!16576 (text!39125 List!36620)) (FloatLiteralValue!11051 (text!39126 List!36620)) (BytesLiteralValue!5525 (value!171365 List!36620)) (CommentValue!11051 (value!171366 List!36620)) (StringLiteralValue!16577 (value!171367 List!36620)) (ErrorTokenValue!5525 (msg!5586 List!36620)) )
))
(declare-datatypes ((List!36621 0))(
  ( (Nil!36497) (Cons!36497 (h!41917 C!20294) (t!253452 List!36621)) )
))
(declare-datatypes ((IArray!21935 0))(
  ( (IArray!21936 (innerList!11025 List!36621)) )
))
(declare-datatypes ((Conc!10965 0))(
  ( (Node!10965 (left!28427 Conc!10965) (right!28757 Conc!10965) (csize!22160 Int) (cheight!11176 Int)) (Leaf!17224 (xs!14103 IArray!21935) (csize!22161 Int)) (Empty!10965) )
))
(declare-datatypes ((BalanceConc!21544 0))(
  ( (BalanceConc!21545 (c!560673 Conc!10965)) )
))
(declare-datatypes ((String!40961 0))(
  ( (String!40962 (value!171368 String)) )
))
(declare-datatypes ((TokenValueInjection!10478 0))(
  ( (TokenValueInjection!10479 (toValue!7431 Int) (toChars!7290 Int)) )
))
(declare-datatypes ((Rule!10390 0))(
  ( (Rule!10391 (regex!5295 Regex!10054) (tag!5841 String!40961) (isSeparator!5295 Bool) (transformation!5295 TokenValueInjection!10478)) )
))
(declare-datatypes ((Token!9956 0))(
  ( (Token!9957 (value!171369 TokenValue!5525) (rule!7799 Rule!10390) (size!27564 Int) (originalCharacters!6009 List!36621)) )
))
(declare-fun separatorToken!241 () Token!9956)

(assert (=> b!3304825 (= res!1340365 (isSeparator!5295 (rule!7799 separatorToken!241)))))

(declare-fun e!2055273 () Bool)

(declare-fun tp!1034761 () Bool)

(declare-fun b!3304826 () Bool)

(declare-fun e!2055269 () Bool)

(declare-datatypes ((List!36622 0))(
  ( (Nil!36498) (Cons!36498 (h!41918 Token!9956) (t!253453 List!36622)) )
))
(declare-fun tokens!494 () List!36622)

(declare-fun inv!21 (TokenValue!5525) Bool)

(assert (=> b!3304826 (= e!2055273 (and (inv!21 (value!171369 (h!41918 tokens!494))) e!2055269 tp!1034761))))

(declare-fun b!3304827 () Bool)

(declare-fun res!1340363 () Bool)

(assert (=> b!3304827 (=> (not res!1340363) (not e!2055265))))

(declare-datatypes ((LexerInterface!4884 0))(
  ( (LexerInterfaceExt!4881 (__x!23268 Int)) (Lexer!4882) )
))
(declare-fun thiss!18206 () LexerInterface!4884)

(declare-datatypes ((List!36623 0))(
  ( (Nil!36499) (Cons!36499 (h!41919 Rule!10390) (t!253454 List!36623)) )
))
(declare-fun rules!2135 () List!36623)

(declare-fun rulesProduceIndividualToken!2376 (LexerInterface!4884 List!36623 Token!9956) Bool)

(assert (=> b!3304827 (= res!1340363 (rulesProduceIndividualToken!2376 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3304828 () Bool)

(declare-fun res!1340364 () Bool)

(assert (=> b!3304828 (=> (not res!1340364) (not e!2055265))))

(declare-fun isEmpty!20634 (List!36623) Bool)

(assert (=> b!3304828 (= res!1340364 (not (isEmpty!20634 rules!2135)))))

(declare-fun b!3304829 () Bool)

(declare-fun e!2055263 () Bool)

(declare-fun e!2055264 () Bool)

(assert (=> b!3304829 (= e!2055263 e!2055264)))

(declare-fun res!1340366 () Bool)

(assert (=> b!3304829 (=> res!1340366 e!2055264)))

(declare-fun lt!1120229 () List!36621)

(declare-fun lt!1120228 () List!36621)

(declare-fun lt!1120227 () List!36621)

(assert (=> b!3304829 (= res!1340366 (or (not (= lt!1120228 lt!1120229)) (not (= lt!1120227 lt!1120229))))))

(declare-fun list!13084 (BalanceConc!21544) List!36621)

(declare-fun charsOf!3311 (Token!9956) BalanceConc!21544)

(assert (=> b!3304829 (= lt!1120229 (list!13084 (charsOf!3311 (h!41918 tokens!494))))))

(declare-fun b!3304830 () Bool)

(declare-fun res!1340360 () Bool)

(assert (=> b!3304830 (=> (not res!1340360) (not e!2055265))))

(declare-fun lambda!118990 () Int)

(declare-fun forall!7563 (List!36622 Int) Bool)

(assert (=> b!3304830 (= res!1340360 (forall!7563 tokens!494 lambda!118990))))

(declare-fun b!3304831 () Bool)

(assert (=> b!3304831 (= e!2055265 (not e!2055263))))

(declare-fun res!1340370 () Bool)

(assert (=> b!3304831 (=> res!1340370 e!2055263)))

(assert (=> b!3304831 (= res!1340370 (not (= lt!1120227 lt!1120228)))))

(declare-fun printList!1434 (LexerInterface!4884 List!36622) List!36621)

(assert (=> b!3304831 (= lt!1120228 (printList!1434 thiss!18206 (Cons!36498 (h!41918 tokens!494) Nil!36498)))))

(declare-fun lt!1120225 () BalanceConc!21544)

(assert (=> b!3304831 (= lt!1120227 (list!13084 lt!1120225))))

(declare-datatypes ((IArray!21937 0))(
  ( (IArray!21938 (innerList!11026 List!36622)) )
))
(declare-datatypes ((Conc!10966 0))(
  ( (Node!10966 (left!28428 Conc!10966) (right!28758 Conc!10966) (csize!22162 Int) (cheight!11177 Int)) (Leaf!17225 (xs!14104 IArray!21937) (csize!22163 Int)) (Empty!10966) )
))
(declare-datatypes ((BalanceConc!21546 0))(
  ( (BalanceConc!21547 (c!560674 Conc!10966)) )
))
(declare-fun lt!1120226 () BalanceConc!21546)

(declare-fun printTailRec!1381 (LexerInterface!4884 BalanceConc!21546 Int BalanceConc!21544) BalanceConc!21544)

(assert (=> b!3304831 (= lt!1120225 (printTailRec!1381 thiss!18206 lt!1120226 0 (BalanceConc!21545 Empty!10965)))))

(declare-fun print!1949 (LexerInterface!4884 BalanceConc!21546) BalanceConc!21544)

(assert (=> b!3304831 (= lt!1120225 (print!1949 thiss!18206 lt!1120226))))

(declare-fun singletonSeq!2391 (Token!9956) BalanceConc!21546)

(assert (=> b!3304831 (= lt!1120226 (singletonSeq!2391 (h!41918 tokens!494)))))

(declare-fun res!1340362 () Bool)

(assert (=> start!307784 (=> (not res!1340362) (not e!2055265))))

(assert (=> start!307784 (= res!1340362 (is-Lexer!4882 thiss!18206))))

(assert (=> start!307784 e!2055265))

(assert (=> start!307784 true))

(declare-fun e!2055271 () Bool)

(assert (=> start!307784 e!2055271))

(declare-fun e!2055279 () Bool)

(assert (=> start!307784 e!2055279))

(declare-fun e!2055268 () Bool)

(declare-fun inv!49461 (Token!9956) Bool)

(assert (=> start!307784 (and (inv!49461 separatorToken!241) e!2055268)))

(declare-fun b!3304832 () Bool)

(declare-fun e!2055274 () Bool)

(declare-fun tp!1034771 () Bool)

(assert (=> b!3304832 (= e!2055268 (and (inv!21 (value!171369 separatorToken!241)) e!2055274 tp!1034771))))

(declare-fun b!3304833 () Bool)

(declare-fun res!1340368 () Bool)

(assert (=> b!3304833 (=> (not res!1340368) (not e!2055265))))

(declare-fun rulesInvariant!4281 (LexerInterface!4884 List!36623) Bool)

(assert (=> b!3304833 (= res!1340368 (rulesInvariant!4281 thiss!18206 rules!2135))))

(declare-fun b!3304834 () Bool)

(declare-fun res!1340361 () Bool)

(assert (=> b!3304834 (=> (not res!1340361) (not e!2055265))))

(declare-fun sepAndNonSepRulesDisjointChars!1489 (List!36623 List!36623) Bool)

(assert (=> b!3304834 (= res!1340361 (sepAndNonSepRulesDisjointChars!1489 rules!2135 rules!2135))))

(declare-fun e!2055278 () Bool)

(declare-fun e!2055272 () Bool)

(declare-fun tp!1034768 () Bool)

(declare-fun b!3304835 () Bool)

(declare-fun inv!49458 (String!40961) Bool)

(declare-fun inv!49462 (TokenValueInjection!10478) Bool)

(assert (=> b!3304835 (= e!2055278 (and tp!1034768 (inv!49458 (tag!5841 (h!41919 rules!2135))) (inv!49462 (transformation!5295 (h!41919 rules!2135))) e!2055272))))

(declare-fun b!3304836 () Bool)

(declare-fun tp!1034762 () Bool)

(assert (=> b!3304836 (= e!2055271 (and e!2055278 tp!1034762))))

(declare-fun b!3304837 () Bool)

(declare-fun tp!1034770 () Bool)

(declare-fun e!2055275 () Bool)

(assert (=> b!3304837 (= e!2055269 (and tp!1034770 (inv!49458 (tag!5841 (rule!7799 (h!41918 tokens!494)))) (inv!49462 (transformation!5295 (rule!7799 (h!41918 tokens!494)))) e!2055275))))

(declare-fun tp!1034760 () Bool)

(declare-fun b!3304838 () Bool)

(assert (=> b!3304838 (= e!2055279 (and (inv!49461 (h!41918 tokens!494)) e!2055273 tp!1034760))))

(assert (=> b!3304839 (= e!2055272 (and tp!1034765 tp!1034766))))

(declare-fun b!3304840 () Bool)

(declare-fun res!1340369 () Bool)

(assert (=> b!3304840 (=> (not res!1340369) (not e!2055265))))

(assert (=> b!3304840 (= res!1340369 (and (not (is-Nil!36498 tokens!494)) (not (is-Nil!36498 (t!253453 tokens!494)))))))

(declare-fun b!3304841 () Bool)

(assert (=> b!3304841 (= e!2055264 (rulesProduceIndividualToken!2376 thiss!18206 rules!2135 (h!41918 tokens!494)))))

(declare-fun b!3304842 () Bool)

(declare-fun res!1340367 () Bool)

(assert (=> b!3304842 (=> (not res!1340367) (not e!2055265))))

(declare-fun rulesProduceEachTokenIndividually!1335 (LexerInterface!4884 List!36623 BalanceConc!21546) Bool)

(declare-fun seqFromList!3647 (List!36622) BalanceConc!21546)

(assert (=> b!3304842 (= res!1340367 (rulesProduceEachTokenIndividually!1335 thiss!18206 rules!2135 (seqFromList!3647 tokens!494)))))

(assert (=> b!3304843 (= e!2055275 (and tp!1034759 tp!1034769))))

(declare-fun e!2055280 () Bool)

(assert (=> b!3304844 (= e!2055280 (and tp!1034767 tp!1034763))))

(declare-fun tp!1034764 () Bool)

(declare-fun b!3304845 () Bool)

(assert (=> b!3304845 (= e!2055274 (and tp!1034764 (inv!49458 (tag!5841 (rule!7799 separatorToken!241))) (inv!49462 (transformation!5295 (rule!7799 separatorToken!241))) e!2055280))))

(assert (= (and start!307784 res!1340362) b!3304828))

(assert (= (and b!3304828 res!1340364) b!3304833))

(assert (= (and b!3304833 res!1340368) b!3304842))

(assert (= (and b!3304842 res!1340367) b!3304827))

(assert (= (and b!3304827 res!1340363) b!3304825))

(assert (= (and b!3304825 res!1340365) b!3304830))

(assert (= (and b!3304830 res!1340360) b!3304834))

(assert (= (and b!3304834 res!1340361) b!3304840))

(assert (= (and b!3304840 res!1340369) b!3304831))

(assert (= (and b!3304831 (not res!1340370)) b!3304829))

(assert (= (and b!3304829 (not res!1340366)) b!3304841))

(assert (= b!3304835 b!3304839))

(assert (= b!3304836 b!3304835))

(assert (= (and start!307784 (is-Cons!36499 rules!2135)) b!3304836))

(assert (= b!3304837 b!3304843))

(assert (= b!3304826 b!3304837))

(assert (= b!3304838 b!3304826))

(assert (= (and start!307784 (is-Cons!36498 tokens!494)) b!3304838))

(assert (= b!3304845 b!3304844))

(assert (= b!3304832 b!3304845))

(assert (= start!307784 b!3304832))

(declare-fun m!3630803 () Bool)

(assert (=> b!3304845 m!3630803))

(declare-fun m!3630805 () Bool)

(assert (=> b!3304845 m!3630805))

(declare-fun m!3630807 () Bool)

(assert (=> b!3304832 m!3630807))

(declare-fun m!3630809 () Bool)

(assert (=> start!307784 m!3630809))

(declare-fun m!3630811 () Bool)

(assert (=> b!3304831 m!3630811))

(declare-fun m!3630813 () Bool)

(assert (=> b!3304831 m!3630813))

(declare-fun m!3630815 () Bool)

(assert (=> b!3304831 m!3630815))

(declare-fun m!3630817 () Bool)

(assert (=> b!3304831 m!3630817))

(declare-fun m!3630819 () Bool)

(assert (=> b!3304831 m!3630819))

(declare-fun m!3630821 () Bool)

(assert (=> b!3304828 m!3630821))

(declare-fun m!3630823 () Bool)

(assert (=> b!3304837 m!3630823))

(declare-fun m!3630825 () Bool)

(assert (=> b!3304837 m!3630825))

(declare-fun m!3630827 () Bool)

(assert (=> b!3304842 m!3630827))

(assert (=> b!3304842 m!3630827))

(declare-fun m!3630829 () Bool)

(assert (=> b!3304842 m!3630829))

(declare-fun m!3630831 () Bool)

(assert (=> b!3304841 m!3630831))

(declare-fun m!3630833 () Bool)

(assert (=> b!3304827 m!3630833))

(declare-fun m!3630835 () Bool)

(assert (=> b!3304834 m!3630835))

(declare-fun m!3630837 () Bool)

(assert (=> b!3304829 m!3630837))

(assert (=> b!3304829 m!3630837))

(declare-fun m!3630839 () Bool)

(assert (=> b!3304829 m!3630839))

(declare-fun m!3630841 () Bool)

(assert (=> b!3304835 m!3630841))

(declare-fun m!3630843 () Bool)

(assert (=> b!3304835 m!3630843))

(declare-fun m!3630845 () Bool)

(assert (=> b!3304833 m!3630845))

(declare-fun m!3630847 () Bool)

(assert (=> b!3304830 m!3630847))

(declare-fun m!3630849 () Bool)

(assert (=> b!3304838 m!3630849))

(declare-fun m!3630851 () Bool)

(assert (=> b!3304826 m!3630851))

(push 1)

(assert (not b!3304845))

(assert b_and!226437)

(assert (not b!3304832))

(assert (not b_next!87559))

(assert (not b!3304834))

(assert (not b!3304829))

(assert (not b!3304841))

(assert (not b_next!87551))

(assert (not start!307784))

(assert (not b!3304830))

(assert (not b!3304833))

(assert (not b!3304835))

(assert (not b_next!87557))

(assert b_and!226431)

(assert (not b!3304827))

(assert (not b!3304831))

(assert (not b!3304837))

(assert (not b!3304838))

(assert (not b!3304842))

(assert (not b!3304826))

(assert b_and!226427)

(assert (not b!3304836))

(assert b_and!226433)

(assert (not b_next!87549))

(assert b_and!226429)

(assert (not b!3304828))

(assert (not b_next!87553))

(assert b_and!226435)

(assert (not b_next!87555))

(check-sat)

(pop 1)

(push 1)

(assert b_and!226431)

(assert b_and!226427)

(assert b_and!226437)

(assert (not b_next!87559))

(assert b_and!226429)

(assert (not b_next!87551))

(assert (not b_next!87557))

(assert b_and!226433)

(assert (not b_next!87549))

(assert (not b_next!87553))

(assert b_and!226435)

(assert (not b_next!87555))

(check-sat)

(get-model)

(pop 1)

(declare-fun b!3304919 () Bool)

(declare-fun e!2055342 () Bool)

(declare-fun inv!17 (TokenValue!5525) Bool)

(assert (=> b!3304919 (= e!2055342 (inv!17 (value!171369 separatorToken!241)))))

(declare-fun b!3304920 () Bool)

(declare-fun res!1340414 () Bool)

(declare-fun e!2055341 () Bool)

(assert (=> b!3304920 (=> res!1340414 e!2055341)))

(assert (=> b!3304920 (= res!1340414 (not (is-IntegerValue!16577 (value!171369 separatorToken!241))))))

(assert (=> b!3304920 (= e!2055342 e!2055341)))

(declare-fun b!3304921 () Bool)

(declare-fun e!2055343 () Bool)

(assert (=> b!3304921 (= e!2055343 e!2055342)))

(declare-fun c!560684 () Bool)

(assert (=> b!3304921 (= c!560684 (is-IntegerValue!16576 (value!171369 separatorToken!241)))))

(declare-fun b!3304922 () Bool)

(declare-fun inv!16 (TokenValue!5525) Bool)

(assert (=> b!3304922 (= e!2055343 (inv!16 (value!171369 separatorToken!241)))))

(declare-fun d!925509 () Bool)

(declare-fun c!560683 () Bool)

(assert (=> d!925509 (= c!560683 (is-IntegerValue!16575 (value!171369 separatorToken!241)))))

(assert (=> d!925509 (= (inv!21 (value!171369 separatorToken!241)) e!2055343)))

(declare-fun b!3304923 () Bool)

(declare-fun inv!15 (TokenValue!5525) Bool)

(assert (=> b!3304923 (= e!2055341 (inv!15 (value!171369 separatorToken!241)))))

(assert (= (and d!925509 c!560683) b!3304922))

(assert (= (and d!925509 (not c!560683)) b!3304921))

(assert (= (and b!3304921 c!560684) b!3304919))

(assert (= (and b!3304921 (not c!560684)) b!3304920))

(assert (= (and b!3304920 (not res!1340414)) b!3304923))

(declare-fun m!3630903 () Bool)

(assert (=> b!3304919 m!3630903))

(declare-fun m!3630905 () Bool)

(assert (=> b!3304922 m!3630905))

(declare-fun m!3630907 () Bool)

(assert (=> b!3304923 m!3630907))

(assert (=> b!3304832 d!925509))

(declare-fun d!925511 () Bool)

(declare-fun res!1340420 () Bool)

(declare-fun e!2055346 () Bool)

(assert (=> d!925511 (=> (not res!1340420) (not e!2055346))))

(declare-fun isEmpty!20636 (List!36621) Bool)

(assert (=> d!925511 (= res!1340420 (not (isEmpty!20636 (originalCharacters!6009 separatorToken!241))))))

(assert (=> d!925511 (= (inv!49461 separatorToken!241) e!2055346)))

(declare-fun b!3304928 () Bool)

(declare-fun res!1340421 () Bool)

(assert (=> b!3304928 (=> (not res!1340421) (not e!2055346))))

(declare-fun dynLambda!14954 (Int TokenValue!5525) BalanceConc!21544)

(assert (=> b!3304928 (= res!1340421 (= (originalCharacters!6009 separatorToken!241) (list!13084 (dynLambda!14954 (toChars!7290 (transformation!5295 (rule!7799 separatorToken!241))) (value!171369 separatorToken!241)))))))

(declare-fun b!3304929 () Bool)

(declare-fun size!27566 (List!36621) Int)

(assert (=> b!3304929 (= e!2055346 (= (size!27564 separatorToken!241) (size!27566 (originalCharacters!6009 separatorToken!241))))))

(assert (= (and d!925511 res!1340420) b!3304928))

(assert (= (and b!3304928 res!1340421) b!3304929))

(declare-fun b_lambda!92295 () Bool)

(assert (=> (not b_lambda!92295) (not b!3304928)))

(declare-fun t!253460 () Bool)

(declare-fun tb!171455 () Bool)

(assert (=> (and b!3304844 (= (toChars!7290 (transformation!5295 (rule!7799 separatorToken!241))) (toChars!7290 (transformation!5295 (rule!7799 separatorToken!241)))) t!253460) tb!171455))

(declare-fun b!3304934 () Bool)

(declare-fun e!2055349 () Bool)

(declare-fun tp!1034813 () Bool)

(declare-fun inv!49465 (Conc!10965) Bool)

(assert (=> b!3304934 (= e!2055349 (and (inv!49465 (c!560673 (dynLambda!14954 (toChars!7290 (transformation!5295 (rule!7799 separatorToken!241))) (value!171369 separatorToken!241)))) tp!1034813))))

(declare-fun result!214256 () Bool)

(declare-fun inv!49466 (BalanceConc!21544) Bool)

(assert (=> tb!171455 (= result!214256 (and (inv!49466 (dynLambda!14954 (toChars!7290 (transformation!5295 (rule!7799 separatorToken!241))) (value!171369 separatorToken!241))) e!2055349))))

(assert (= tb!171455 b!3304934))

(declare-fun m!3630909 () Bool)

(assert (=> b!3304934 m!3630909))

(declare-fun m!3630911 () Bool)

(assert (=> tb!171455 m!3630911))

(assert (=> b!3304928 t!253460))

(declare-fun b_and!226451 () Bool)

(assert (= b_and!226429 (and (=> t!253460 result!214256) b_and!226451)))

(declare-fun tb!171457 () Bool)

(declare-fun t!253462 () Bool)

(assert (=> (and b!3304843 (= (toChars!7290 (transformation!5295 (rule!7799 (h!41918 tokens!494)))) (toChars!7290 (transformation!5295 (rule!7799 separatorToken!241)))) t!253462) tb!171457))

(declare-fun result!214260 () Bool)

(assert (= result!214260 result!214256))

(assert (=> b!3304928 t!253462))

(declare-fun b_and!226453 () Bool)

(assert (= b_and!226433 (and (=> t!253462 result!214260) b_and!226453)))

(declare-fun tb!171459 () Bool)

(declare-fun t!253464 () Bool)

(assert (=> (and b!3304839 (= (toChars!7290 (transformation!5295 (h!41919 rules!2135))) (toChars!7290 (transformation!5295 (rule!7799 separatorToken!241)))) t!253464) tb!171459))

(declare-fun result!214262 () Bool)

(assert (= result!214262 result!214256))

(assert (=> b!3304928 t!253464))

(declare-fun b_and!226455 () Bool)

(assert (= b_and!226437 (and (=> t!253464 result!214262) b_and!226455)))

(declare-fun m!3630913 () Bool)

(assert (=> d!925511 m!3630913))

(declare-fun m!3630915 () Bool)

(assert (=> b!3304928 m!3630915))

(assert (=> b!3304928 m!3630915))

(declare-fun m!3630917 () Bool)

(assert (=> b!3304928 m!3630917))

(declare-fun m!3630919 () Bool)

(assert (=> b!3304929 m!3630919))

(assert (=> start!307784 d!925511))

(declare-fun d!925513 () Bool)

(declare-fun res!1340425 () Bool)

(declare-fun e!2055352 () Bool)

(assert (=> d!925513 (=> (not res!1340425) (not e!2055352))))

(declare-fun rulesValid!1950 (LexerInterface!4884 List!36623) Bool)

(assert (=> d!925513 (= res!1340425 (rulesValid!1950 thiss!18206 rules!2135))))

(assert (=> d!925513 (= (rulesInvariant!4281 thiss!18206 rules!2135) e!2055352)))

(declare-fun b!3304937 () Bool)

(declare-datatypes ((List!36628 0))(
  ( (Nil!36504) (Cons!36504 (h!41924 String!40961) (t!253495 List!36628)) )
))
(declare-fun noDuplicateTag!1946 (LexerInterface!4884 List!36623 List!36628) Bool)

(assert (=> b!3304937 (= e!2055352 (noDuplicateTag!1946 thiss!18206 rules!2135 Nil!36504))))

(assert (= (and d!925513 res!1340425) b!3304937))

(declare-fun m!3630921 () Bool)

(assert (=> d!925513 m!3630921))

(declare-fun m!3630923 () Bool)

(assert (=> b!3304937 m!3630923))

(assert (=> b!3304833 d!925513))

(declare-fun d!925515 () Bool)

(declare-fun lt!1120247 () BalanceConc!21544)

(declare-fun list!13086 (BalanceConc!21546) List!36622)

(assert (=> d!925515 (= (list!13084 lt!1120247) (printList!1434 thiss!18206 (list!13086 lt!1120226)))))

(assert (=> d!925515 (= lt!1120247 (printTailRec!1381 thiss!18206 lt!1120226 0 (BalanceConc!21545 Empty!10965)))))

(assert (=> d!925515 (= (print!1949 thiss!18206 lt!1120226) lt!1120247)))

(declare-fun bs!548950 () Bool)

(assert (= bs!548950 d!925515))

(declare-fun m!3630925 () Bool)

(assert (=> bs!548950 m!3630925))

(declare-fun m!3630927 () Bool)

(assert (=> bs!548950 m!3630927))

(assert (=> bs!548950 m!3630927))

(declare-fun m!3630929 () Bool)

(assert (=> bs!548950 m!3630929))

(assert (=> bs!548950 m!3630817))

(assert (=> b!3304831 d!925515))

(declare-fun d!925517 () Bool)

(declare-fun list!13087 (Conc!10965) List!36621)

(assert (=> d!925517 (= (list!13084 lt!1120225) (list!13087 (c!560673 lt!1120225)))))

(declare-fun bs!548951 () Bool)

(assert (= bs!548951 d!925517))

(declare-fun m!3630931 () Bool)

(assert (=> bs!548951 m!3630931))

(assert (=> b!3304831 d!925517))

(declare-fun d!925519 () Bool)

(declare-fun lt!1120267 () BalanceConc!21544)

(declare-fun printListTailRec!596 (LexerInterface!4884 List!36622 List!36621) List!36621)

(declare-fun dropList!1113 (BalanceConc!21546 Int) List!36622)

(assert (=> d!925519 (= (list!13084 lt!1120267) (printListTailRec!596 thiss!18206 (dropList!1113 lt!1120226 0) (list!13084 (BalanceConc!21545 Empty!10965))))))

(declare-fun e!2055358 () BalanceConc!21544)

(assert (=> d!925519 (= lt!1120267 e!2055358)))

(declare-fun c!560687 () Bool)

(declare-fun size!27567 (BalanceConc!21546) Int)

(assert (=> d!925519 (= c!560687 (>= 0 (size!27567 lt!1120226)))))

(declare-fun e!2055357 () Bool)

(assert (=> d!925519 e!2055357))

(declare-fun res!1340428 () Bool)

(assert (=> d!925519 (=> (not res!1340428) (not e!2055357))))

(assert (=> d!925519 (= res!1340428 (>= 0 0))))

(assert (=> d!925519 (= (printTailRec!1381 thiss!18206 lt!1120226 0 (BalanceConc!21545 Empty!10965)) lt!1120267)))

(declare-fun b!3304944 () Bool)

(assert (=> b!3304944 (= e!2055357 (<= 0 (size!27567 lt!1120226)))))

(declare-fun b!3304945 () Bool)

(assert (=> b!3304945 (= e!2055358 (BalanceConc!21545 Empty!10965))))

(declare-fun b!3304946 () Bool)

(declare-fun ++!8833 (BalanceConc!21544 BalanceConc!21544) BalanceConc!21544)

(declare-fun apply!8383 (BalanceConc!21546 Int) Token!9956)

(assert (=> b!3304946 (= e!2055358 (printTailRec!1381 thiss!18206 lt!1120226 (+ 0 1) (++!8833 (BalanceConc!21545 Empty!10965) (charsOf!3311 (apply!8383 lt!1120226 0)))))))

(declare-fun lt!1120268 () List!36622)

(assert (=> b!3304946 (= lt!1120268 (list!13086 lt!1120226))))

(declare-datatypes ((Unit!51432 0))(
  ( (Unit!51433) )
))
(declare-fun lt!1120266 () Unit!51432)

(declare-fun lemmaDropApply!1072 (List!36622 Int) Unit!51432)

(assert (=> b!3304946 (= lt!1120266 (lemmaDropApply!1072 lt!1120268 0))))

(declare-fun head!7128 (List!36622) Token!9956)

(declare-fun drop!1904 (List!36622 Int) List!36622)

(declare-fun apply!8384 (List!36622 Int) Token!9956)

(assert (=> b!3304946 (= (head!7128 (drop!1904 lt!1120268 0)) (apply!8384 lt!1120268 0))))

(declare-fun lt!1120265 () Unit!51432)

(assert (=> b!3304946 (= lt!1120265 lt!1120266)))

(declare-fun lt!1120264 () List!36622)

(assert (=> b!3304946 (= lt!1120264 (list!13086 lt!1120226))))

(declare-fun lt!1120262 () Unit!51432)

(declare-fun lemmaDropTail!956 (List!36622 Int) Unit!51432)

(assert (=> b!3304946 (= lt!1120262 (lemmaDropTail!956 lt!1120264 0))))

(declare-fun tail!5266 (List!36622) List!36622)

(assert (=> b!3304946 (= (tail!5266 (drop!1904 lt!1120264 0)) (drop!1904 lt!1120264 (+ 0 1)))))

(declare-fun lt!1120263 () Unit!51432)

(assert (=> b!3304946 (= lt!1120263 lt!1120262)))

(assert (= (and d!925519 res!1340428) b!3304944))

(assert (= (and d!925519 c!560687) b!3304945))

(assert (= (and d!925519 (not c!560687)) b!3304946))

(declare-fun m!3630933 () Bool)

(assert (=> d!925519 m!3630933))

(declare-fun m!3630935 () Bool)

(assert (=> d!925519 m!3630935))

(declare-fun m!3630937 () Bool)

(assert (=> d!925519 m!3630937))

(declare-fun m!3630939 () Bool)

(assert (=> d!925519 m!3630939))

(declare-fun m!3630941 () Bool)

(assert (=> d!925519 m!3630941))

(assert (=> d!925519 m!3630939))

(assert (=> d!925519 m!3630937))

(assert (=> b!3304944 m!3630935))

(declare-fun m!3630943 () Bool)

(assert (=> b!3304946 m!3630943))

(declare-fun m!3630945 () Bool)

(assert (=> b!3304946 m!3630945))

(assert (=> b!3304946 m!3630927))

(declare-fun m!3630947 () Bool)

(assert (=> b!3304946 m!3630947))

(declare-fun m!3630949 () Bool)

(assert (=> b!3304946 m!3630949))

(declare-fun m!3630951 () Bool)

(assert (=> b!3304946 m!3630951))

(declare-fun m!3630953 () Bool)

(assert (=> b!3304946 m!3630953))

(assert (=> b!3304946 m!3630953))

(declare-fun m!3630955 () Bool)

(assert (=> b!3304946 m!3630955))

(assert (=> b!3304946 m!3630955))

(declare-fun m!3630957 () Bool)

(assert (=> b!3304946 m!3630957))

(assert (=> b!3304946 m!3630943))

(declare-fun m!3630959 () Bool)

(assert (=> b!3304946 m!3630959))

(assert (=> b!3304946 m!3630951))

(declare-fun m!3630961 () Bool)

(assert (=> b!3304946 m!3630961))

(declare-fun m!3630963 () Bool)

(assert (=> b!3304946 m!3630963))

(assert (=> b!3304946 m!3630961))

(declare-fun m!3630965 () Bool)

(assert (=> b!3304946 m!3630965))

(assert (=> b!3304831 d!925519))

(declare-fun d!925523 () Bool)

(declare-fun e!2055361 () Bool)

(assert (=> d!925523 e!2055361))

(declare-fun res!1340431 () Bool)

(assert (=> d!925523 (=> (not res!1340431) (not e!2055361))))

(declare-fun lt!1120271 () BalanceConc!21546)

(assert (=> d!925523 (= res!1340431 (= (list!13086 lt!1120271) (Cons!36498 (h!41918 tokens!494) Nil!36498)))))

(declare-fun singleton!1029 (Token!9956) BalanceConc!21546)

(assert (=> d!925523 (= lt!1120271 (singleton!1029 (h!41918 tokens!494)))))

(assert (=> d!925523 (= (singletonSeq!2391 (h!41918 tokens!494)) lt!1120271)))

(declare-fun b!3304949 () Bool)

(declare-fun isBalanced!3278 (Conc!10966) Bool)

(assert (=> b!3304949 (= e!2055361 (isBalanced!3278 (c!560674 lt!1120271)))))

(assert (= (and d!925523 res!1340431) b!3304949))

(declare-fun m!3630967 () Bool)

(assert (=> d!925523 m!3630967))

(declare-fun m!3630969 () Bool)

(assert (=> d!925523 m!3630969))

(declare-fun m!3630971 () Bool)

(assert (=> b!3304949 m!3630971))

(assert (=> b!3304831 d!925523))

(declare-fun d!925525 () Bool)

(declare-fun c!560690 () Bool)

(assert (=> d!925525 (= c!560690 (is-Cons!36498 (Cons!36498 (h!41918 tokens!494) Nil!36498)))))

(declare-fun e!2055364 () List!36621)

(assert (=> d!925525 (= (printList!1434 thiss!18206 (Cons!36498 (h!41918 tokens!494) Nil!36498)) e!2055364)))

(declare-fun b!3304954 () Bool)

(declare-fun ++!8834 (List!36621 List!36621) List!36621)

(assert (=> b!3304954 (= e!2055364 (++!8834 (list!13084 (charsOf!3311 (h!41918 (Cons!36498 (h!41918 tokens!494) Nil!36498)))) (printList!1434 thiss!18206 (t!253453 (Cons!36498 (h!41918 tokens!494) Nil!36498)))))))

(declare-fun b!3304955 () Bool)

(assert (=> b!3304955 (= e!2055364 Nil!36497)))

(assert (= (and d!925525 c!560690) b!3304954))

(assert (= (and d!925525 (not c!560690)) b!3304955))

(declare-fun m!3630973 () Bool)

(assert (=> b!3304954 m!3630973))

(assert (=> b!3304954 m!3630973))

(declare-fun m!3630975 () Bool)

(assert (=> b!3304954 m!3630975))

(declare-fun m!3630977 () Bool)

(assert (=> b!3304954 m!3630977))

(assert (=> b!3304954 m!3630975))

(assert (=> b!3304954 m!3630977))

(declare-fun m!3630979 () Bool)

(assert (=> b!3304954 m!3630979))

(assert (=> b!3304831 d!925525))

(declare-fun bs!548954 () Bool)

(declare-fun d!925527 () Bool)

(assert (= bs!548954 (and d!925527 b!3304830)))

(declare-fun lambda!118998 () Int)

(assert (=> bs!548954 (not (= lambda!118998 lambda!118990))))

(declare-fun b!3305037 () Bool)

(declare-fun e!2055423 () Bool)

(assert (=> b!3305037 (= e!2055423 true)))

(declare-fun b!3305036 () Bool)

(declare-fun e!2055422 () Bool)

(assert (=> b!3305036 (= e!2055422 e!2055423)))

(declare-fun b!3305035 () Bool)

(declare-fun e!2055421 () Bool)

(assert (=> b!3305035 (= e!2055421 e!2055422)))

(assert (=> d!925527 e!2055421))

(assert (= b!3305036 b!3305037))

(assert (= b!3305035 b!3305036))

(assert (= (and d!925527 (is-Cons!36499 rules!2135)) b!3305035))

(declare-fun order!18949 () Int)

(declare-fun order!18947 () Int)

(declare-fun dynLambda!14955 (Int Int) Int)

(declare-fun dynLambda!14956 (Int Int) Int)

(assert (=> b!3305037 (< (dynLambda!14955 order!18947 (toValue!7431 (transformation!5295 (h!41919 rules!2135)))) (dynLambda!14956 order!18949 lambda!118998))))

(declare-fun order!18951 () Int)

(declare-fun dynLambda!14957 (Int Int) Int)

(assert (=> b!3305037 (< (dynLambda!14957 order!18951 (toChars!7290 (transformation!5295 (h!41919 rules!2135)))) (dynLambda!14956 order!18949 lambda!118998))))

(assert (=> d!925527 true))

(declare-fun e!2055414 () Bool)

(assert (=> d!925527 e!2055414))

(declare-fun res!1340473 () Bool)

(assert (=> d!925527 (=> (not res!1340473) (not e!2055414))))

(declare-fun lt!1120309 () Bool)

(assert (=> d!925527 (= res!1340473 (= lt!1120309 (forall!7563 (list!13086 (seqFromList!3647 tokens!494)) lambda!118998)))))

(declare-fun forall!7565 (BalanceConc!21546 Int) Bool)

(assert (=> d!925527 (= lt!1120309 (forall!7565 (seqFromList!3647 tokens!494) lambda!118998))))

(assert (=> d!925527 (not (isEmpty!20634 rules!2135))))

(assert (=> d!925527 (= (rulesProduceEachTokenIndividually!1335 thiss!18206 rules!2135 (seqFromList!3647 tokens!494)) lt!1120309)))

(declare-fun b!3305026 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!1762 (LexerInterface!4884 List!36623 List!36622) Bool)

(assert (=> b!3305026 (= e!2055414 (= lt!1120309 (rulesProduceEachTokenIndividuallyList!1762 thiss!18206 rules!2135 (list!13086 (seqFromList!3647 tokens!494)))))))

(assert (= (and d!925527 res!1340473) b!3305026))

(assert (=> d!925527 m!3630827))

(declare-fun m!3631101 () Bool)

(assert (=> d!925527 m!3631101))

(assert (=> d!925527 m!3631101))

(declare-fun m!3631103 () Bool)

(assert (=> d!925527 m!3631103))

(assert (=> d!925527 m!3630827))

(declare-fun m!3631105 () Bool)

(assert (=> d!925527 m!3631105))

(assert (=> d!925527 m!3630821))

(assert (=> b!3305026 m!3630827))

(assert (=> b!3305026 m!3631101))

(assert (=> b!3305026 m!3631101))

(declare-fun m!3631107 () Bool)

(assert (=> b!3305026 m!3631107))

(assert (=> b!3304842 d!925527))

(declare-fun d!925555 () Bool)

(declare-fun fromListB!1601 (List!36622) BalanceConc!21546)

(assert (=> d!925555 (= (seqFromList!3647 tokens!494) (fromListB!1601 tokens!494))))

(declare-fun bs!548955 () Bool)

(assert (= bs!548955 d!925555))

(declare-fun m!3631109 () Bool)

(assert (=> bs!548955 m!3631109))

(assert (=> b!3304842 d!925555))

(declare-fun d!925557 () Bool)

(assert (=> d!925557 (= (inv!49458 (tag!5841 (h!41919 rules!2135))) (= (mod (str.len (value!171368 (tag!5841 (h!41919 rules!2135)))) 2) 0))))

(assert (=> b!3304835 d!925557))

(declare-fun d!925559 () Bool)

(declare-fun res!1340476 () Bool)

(declare-fun e!2055426 () Bool)

(assert (=> d!925559 (=> (not res!1340476) (not e!2055426))))

(declare-fun semiInverseModEq!2190 (Int Int) Bool)

(assert (=> d!925559 (= res!1340476 (semiInverseModEq!2190 (toChars!7290 (transformation!5295 (h!41919 rules!2135))) (toValue!7431 (transformation!5295 (h!41919 rules!2135)))))))

(assert (=> d!925559 (= (inv!49462 (transformation!5295 (h!41919 rules!2135))) e!2055426)))

(declare-fun b!3305042 () Bool)

(declare-fun equivClasses!2089 (Int Int) Bool)

(assert (=> b!3305042 (= e!2055426 (equivClasses!2089 (toChars!7290 (transformation!5295 (h!41919 rules!2135))) (toValue!7431 (transformation!5295 (h!41919 rules!2135)))))))

(assert (= (and d!925559 res!1340476) b!3305042))

(declare-fun m!3631111 () Bool)

(assert (=> d!925559 m!3631111))

(declare-fun m!3631113 () Bool)

(assert (=> b!3305042 m!3631113))

(assert (=> b!3304835 d!925559))

(declare-fun d!925561 () Bool)

(declare-fun res!1340481 () Bool)

(declare-fun e!2055431 () Bool)

(assert (=> d!925561 (=> res!1340481 e!2055431)))

(assert (=> d!925561 (= res!1340481 (not (is-Cons!36499 rules!2135)))))

(assert (=> d!925561 (= (sepAndNonSepRulesDisjointChars!1489 rules!2135 rules!2135) e!2055431)))

(declare-fun b!3305047 () Bool)

(declare-fun e!2055432 () Bool)

(assert (=> b!3305047 (= e!2055431 e!2055432)))

(declare-fun res!1340482 () Bool)

(assert (=> b!3305047 (=> (not res!1340482) (not e!2055432))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!626 (Rule!10390 List!36623) Bool)

(assert (=> b!3305047 (= res!1340482 (ruleDisjointCharsFromAllFromOtherType!626 (h!41919 rules!2135) rules!2135))))

(declare-fun b!3305048 () Bool)

(assert (=> b!3305048 (= e!2055432 (sepAndNonSepRulesDisjointChars!1489 rules!2135 (t!253454 rules!2135)))))

(assert (= (and d!925561 (not res!1340481)) b!3305047))

(assert (= (and b!3305047 res!1340482) b!3305048))

(declare-fun m!3631115 () Bool)

(assert (=> b!3305047 m!3631115))

(declare-fun m!3631117 () Bool)

(assert (=> b!3305048 m!3631117))

(assert (=> b!3304834 d!925561))

(declare-fun d!925563 () Bool)

(assert (=> d!925563 (= (inv!49458 (tag!5841 (rule!7799 separatorToken!241))) (= (mod (str.len (value!171368 (tag!5841 (rule!7799 separatorToken!241)))) 2) 0))))

(assert (=> b!3304845 d!925563))

(declare-fun d!925565 () Bool)

(declare-fun res!1340483 () Bool)

(declare-fun e!2055433 () Bool)

(assert (=> d!925565 (=> (not res!1340483) (not e!2055433))))

(assert (=> d!925565 (= res!1340483 (semiInverseModEq!2190 (toChars!7290 (transformation!5295 (rule!7799 separatorToken!241))) (toValue!7431 (transformation!5295 (rule!7799 separatorToken!241)))))))

(assert (=> d!925565 (= (inv!49462 (transformation!5295 (rule!7799 separatorToken!241))) e!2055433)))

(declare-fun b!3305049 () Bool)

(assert (=> b!3305049 (= e!2055433 (equivClasses!2089 (toChars!7290 (transformation!5295 (rule!7799 separatorToken!241))) (toValue!7431 (transformation!5295 (rule!7799 separatorToken!241)))))))

(assert (= (and d!925565 res!1340483) b!3305049))

(declare-fun m!3631119 () Bool)

(assert (=> d!925565 m!3631119))

(declare-fun m!3631121 () Bool)

(assert (=> b!3305049 m!3631121))

(assert (=> b!3304845 d!925565))

(declare-fun d!925567 () Bool)

(declare-fun lt!1120317 () Bool)

(declare-fun e!2055439 () Bool)

(assert (=> d!925567 (= lt!1120317 e!2055439)))

(declare-fun res!1340490 () Bool)

(assert (=> d!925567 (=> (not res!1340490) (not e!2055439))))

(declare-datatypes ((tuple2!35986 0))(
  ( (tuple2!35987 (_1!21127 BalanceConc!21546) (_2!21127 BalanceConc!21544)) )
))
(declare-fun lex!2210 (LexerInterface!4884 List!36623 BalanceConc!21544) tuple2!35986)

(assert (=> d!925567 (= res!1340490 (= (list!13086 (_1!21127 (lex!2210 thiss!18206 rules!2135 (print!1949 thiss!18206 (singletonSeq!2391 separatorToken!241))))) (list!13086 (singletonSeq!2391 separatorToken!241))))))

(declare-fun e!2055438 () Bool)

(assert (=> d!925567 (= lt!1120317 e!2055438)))

(declare-fun res!1340491 () Bool)

(assert (=> d!925567 (=> (not res!1340491) (not e!2055438))))

(declare-fun lt!1120316 () tuple2!35986)

(assert (=> d!925567 (= res!1340491 (= (size!27567 (_1!21127 lt!1120316)) 1))))

(assert (=> d!925567 (= lt!1120316 (lex!2210 thiss!18206 rules!2135 (print!1949 thiss!18206 (singletonSeq!2391 separatorToken!241))))))

(assert (=> d!925567 (not (isEmpty!20634 rules!2135))))

(assert (=> d!925567 (= (rulesProduceIndividualToken!2376 thiss!18206 rules!2135 separatorToken!241) lt!1120317)))

(declare-fun b!3305056 () Bool)

(declare-fun res!1340492 () Bool)

(assert (=> b!3305056 (=> (not res!1340492) (not e!2055438))))

(assert (=> b!3305056 (= res!1340492 (= (apply!8383 (_1!21127 lt!1120316) 0) separatorToken!241))))

(declare-fun b!3305057 () Bool)

(declare-fun isEmpty!20637 (BalanceConc!21544) Bool)

(assert (=> b!3305057 (= e!2055438 (isEmpty!20637 (_2!21127 lt!1120316)))))

(declare-fun b!3305058 () Bool)

(assert (=> b!3305058 (= e!2055439 (isEmpty!20637 (_2!21127 (lex!2210 thiss!18206 rules!2135 (print!1949 thiss!18206 (singletonSeq!2391 separatorToken!241))))))))

(assert (= (and d!925567 res!1340491) b!3305056))

(assert (= (and b!3305056 res!1340492) b!3305057))

(assert (= (and d!925567 res!1340490) b!3305058))

(declare-fun m!3631123 () Bool)

(assert (=> d!925567 m!3631123))

(assert (=> d!925567 m!3631123))

(declare-fun m!3631125 () Bool)

(assert (=> d!925567 m!3631125))

(assert (=> d!925567 m!3631123))

(declare-fun m!3631127 () Bool)

(assert (=> d!925567 m!3631127))

(declare-fun m!3631129 () Bool)

(assert (=> d!925567 m!3631129))

(assert (=> d!925567 m!3631127))

(declare-fun m!3631131 () Bool)

(assert (=> d!925567 m!3631131))

(assert (=> d!925567 m!3630821))

(declare-fun m!3631133 () Bool)

(assert (=> d!925567 m!3631133))

(declare-fun m!3631135 () Bool)

(assert (=> b!3305056 m!3631135))

(declare-fun m!3631137 () Bool)

(assert (=> b!3305057 m!3631137))

(assert (=> b!3305058 m!3631123))

(assert (=> b!3305058 m!3631123))

(assert (=> b!3305058 m!3631127))

(assert (=> b!3305058 m!3631127))

(assert (=> b!3305058 m!3631131))

(declare-fun m!3631139 () Bool)

(assert (=> b!3305058 m!3631139))

(assert (=> b!3304827 d!925567))

(declare-fun d!925569 () Bool)

(declare-fun res!1340493 () Bool)

(declare-fun e!2055440 () Bool)

(assert (=> d!925569 (=> (not res!1340493) (not e!2055440))))

(assert (=> d!925569 (= res!1340493 (not (isEmpty!20636 (originalCharacters!6009 (h!41918 tokens!494)))))))

(assert (=> d!925569 (= (inv!49461 (h!41918 tokens!494)) e!2055440)))

(declare-fun b!3305059 () Bool)

(declare-fun res!1340494 () Bool)

(assert (=> b!3305059 (=> (not res!1340494) (not e!2055440))))

(assert (=> b!3305059 (= res!1340494 (= (originalCharacters!6009 (h!41918 tokens!494)) (list!13084 (dynLambda!14954 (toChars!7290 (transformation!5295 (rule!7799 (h!41918 tokens!494)))) (value!171369 (h!41918 tokens!494))))))))

(declare-fun b!3305060 () Bool)

(assert (=> b!3305060 (= e!2055440 (= (size!27564 (h!41918 tokens!494)) (size!27566 (originalCharacters!6009 (h!41918 tokens!494)))))))

(assert (= (and d!925569 res!1340493) b!3305059))

(assert (= (and b!3305059 res!1340494) b!3305060))

(declare-fun b_lambda!92299 () Bool)

(assert (=> (not b_lambda!92299) (not b!3305059)))

(declare-fun tb!171467 () Bool)

(declare-fun t!253482 () Bool)

(assert (=> (and b!3304844 (= (toChars!7290 (transformation!5295 (rule!7799 separatorToken!241))) (toChars!7290 (transformation!5295 (rule!7799 (h!41918 tokens!494))))) t!253482) tb!171467))

(declare-fun b!3305061 () Bool)

(declare-fun e!2055441 () Bool)

(declare-fun tp!1034817 () Bool)

(assert (=> b!3305061 (= e!2055441 (and (inv!49465 (c!560673 (dynLambda!14954 (toChars!7290 (transformation!5295 (rule!7799 (h!41918 tokens!494)))) (value!171369 (h!41918 tokens!494))))) tp!1034817))))

(declare-fun result!214272 () Bool)

(assert (=> tb!171467 (= result!214272 (and (inv!49466 (dynLambda!14954 (toChars!7290 (transformation!5295 (rule!7799 (h!41918 tokens!494)))) (value!171369 (h!41918 tokens!494)))) e!2055441))))

(assert (= tb!171467 b!3305061))

(declare-fun m!3631141 () Bool)

(assert (=> b!3305061 m!3631141))

(declare-fun m!3631143 () Bool)

(assert (=> tb!171467 m!3631143))

(assert (=> b!3305059 t!253482))

(declare-fun b_and!226463 () Bool)

(assert (= b_and!226451 (and (=> t!253482 result!214272) b_and!226463)))

(declare-fun t!253484 () Bool)

(declare-fun tb!171469 () Bool)

(assert (=> (and b!3304843 (= (toChars!7290 (transformation!5295 (rule!7799 (h!41918 tokens!494)))) (toChars!7290 (transformation!5295 (rule!7799 (h!41918 tokens!494))))) t!253484) tb!171469))

(declare-fun result!214274 () Bool)

(assert (= result!214274 result!214272))

(assert (=> b!3305059 t!253484))

(declare-fun b_and!226465 () Bool)

(assert (= b_and!226453 (and (=> t!253484 result!214274) b_and!226465)))

(declare-fun t!253486 () Bool)

(declare-fun tb!171471 () Bool)

(assert (=> (and b!3304839 (= (toChars!7290 (transformation!5295 (h!41919 rules!2135))) (toChars!7290 (transformation!5295 (rule!7799 (h!41918 tokens!494))))) t!253486) tb!171471))

(declare-fun result!214276 () Bool)

(assert (= result!214276 result!214272))

(assert (=> b!3305059 t!253486))

(declare-fun b_and!226467 () Bool)

(assert (= b_and!226455 (and (=> t!253486 result!214276) b_and!226467)))

(declare-fun m!3631145 () Bool)

(assert (=> d!925569 m!3631145))

(declare-fun m!3631147 () Bool)

(assert (=> b!3305059 m!3631147))

(assert (=> b!3305059 m!3631147))

(declare-fun m!3631149 () Bool)

(assert (=> b!3305059 m!3631149))

(declare-fun m!3631151 () Bool)

(assert (=> b!3305060 m!3631151))

(assert (=> b!3304838 d!925569))

(declare-fun b!3305062 () Bool)

(declare-fun e!2055443 () Bool)

(assert (=> b!3305062 (= e!2055443 (inv!17 (value!171369 (h!41918 tokens!494))))))

(declare-fun b!3305063 () Bool)

(declare-fun res!1340495 () Bool)

(declare-fun e!2055442 () Bool)

(assert (=> b!3305063 (=> res!1340495 e!2055442)))

(assert (=> b!3305063 (= res!1340495 (not (is-IntegerValue!16577 (value!171369 (h!41918 tokens!494)))))))

(assert (=> b!3305063 (= e!2055443 e!2055442)))

(declare-fun b!3305064 () Bool)

(declare-fun e!2055444 () Bool)

(assert (=> b!3305064 (= e!2055444 e!2055443)))

(declare-fun c!560704 () Bool)

(assert (=> b!3305064 (= c!560704 (is-IntegerValue!16576 (value!171369 (h!41918 tokens!494))))))

(declare-fun b!3305065 () Bool)

(assert (=> b!3305065 (= e!2055444 (inv!16 (value!171369 (h!41918 tokens!494))))))

(declare-fun d!925571 () Bool)

(declare-fun c!560703 () Bool)

(assert (=> d!925571 (= c!560703 (is-IntegerValue!16575 (value!171369 (h!41918 tokens!494))))))

(assert (=> d!925571 (= (inv!21 (value!171369 (h!41918 tokens!494))) e!2055444)))

(declare-fun b!3305066 () Bool)

(assert (=> b!3305066 (= e!2055442 (inv!15 (value!171369 (h!41918 tokens!494))))))

(assert (= (and d!925571 c!560703) b!3305065))

(assert (= (and d!925571 (not c!560703)) b!3305064))

(assert (= (and b!3305064 c!560704) b!3305062))

(assert (= (and b!3305064 (not c!560704)) b!3305063))

(assert (= (and b!3305063 (not res!1340495)) b!3305066))

(declare-fun m!3631153 () Bool)

(assert (=> b!3305062 m!3631153))

(declare-fun m!3631155 () Bool)

(assert (=> b!3305065 m!3631155))

(declare-fun m!3631157 () Bool)

(assert (=> b!3305066 m!3631157))

(assert (=> b!3304826 d!925571))

(declare-fun d!925573 () Bool)

(assert (=> d!925573 (= (inv!49458 (tag!5841 (rule!7799 (h!41918 tokens!494)))) (= (mod (str.len (value!171368 (tag!5841 (rule!7799 (h!41918 tokens!494))))) 2) 0))))

(assert (=> b!3304837 d!925573))

(declare-fun d!925575 () Bool)

(declare-fun res!1340496 () Bool)

(declare-fun e!2055445 () Bool)

(assert (=> d!925575 (=> (not res!1340496) (not e!2055445))))

(assert (=> d!925575 (= res!1340496 (semiInverseModEq!2190 (toChars!7290 (transformation!5295 (rule!7799 (h!41918 tokens!494)))) (toValue!7431 (transformation!5295 (rule!7799 (h!41918 tokens!494))))))))

(assert (=> d!925575 (= (inv!49462 (transformation!5295 (rule!7799 (h!41918 tokens!494)))) e!2055445)))

(declare-fun b!3305067 () Bool)

(assert (=> b!3305067 (= e!2055445 (equivClasses!2089 (toChars!7290 (transformation!5295 (rule!7799 (h!41918 tokens!494)))) (toValue!7431 (transformation!5295 (rule!7799 (h!41918 tokens!494))))))))

(assert (= (and d!925575 res!1340496) b!3305067))

(declare-fun m!3631159 () Bool)

(assert (=> d!925575 m!3631159))

(declare-fun m!3631161 () Bool)

(assert (=> b!3305067 m!3631161))

(assert (=> b!3304837 d!925575))

(declare-fun d!925577 () Bool)

(declare-fun res!1340501 () Bool)

(declare-fun e!2055450 () Bool)

(assert (=> d!925577 (=> res!1340501 e!2055450)))

(assert (=> d!925577 (= res!1340501 (is-Nil!36498 tokens!494))))

(assert (=> d!925577 (= (forall!7563 tokens!494 lambda!118990) e!2055450)))

(declare-fun b!3305072 () Bool)

(declare-fun e!2055451 () Bool)

(assert (=> b!3305072 (= e!2055450 e!2055451)))

(declare-fun res!1340502 () Bool)

(assert (=> b!3305072 (=> (not res!1340502) (not e!2055451))))

(declare-fun dynLambda!14958 (Int Token!9956) Bool)

(assert (=> b!3305072 (= res!1340502 (dynLambda!14958 lambda!118990 (h!41918 tokens!494)))))

(declare-fun b!3305073 () Bool)

(assert (=> b!3305073 (= e!2055451 (forall!7563 (t!253453 tokens!494) lambda!118990))))

(assert (= (and d!925577 (not res!1340501)) b!3305072))

(assert (= (and b!3305072 res!1340502) b!3305073))

(declare-fun b_lambda!92301 () Bool)

(assert (=> (not b_lambda!92301) (not b!3305072)))

(declare-fun m!3631163 () Bool)

(assert (=> b!3305072 m!3631163))

(declare-fun m!3631165 () Bool)

(assert (=> b!3305073 m!3631165))

(assert (=> b!3304830 d!925577))

(declare-fun d!925579 () Bool)

(declare-fun lt!1120319 () Bool)

(declare-fun e!2055453 () Bool)

(assert (=> d!925579 (= lt!1120319 e!2055453)))

(declare-fun res!1340503 () Bool)

(assert (=> d!925579 (=> (not res!1340503) (not e!2055453))))

(assert (=> d!925579 (= res!1340503 (= (list!13086 (_1!21127 (lex!2210 thiss!18206 rules!2135 (print!1949 thiss!18206 (singletonSeq!2391 (h!41918 tokens!494)))))) (list!13086 (singletonSeq!2391 (h!41918 tokens!494)))))))

(declare-fun e!2055452 () Bool)

(assert (=> d!925579 (= lt!1120319 e!2055452)))

(declare-fun res!1340504 () Bool)

(assert (=> d!925579 (=> (not res!1340504) (not e!2055452))))

(declare-fun lt!1120318 () tuple2!35986)

(assert (=> d!925579 (= res!1340504 (= (size!27567 (_1!21127 lt!1120318)) 1))))

(assert (=> d!925579 (= lt!1120318 (lex!2210 thiss!18206 rules!2135 (print!1949 thiss!18206 (singletonSeq!2391 (h!41918 tokens!494)))))))

(assert (=> d!925579 (not (isEmpty!20634 rules!2135))))

(assert (=> d!925579 (= (rulesProduceIndividualToken!2376 thiss!18206 rules!2135 (h!41918 tokens!494)) lt!1120319)))

(declare-fun b!3305074 () Bool)

(declare-fun res!1340505 () Bool)

(assert (=> b!3305074 (=> (not res!1340505) (not e!2055452))))

(assert (=> b!3305074 (= res!1340505 (= (apply!8383 (_1!21127 lt!1120318) 0) (h!41918 tokens!494)))))

(declare-fun b!3305075 () Bool)

(assert (=> b!3305075 (= e!2055452 (isEmpty!20637 (_2!21127 lt!1120318)))))

(declare-fun b!3305076 () Bool)

(assert (=> b!3305076 (= e!2055453 (isEmpty!20637 (_2!21127 (lex!2210 thiss!18206 rules!2135 (print!1949 thiss!18206 (singletonSeq!2391 (h!41918 tokens!494)))))))))

(assert (= (and d!925579 res!1340504) b!3305074))

(assert (= (and b!3305074 res!1340505) b!3305075))

(assert (= (and d!925579 res!1340503) b!3305076))

(assert (=> d!925579 m!3630813))

(assert (=> d!925579 m!3630813))

(declare-fun m!3631167 () Bool)

(assert (=> d!925579 m!3631167))

(assert (=> d!925579 m!3630813))

(declare-fun m!3631169 () Bool)

(assert (=> d!925579 m!3631169))

(declare-fun m!3631171 () Bool)

(assert (=> d!925579 m!3631171))

(assert (=> d!925579 m!3631169))

(declare-fun m!3631173 () Bool)

(assert (=> d!925579 m!3631173))

(assert (=> d!925579 m!3630821))

(declare-fun m!3631175 () Bool)

(assert (=> d!925579 m!3631175))

(declare-fun m!3631177 () Bool)

(assert (=> b!3305074 m!3631177))

(declare-fun m!3631179 () Bool)

(assert (=> b!3305075 m!3631179))

(assert (=> b!3305076 m!3630813))

(assert (=> b!3305076 m!3630813))

(assert (=> b!3305076 m!3631169))

(assert (=> b!3305076 m!3631169))

(assert (=> b!3305076 m!3631173))

(declare-fun m!3631181 () Bool)

(assert (=> b!3305076 m!3631181))

(assert (=> b!3304841 d!925579))

(declare-fun d!925581 () Bool)

(assert (=> d!925581 (= (isEmpty!20634 rules!2135) (is-Nil!36499 rules!2135))))

(assert (=> b!3304828 d!925581))

(declare-fun d!925583 () Bool)

(assert (=> d!925583 (= (list!13084 (charsOf!3311 (h!41918 tokens!494))) (list!13087 (c!560673 (charsOf!3311 (h!41918 tokens!494)))))))

(declare-fun bs!548956 () Bool)

(assert (= bs!548956 d!925583))

(declare-fun m!3631183 () Bool)

(assert (=> bs!548956 m!3631183))

(assert (=> b!3304829 d!925583))

(declare-fun d!925585 () Bool)

(declare-fun lt!1120322 () BalanceConc!21544)

(assert (=> d!925585 (= (list!13084 lt!1120322) (originalCharacters!6009 (h!41918 tokens!494)))))

(assert (=> d!925585 (= lt!1120322 (dynLambda!14954 (toChars!7290 (transformation!5295 (rule!7799 (h!41918 tokens!494)))) (value!171369 (h!41918 tokens!494))))))

(assert (=> d!925585 (= (charsOf!3311 (h!41918 tokens!494)) lt!1120322)))

(declare-fun b_lambda!92303 () Bool)

(assert (=> (not b_lambda!92303) (not d!925585)))

(assert (=> d!925585 t!253482))

(declare-fun b_and!226469 () Bool)

(assert (= b_and!226463 (and (=> t!253482 result!214272) b_and!226469)))

(assert (=> d!925585 t!253484))

(declare-fun b_and!226471 () Bool)

(assert (= b_and!226465 (and (=> t!253484 result!214274) b_and!226471)))

(assert (=> d!925585 t!253486))

(declare-fun b_and!226473 () Bool)

(assert (= b_and!226467 (and (=> t!253486 result!214276) b_and!226473)))

(declare-fun m!3631185 () Bool)

(assert (=> d!925585 m!3631185))

(assert (=> d!925585 m!3631147))

(assert (=> b!3304829 d!925585))

(declare-fun b!3305081 () Bool)

(declare-fun e!2055456 () Bool)

(declare-fun tp_is_empty!17367 () Bool)

(declare-fun tp!1034820 () Bool)

(assert (=> b!3305081 (= e!2055456 (and tp_is_empty!17367 tp!1034820))))

(assert (=> b!3304832 (= tp!1034771 e!2055456)))

(assert (= (and b!3304832 (is-Cons!36497 (originalCharacters!6009 separatorToken!241))) b!3305081))

(declare-fun b!3305095 () Bool)

(declare-fun b_free!86869 () Bool)

(declare-fun b_next!87573 () Bool)

(assert (=> b!3305095 (= b_free!86869 (not b_next!87573))))

(declare-fun tp!1034834 () Bool)

(declare-fun b_and!226475 () Bool)

(assert (=> b!3305095 (= tp!1034834 b_and!226475)))

(declare-fun b_free!86871 () Bool)

(declare-fun b_next!87575 () Bool)

(assert (=> b!3305095 (= b_free!86871 (not b_next!87575))))

(declare-fun tb!171473 () Bool)

(declare-fun t!253488 () Bool)

(assert (=> (and b!3305095 (= (toChars!7290 (transformation!5295 (rule!7799 (h!41918 (t!253453 tokens!494))))) (toChars!7290 (transformation!5295 (rule!7799 separatorToken!241)))) t!253488) tb!171473))

(declare-fun result!214282 () Bool)

(assert (= result!214282 result!214256))

(assert (=> b!3304928 t!253488))

(declare-fun t!253490 () Bool)

(declare-fun tb!171475 () Bool)

(assert (=> (and b!3305095 (= (toChars!7290 (transformation!5295 (rule!7799 (h!41918 (t!253453 tokens!494))))) (toChars!7290 (transformation!5295 (rule!7799 (h!41918 tokens!494))))) t!253490) tb!171475))

(declare-fun result!214284 () Bool)

(assert (= result!214284 result!214272))

(assert (=> b!3305059 t!253490))

(assert (=> d!925585 t!253490))

(declare-fun tp!1034832 () Bool)

(declare-fun b_and!226477 () Bool)

(assert (=> b!3305095 (= tp!1034832 (and (=> t!253488 result!214282) (=> t!253490 result!214284) b_and!226477))))

(declare-fun e!2055473 () Bool)

(assert (=> b!3305095 (= e!2055473 (and tp!1034834 tp!1034832))))

(declare-fun e!2055472 () Bool)

(declare-fun tp!1034831 () Bool)

(declare-fun b!3305092 () Bool)

(declare-fun e!2055474 () Bool)

(assert (=> b!3305092 (= e!2055472 (and (inv!49461 (h!41918 (t!253453 tokens!494))) e!2055474 tp!1034831))))

(declare-fun e!2055471 () Bool)

(declare-fun tp!1034835 () Bool)

(declare-fun b!3305093 () Bool)

(assert (=> b!3305093 (= e!2055474 (and (inv!21 (value!171369 (h!41918 (t!253453 tokens!494)))) e!2055471 tp!1034835))))

(assert (=> b!3304838 (= tp!1034760 e!2055472)))

(declare-fun b!3305094 () Bool)

(declare-fun tp!1034833 () Bool)

(assert (=> b!3305094 (= e!2055471 (and tp!1034833 (inv!49458 (tag!5841 (rule!7799 (h!41918 (t!253453 tokens!494))))) (inv!49462 (transformation!5295 (rule!7799 (h!41918 (t!253453 tokens!494))))) e!2055473))))

(assert (= b!3305094 b!3305095))

(assert (= b!3305093 b!3305094))

(assert (= b!3305092 b!3305093))

(assert (= (and b!3304838 (is-Cons!36498 (t!253453 tokens!494))) b!3305092))

(declare-fun m!3631187 () Bool)

(assert (=> b!3305092 m!3631187))

(declare-fun m!3631189 () Bool)

(assert (=> b!3305093 m!3631189))

(declare-fun m!3631191 () Bool)

(assert (=> b!3305094 m!3631191))

(declare-fun m!3631193 () Bool)

(assert (=> b!3305094 m!3631193))

(declare-fun b!3305106 () Bool)

(declare-fun b_free!86873 () Bool)

(declare-fun b_next!87577 () Bool)

(assert (=> b!3305106 (= b_free!86873 (not b_next!87577))))

(declare-fun tp!1034847 () Bool)

(declare-fun b_and!226479 () Bool)

(assert (=> b!3305106 (= tp!1034847 b_and!226479)))

(declare-fun b_free!86875 () Bool)

(declare-fun b_next!87579 () Bool)

(assert (=> b!3305106 (= b_free!86875 (not b_next!87579))))

(declare-fun tb!171477 () Bool)

(declare-fun t!253492 () Bool)

(assert (=> (and b!3305106 (= (toChars!7290 (transformation!5295 (h!41919 (t!253454 rules!2135)))) (toChars!7290 (transformation!5295 (rule!7799 separatorToken!241)))) t!253492) tb!171477))

(declare-fun result!214288 () Bool)

(assert (= result!214288 result!214256))

(assert (=> b!3304928 t!253492))

(declare-fun tb!171479 () Bool)

(declare-fun t!253494 () Bool)

(assert (=> (and b!3305106 (= (toChars!7290 (transformation!5295 (h!41919 (t!253454 rules!2135)))) (toChars!7290 (transformation!5295 (rule!7799 (h!41918 tokens!494))))) t!253494) tb!171479))

(declare-fun result!214290 () Bool)

(assert (= result!214290 result!214272))

(assert (=> b!3305059 t!253494))

(assert (=> d!925585 t!253494))

(declare-fun b_and!226481 () Bool)

(declare-fun tp!1034844 () Bool)

(assert (=> b!3305106 (= tp!1034844 (and (=> t!253492 result!214288) (=> t!253494 result!214290) b_and!226481))))

(declare-fun e!2055484 () Bool)

(assert (=> b!3305106 (= e!2055484 (and tp!1034847 tp!1034844))))

(declare-fun b!3305105 () Bool)

(declare-fun e!2055486 () Bool)

(declare-fun tp!1034846 () Bool)

(assert (=> b!3305105 (= e!2055486 (and tp!1034846 (inv!49458 (tag!5841 (h!41919 (t!253454 rules!2135)))) (inv!49462 (transformation!5295 (h!41919 (t!253454 rules!2135)))) e!2055484))))

(declare-fun b!3305104 () Bool)

(declare-fun e!2055485 () Bool)

(declare-fun tp!1034845 () Bool)

(assert (=> b!3305104 (= e!2055485 (and e!2055486 tp!1034845))))

(assert (=> b!3304836 (= tp!1034762 e!2055485)))

(assert (= b!3305105 b!3305106))

(assert (= b!3305104 b!3305105))

(assert (= (and b!3304836 (is-Cons!36499 (t!253454 rules!2135))) b!3305104))

(declare-fun m!3631195 () Bool)

(assert (=> b!3305105 m!3631195))

(declare-fun m!3631197 () Bool)

(assert (=> b!3305105 m!3631197))

(declare-fun b!3305107 () Bool)

(declare-fun e!2055487 () Bool)

(declare-fun tp!1034848 () Bool)

(assert (=> b!3305107 (= e!2055487 (and tp_is_empty!17367 tp!1034848))))

(assert (=> b!3304826 (= tp!1034761 e!2055487)))

(assert (= (and b!3304826 (is-Cons!36497 (originalCharacters!6009 (h!41918 tokens!494)))) b!3305107))

(declare-fun e!2055490 () Bool)

(assert (=> b!3304837 (= tp!1034770 e!2055490)))

(declare-fun b!3305120 () Bool)

(declare-fun tp!1034863 () Bool)

(assert (=> b!3305120 (= e!2055490 tp!1034863)))

(declare-fun b!3305121 () Bool)

(declare-fun tp!1034862 () Bool)

(declare-fun tp!1034859 () Bool)

(assert (=> b!3305121 (= e!2055490 (and tp!1034862 tp!1034859))))

(declare-fun b!3305118 () Bool)

(assert (=> b!3305118 (= e!2055490 tp_is_empty!17367)))

(declare-fun b!3305119 () Bool)

(declare-fun tp!1034860 () Bool)

(declare-fun tp!1034861 () Bool)

(assert (=> b!3305119 (= e!2055490 (and tp!1034860 tp!1034861))))

(assert (= (and b!3304837 (is-ElementMatch!10054 (regex!5295 (rule!7799 (h!41918 tokens!494))))) b!3305118))

(assert (= (and b!3304837 (is-Concat!15579 (regex!5295 (rule!7799 (h!41918 tokens!494))))) b!3305119))

(assert (= (and b!3304837 (is-Star!10054 (regex!5295 (rule!7799 (h!41918 tokens!494))))) b!3305120))

(assert (= (and b!3304837 (is-Union!10054 (regex!5295 (rule!7799 (h!41918 tokens!494))))) b!3305121))

(declare-fun e!2055491 () Bool)

(assert (=> b!3304835 (= tp!1034768 e!2055491)))

(declare-fun b!3305124 () Bool)

(declare-fun tp!1034868 () Bool)

(assert (=> b!3305124 (= e!2055491 tp!1034868)))

(declare-fun b!3305125 () Bool)

(declare-fun tp!1034867 () Bool)

(declare-fun tp!1034864 () Bool)

(assert (=> b!3305125 (= e!2055491 (and tp!1034867 tp!1034864))))

(declare-fun b!3305122 () Bool)

(assert (=> b!3305122 (= e!2055491 tp_is_empty!17367)))

(declare-fun b!3305123 () Bool)

(declare-fun tp!1034865 () Bool)

(declare-fun tp!1034866 () Bool)

(assert (=> b!3305123 (= e!2055491 (and tp!1034865 tp!1034866))))

(assert (= (and b!3304835 (is-ElementMatch!10054 (regex!5295 (h!41919 rules!2135)))) b!3305122))

(assert (= (and b!3304835 (is-Concat!15579 (regex!5295 (h!41919 rules!2135)))) b!3305123))

(assert (= (and b!3304835 (is-Star!10054 (regex!5295 (h!41919 rules!2135)))) b!3305124))

(assert (= (and b!3304835 (is-Union!10054 (regex!5295 (h!41919 rules!2135)))) b!3305125))

(declare-fun e!2055492 () Bool)

(assert (=> b!3304845 (= tp!1034764 e!2055492)))

(declare-fun b!3305128 () Bool)

(declare-fun tp!1034873 () Bool)

(assert (=> b!3305128 (= e!2055492 tp!1034873)))

(declare-fun b!3305129 () Bool)

(declare-fun tp!1034872 () Bool)

(declare-fun tp!1034869 () Bool)

(assert (=> b!3305129 (= e!2055492 (and tp!1034872 tp!1034869))))

(declare-fun b!3305126 () Bool)

(assert (=> b!3305126 (= e!2055492 tp_is_empty!17367)))

(declare-fun b!3305127 () Bool)

(declare-fun tp!1034870 () Bool)

(declare-fun tp!1034871 () Bool)

(assert (=> b!3305127 (= e!2055492 (and tp!1034870 tp!1034871))))

(assert (= (and b!3304845 (is-ElementMatch!10054 (regex!5295 (rule!7799 separatorToken!241)))) b!3305126))

(assert (= (and b!3304845 (is-Concat!15579 (regex!5295 (rule!7799 separatorToken!241)))) b!3305127))

(assert (= (and b!3304845 (is-Star!10054 (regex!5295 (rule!7799 separatorToken!241)))) b!3305128))

(assert (= (and b!3304845 (is-Union!10054 (regex!5295 (rule!7799 separatorToken!241)))) b!3305129))

(declare-fun b_lambda!92305 () Bool)

(assert (= b_lambda!92295 (or (and b!3304839 b_free!86855 (= (toChars!7290 (transformation!5295 (h!41919 rules!2135))) (toChars!7290 (transformation!5295 (rule!7799 separatorToken!241))))) (and b!3304843 b_free!86851 (= (toChars!7290 (transformation!5295 (rule!7799 (h!41918 tokens!494)))) (toChars!7290 (transformation!5295 (rule!7799 separatorToken!241))))) (and b!3304844 b_free!86847) (and b!3305095 b_free!86871 (= (toChars!7290 (transformation!5295 (rule!7799 (h!41918 (t!253453 tokens!494))))) (toChars!7290 (transformation!5295 (rule!7799 separatorToken!241))))) (and b!3305106 b_free!86875 (= (toChars!7290 (transformation!5295 (h!41919 (t!253454 rules!2135)))) (toChars!7290 (transformation!5295 (rule!7799 separatorToken!241))))) b_lambda!92305)))

(declare-fun b_lambda!92307 () Bool)

(assert (= b_lambda!92301 (or b!3304830 b_lambda!92307)))

(declare-fun bs!548957 () Bool)

(declare-fun d!925587 () Bool)

(assert (= bs!548957 (and d!925587 b!3304830)))

(assert (=> bs!548957 (= (dynLambda!14958 lambda!118990 (h!41918 tokens!494)) (not (isSeparator!5295 (rule!7799 (h!41918 tokens!494)))))))

(assert (=> b!3305072 d!925587))

(declare-fun b_lambda!92309 () Bool)

(assert (= b_lambda!92299 (or (and b!3305095 b_free!86871 (= (toChars!7290 (transformation!5295 (rule!7799 (h!41918 (t!253453 tokens!494))))) (toChars!7290 (transformation!5295 (rule!7799 (h!41918 tokens!494)))))) (and b!3304844 b_free!86847 (= (toChars!7290 (transformation!5295 (rule!7799 separatorToken!241))) (toChars!7290 (transformation!5295 (rule!7799 (h!41918 tokens!494)))))) (and b!3304839 b_free!86855 (= (toChars!7290 (transformation!5295 (h!41919 rules!2135))) (toChars!7290 (transformation!5295 (rule!7799 (h!41918 tokens!494)))))) (and b!3304843 b_free!86851) (and b!3305106 b_free!86875 (= (toChars!7290 (transformation!5295 (h!41919 (t!253454 rules!2135)))) (toChars!7290 (transformation!5295 (rule!7799 (h!41918 tokens!494)))))) b_lambda!92309)))

(declare-fun b_lambda!92311 () Bool)

(assert (= b_lambda!92303 (or (and b!3305095 b_free!86871 (= (toChars!7290 (transformation!5295 (rule!7799 (h!41918 (t!253453 tokens!494))))) (toChars!7290 (transformation!5295 (rule!7799 (h!41918 tokens!494)))))) (and b!3304844 b_free!86847 (= (toChars!7290 (transformation!5295 (rule!7799 separatorToken!241))) (toChars!7290 (transformation!5295 (rule!7799 (h!41918 tokens!494)))))) (and b!3304839 b_free!86855 (= (toChars!7290 (transformation!5295 (h!41919 rules!2135))) (toChars!7290 (transformation!5295 (rule!7799 (h!41918 tokens!494)))))) (and b!3304843 b_free!86851) (and b!3305106 b_free!86875 (= (toChars!7290 (transformation!5295 (h!41919 (t!253454 rules!2135)))) (toChars!7290 (transformation!5295 (rule!7799 (h!41918 tokens!494)))))) b_lambda!92311)))

(push 1)

(assert (not b_next!87579))

(assert (not d!925583))

(assert (not b!3305035))

(assert (not b_lambda!92305))

(assert (not d!925569))

(assert b_and!226431)

(assert (not b!3305067))

(assert (not b!3305104))

(assert (not b!3304946))

(assert (not b!3305107))

(assert (not b!3304954))

(assert (not d!925575))

(assert (not b!3304949))

(assert b_and!226469)

(assert (not b_lambda!92307))

(assert (not b!3305092))

(assert (not b!3305094))

(assert (not b!3304934))

(assert b_and!226479)

(assert (not b!3305073))

(assert (not d!925559))

(assert (not d!925523))

(assert b_and!226427)

(assert (not b!3305066))

(assert (not b!3305093))

(assert (not b!3305128))

(assert (not b!3305124))

(assert (not b_next!87549))

(assert b_and!226481)

(assert (not b!3305105))

(assert (not b!3305120))

(assert (not b!3305042))

(assert (not b!3305059))

(assert (not b!3305125))

(assert (not b_next!87559))

(assert (not b!3305056))

(assert (not b!3304919))

(assert (not b_next!87577))

(assert (not tb!171455))

(assert (not d!925579))

(assert (not b!3305049))

(assert (not d!925565))

(assert (not d!925515))

(assert (not tb!171467))

(assert (not b_next!87551))

(assert b_and!226475)

(assert (not b!3305026))

(assert (not b!3305121))

(assert (not b!3305123))

(assert (not b!3305058))

(assert (not b_next!87553))

(assert tp_is_empty!17367)

(assert b_and!226435)

(assert (not b!3304922))

(assert (not b_next!87555))

(assert (not b!3305061))

(assert (not b!3305076))

(assert (not b!3305057))

(assert (not b!3304923))

(assert (not d!925527))

(assert (not b!3304928))

(assert (not b!3305119))

(assert (not d!925513))

(assert (not b!3305074))

(assert (not b_next!87575))

(assert (not d!925519))

(assert (not d!925555))

(assert b_and!226471)

(assert (not b!3305081))

(assert (not b!3305062))

(assert (not b_next!87573))

(assert (not b!3305047))

(assert (not b!3305048))

(assert (not b!3305129))

(assert b_and!226477)

(assert (not b_lambda!92309))

(assert (not d!925567))

(assert (not b!3305065))

(assert (not b!3305060))

(assert (not b!3304929))

(assert (not b!3304937))

(assert (not b_next!87557))

(assert b_and!226473)

(assert (not d!925585))

(assert (not d!925511))

(assert (not b!3304944))

(assert (not b_lambda!92311))

(assert (not b!3305127))

(assert (not b!3305075))

(assert (not d!925517))

(check-sat)

(pop 1)

(push 1)

(assert b_and!226431)

(assert b_and!226469)

(assert b_and!226479)

(assert b_and!226427)

(assert (not b_next!87549))

(assert b_and!226481)

(assert (not b_next!87579))

(assert (not b_next!87559))

(assert (not b_next!87577))

(assert (not b_next!87575))

(assert b_and!226471)

(assert (not b_next!87573))

(assert b_and!226477)

(assert (not b_next!87551))

(assert b_and!226475)

(assert (not b_next!87553))

(assert b_and!226435)

(assert (not b_next!87555))

(assert b_and!226473)

(assert (not b_next!87557))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!925613 () Bool)

(declare-fun res!1340522 () Bool)

(declare-fun e!2055557 () Bool)

(assert (=> d!925613 (=> res!1340522 e!2055557)))

(assert (=> d!925613 (= res!1340522 (not (is-Cons!36499 (t!253454 rules!2135))))))

(assert (=> d!925613 (= (sepAndNonSepRulesDisjointChars!1489 rules!2135 (t!253454 rules!2135)) e!2055557)))

(declare-fun b!3305215 () Bool)

(declare-fun e!2055558 () Bool)

(assert (=> b!3305215 (= e!2055557 e!2055558)))

(declare-fun res!1340523 () Bool)

(assert (=> b!3305215 (=> (not res!1340523) (not e!2055558))))

(assert (=> b!3305215 (= res!1340523 (ruleDisjointCharsFromAllFromOtherType!626 (h!41919 (t!253454 rules!2135)) rules!2135))))

(declare-fun b!3305216 () Bool)

(assert (=> b!3305216 (= e!2055558 (sepAndNonSepRulesDisjointChars!1489 rules!2135 (t!253454 (t!253454 rules!2135))))))

(assert (= (and d!925613 (not res!1340522)) b!3305215))

(assert (= (and b!3305215 res!1340523) b!3305216))

(declare-fun m!3631255 () Bool)

(assert (=> b!3305215 m!3631255))

(declare-fun m!3631257 () Bool)

(assert (=> b!3305216 m!3631257))

(assert (=> b!3305048 d!925613))

(declare-fun d!925615 () Bool)

(declare-fun res!1340528 () Bool)

(declare-fun e!2055563 () Bool)

(assert (=> d!925615 (=> res!1340528 e!2055563)))

(assert (=> d!925615 (= res!1340528 (is-Nil!36499 rules!2135))))

(assert (=> d!925615 (= (noDuplicateTag!1946 thiss!18206 rules!2135 Nil!36504) e!2055563)))

(declare-fun b!3305221 () Bool)

(declare-fun e!2055564 () Bool)

(assert (=> b!3305221 (= e!2055563 e!2055564)))

(declare-fun res!1340529 () Bool)

(assert (=> b!3305221 (=> (not res!1340529) (not e!2055564))))

(declare-fun contains!6594 (List!36628 String!40961) Bool)

(assert (=> b!3305221 (= res!1340529 (not (contains!6594 Nil!36504 (tag!5841 (h!41919 rules!2135)))))))

(declare-fun b!3305222 () Bool)

(assert (=> b!3305222 (= e!2055564 (noDuplicateTag!1946 thiss!18206 (t!253454 rules!2135) (Cons!36504 (tag!5841 (h!41919 rules!2135)) Nil!36504)))))

(assert (= (and d!925615 (not res!1340528)) b!3305221))

(assert (= (and b!3305221 res!1340529) b!3305222))

(declare-fun m!3631259 () Bool)

(assert (=> b!3305221 m!3631259))

(declare-fun m!3631261 () Bool)

(assert (=> b!3305222 m!3631261))

(assert (=> b!3304937 d!925615))

(declare-fun d!925617 () Bool)

(declare-fun lt!1120329 () Int)

(assert (=> d!925617 (>= lt!1120329 0)))

(declare-fun e!2055567 () Int)

(assert (=> d!925617 (= lt!1120329 e!2055567)))

(declare-fun c!560709 () Bool)

(assert (=> d!925617 (= c!560709 (is-Nil!36497 (originalCharacters!6009 (h!41918 tokens!494))))))

(assert (=> d!925617 (= (size!27566 (originalCharacters!6009 (h!41918 tokens!494))) lt!1120329)))

(declare-fun b!3305227 () Bool)

(assert (=> b!3305227 (= e!2055567 0)))

(declare-fun b!3305228 () Bool)

(assert (=> b!3305228 (= e!2055567 (+ 1 (size!27566 (t!253452 (originalCharacters!6009 (h!41918 tokens!494))))))))

(assert (= (and d!925617 c!560709) b!3305227))

(assert (= (and d!925617 (not c!560709)) b!3305228))

(declare-fun m!3631263 () Bool)

(assert (=> b!3305228 m!3631263))

(assert (=> b!3305060 d!925617))

(declare-fun d!925619 () Bool)

(assert (=> d!925619 true))

(declare-fun lambda!119006 () Int)

(declare-fun order!18959 () Int)

(declare-fun dynLambda!14964 (Int Int) Int)

(assert (=> d!925619 (< (dynLambda!14957 order!18951 (toChars!7290 (transformation!5295 (h!41919 rules!2135)))) (dynLambda!14964 order!18959 lambda!119006))))

(assert (=> d!925619 true))

(assert (=> d!925619 (< (dynLambda!14955 order!18947 (toValue!7431 (transformation!5295 (h!41919 rules!2135)))) (dynLambda!14964 order!18959 lambda!119006))))

(declare-fun Forall!1292 (Int) Bool)

(assert (=> d!925619 (= (semiInverseModEq!2190 (toChars!7290 (transformation!5295 (h!41919 rules!2135))) (toValue!7431 (transformation!5295 (h!41919 rules!2135)))) (Forall!1292 lambda!119006))))

(declare-fun bs!548962 () Bool)

(assert (= bs!548962 d!925619))

(declare-fun m!3631265 () Bool)

(assert (=> bs!548962 m!3631265))

(assert (=> d!925559 d!925619))

(declare-fun d!925621 () Bool)

(assert (=> d!925621 true))

(declare-fun lambda!119009 () Int)

(declare-fun order!18961 () Int)

(declare-fun dynLambda!14965 (Int Int) Int)

(assert (=> d!925621 (< (dynLambda!14955 order!18947 (toValue!7431 (transformation!5295 (rule!7799 (h!41918 tokens!494))))) (dynLambda!14965 order!18961 lambda!119009))))

(declare-fun Forall2!889 (Int) Bool)

(assert (=> d!925621 (= (equivClasses!2089 (toChars!7290 (transformation!5295 (rule!7799 (h!41918 tokens!494)))) (toValue!7431 (transformation!5295 (rule!7799 (h!41918 tokens!494))))) (Forall2!889 lambda!119009))))

(declare-fun bs!548963 () Bool)

(assert (= bs!548963 d!925621))

(declare-fun m!3631267 () Bool)

(assert (=> bs!548963 m!3631267))

(assert (=> b!3305067 d!925621))

(declare-fun d!925623 () Bool)

(declare-fun res!1340532 () Bool)

(declare-fun e!2055570 () Bool)

(assert (=> d!925623 (=> res!1340532 e!2055570)))

(assert (=> d!925623 (= res!1340532 (is-Nil!36498 (list!13086 (seqFromList!3647 tokens!494))))))

(assert (=> d!925623 (= (forall!7563 (list!13086 (seqFromList!3647 tokens!494)) lambda!118998) e!2055570)))

(declare-fun b!3305237 () Bool)

(declare-fun e!2055571 () Bool)

(assert (=> b!3305237 (= e!2055570 e!2055571)))

(declare-fun res!1340533 () Bool)

(assert (=> b!3305237 (=> (not res!1340533) (not e!2055571))))

(assert (=> b!3305237 (= res!1340533 (dynLambda!14958 lambda!118998 (h!41918 (list!13086 (seqFromList!3647 tokens!494)))))))

(declare-fun b!3305238 () Bool)

(assert (=> b!3305238 (= e!2055571 (forall!7563 (t!253453 (list!13086 (seqFromList!3647 tokens!494))) lambda!118998))))

(assert (= (and d!925623 (not res!1340532)) b!3305237))

(assert (= (and b!3305237 res!1340533) b!3305238))

(declare-fun b_lambda!92327 () Bool)

(assert (=> (not b_lambda!92327) (not b!3305237)))

(declare-fun m!3631269 () Bool)

(assert (=> b!3305237 m!3631269))

(declare-fun m!3631271 () Bool)

(assert (=> b!3305238 m!3631271))

(assert (=> d!925527 d!925623))

(declare-fun d!925625 () Bool)

(declare-fun list!13090 (Conc!10966) List!36622)

(assert (=> d!925625 (= (list!13086 (seqFromList!3647 tokens!494)) (list!13090 (c!560674 (seqFromList!3647 tokens!494))))))

(declare-fun bs!548964 () Bool)

(assert (= bs!548964 d!925625))

(declare-fun m!3631273 () Bool)

(assert (=> bs!548964 m!3631273))

(assert (=> d!925527 d!925625))

(declare-fun d!925627 () Bool)

(declare-fun lt!1120332 () Bool)

(assert (=> d!925627 (= lt!1120332 (forall!7563 (list!13086 (seqFromList!3647 tokens!494)) lambda!118998))))

(declare-fun forall!7567 (Conc!10966 Int) Bool)

(assert (=> d!925627 (= lt!1120332 (forall!7567 (c!560674 (seqFromList!3647 tokens!494)) lambda!118998))))

(assert (=> d!925627 (= (forall!7565 (seqFromList!3647 tokens!494) lambda!118998) lt!1120332)))

(declare-fun bs!548965 () Bool)

(assert (= bs!548965 d!925627))

(assert (=> bs!548965 m!3630827))

(assert (=> bs!548965 m!3631101))

(assert (=> bs!548965 m!3631101))

(assert (=> bs!548965 m!3631103))

(declare-fun m!3631275 () Bool)

(assert (=> bs!548965 m!3631275))

(assert (=> d!925527 d!925627))

(assert (=> d!925527 d!925581))

(declare-fun d!925629 () Bool)

(declare-fun lt!1120335 () Token!9956)

(assert (=> d!925629 (= lt!1120335 (apply!8384 (list!13086 (_1!21127 lt!1120318)) 0))))

(declare-fun apply!8387 (Conc!10966 Int) Token!9956)

(assert (=> d!925629 (= lt!1120335 (apply!8387 (c!560674 (_1!21127 lt!1120318)) 0))))

(declare-fun e!2055574 () Bool)

(assert (=> d!925629 e!2055574))

(declare-fun res!1340536 () Bool)

(assert (=> d!925629 (=> (not res!1340536) (not e!2055574))))

(assert (=> d!925629 (= res!1340536 (<= 0 0))))

(assert (=> d!925629 (= (apply!8383 (_1!21127 lt!1120318) 0) lt!1120335)))

(declare-fun b!3305241 () Bool)

(assert (=> b!3305241 (= e!2055574 (< 0 (size!27567 (_1!21127 lt!1120318))))))

(assert (= (and d!925629 res!1340536) b!3305241))

(declare-fun m!3631277 () Bool)

(assert (=> d!925629 m!3631277))

(assert (=> d!925629 m!3631277))

(declare-fun m!3631279 () Bool)

(assert (=> d!925629 m!3631279))

(declare-fun m!3631281 () Bool)

(assert (=> d!925629 m!3631281))

(assert (=> b!3305241 m!3631175))

(assert (=> b!3305074 d!925629))

(declare-fun d!925631 () Bool)

(declare-fun isBalanced!3280 (Conc!10965) Bool)

(assert (=> d!925631 (= (inv!49466 (dynLambda!14954 (toChars!7290 (transformation!5295 (rule!7799 (h!41918 tokens!494)))) (value!171369 (h!41918 tokens!494)))) (isBalanced!3280 (c!560673 (dynLambda!14954 (toChars!7290 (transformation!5295 (rule!7799 (h!41918 tokens!494)))) (value!171369 (h!41918 tokens!494))))))))

(declare-fun bs!548966 () Bool)

(assert (= bs!548966 d!925631))

(declare-fun m!3631283 () Bool)

(assert (=> bs!548966 m!3631283))

(assert (=> tb!171467 d!925631))

(declare-fun lt!1120338 () Bool)

(declare-fun d!925633 () Bool)

(assert (=> d!925633 (= lt!1120338 (isEmpty!20636 (list!13084 (_2!21127 (lex!2210 thiss!18206 rules!2135 (print!1949 thiss!18206 (singletonSeq!2391 (h!41918 tokens!494))))))))))

(declare-fun isEmpty!20640 (Conc!10965) Bool)

(assert (=> d!925633 (= lt!1120338 (isEmpty!20640 (c!560673 (_2!21127 (lex!2210 thiss!18206 rules!2135 (print!1949 thiss!18206 (singletonSeq!2391 (h!41918 tokens!494))))))))))

(assert (=> d!925633 (= (isEmpty!20637 (_2!21127 (lex!2210 thiss!18206 rules!2135 (print!1949 thiss!18206 (singletonSeq!2391 (h!41918 tokens!494)))))) lt!1120338)))

(declare-fun bs!548967 () Bool)

(assert (= bs!548967 d!925633))

(declare-fun m!3631285 () Bool)

(assert (=> bs!548967 m!3631285))

(assert (=> bs!548967 m!3631285))

(declare-fun m!3631287 () Bool)

(assert (=> bs!548967 m!3631287))

(declare-fun m!3631289 () Bool)

(assert (=> bs!548967 m!3631289))

(assert (=> b!3305076 d!925633))

(declare-fun b!3305253 () Bool)

(declare-fun e!2055582 () Bool)

(declare-fun e!2055581 () Bool)

(assert (=> b!3305253 (= e!2055582 e!2055581)))

(declare-fun res!1340543 () Bool)

(declare-fun lt!1120341 () tuple2!35986)

(declare-fun size!27570 (BalanceConc!21544) Int)

(assert (=> b!3305253 (= res!1340543 (< (size!27570 (_2!21127 lt!1120341)) (size!27570 (print!1949 thiss!18206 (singletonSeq!2391 (h!41918 tokens!494))))))))

(assert (=> b!3305253 (=> (not res!1340543) (not e!2055581))))

(declare-fun b!3305254 () Bool)

(declare-fun res!1340545 () Bool)

(declare-fun e!2055583 () Bool)

(assert (=> b!3305254 (=> (not res!1340545) (not e!2055583))))

(declare-datatypes ((tuple2!35990 0))(
  ( (tuple2!35991 (_1!21129 List!36622) (_2!21129 List!36621)) )
))
(declare-fun lexList!1354 (LexerInterface!4884 List!36623 List!36621) tuple2!35990)

(assert (=> b!3305254 (= res!1340545 (= (list!13086 (_1!21127 lt!1120341)) (_1!21129 (lexList!1354 thiss!18206 rules!2135 (list!13084 (print!1949 thiss!18206 (singletonSeq!2391 (h!41918 tokens!494))))))))))

(declare-fun d!925635 () Bool)

(assert (=> d!925635 e!2055583))

(declare-fun res!1340544 () Bool)

(assert (=> d!925635 (=> (not res!1340544) (not e!2055583))))

(assert (=> d!925635 (= res!1340544 e!2055582)))

(declare-fun c!560712 () Bool)

(assert (=> d!925635 (= c!560712 (> (size!27567 (_1!21127 lt!1120341)) 0))))

(declare-fun lexTailRecV2!964 (LexerInterface!4884 List!36623 BalanceConc!21544 BalanceConc!21544 BalanceConc!21544 BalanceConc!21546) tuple2!35986)

(assert (=> d!925635 (= lt!1120341 (lexTailRecV2!964 thiss!18206 rules!2135 (print!1949 thiss!18206 (singletonSeq!2391 (h!41918 tokens!494))) (BalanceConc!21545 Empty!10965) (print!1949 thiss!18206 (singletonSeq!2391 (h!41918 tokens!494))) (BalanceConc!21547 Empty!10966)))))

(assert (=> d!925635 (= (lex!2210 thiss!18206 rules!2135 (print!1949 thiss!18206 (singletonSeq!2391 (h!41918 tokens!494)))) lt!1120341)))

(declare-fun b!3305252 () Bool)

(assert (=> b!3305252 (= e!2055583 (= (list!13084 (_2!21127 lt!1120341)) (_2!21129 (lexList!1354 thiss!18206 rules!2135 (list!13084 (print!1949 thiss!18206 (singletonSeq!2391 (h!41918 tokens!494))))))))))

(declare-fun b!3305255 () Bool)

(declare-fun isEmpty!20641 (BalanceConc!21546) Bool)

(assert (=> b!3305255 (= e!2055581 (not (isEmpty!20641 (_1!21127 lt!1120341))))))

(declare-fun b!3305256 () Bool)

(assert (=> b!3305256 (= e!2055582 (= (_2!21127 lt!1120341) (print!1949 thiss!18206 (singletonSeq!2391 (h!41918 tokens!494)))))))

(assert (= (and d!925635 c!560712) b!3305253))

(assert (= (and d!925635 (not c!560712)) b!3305256))

(assert (= (and b!3305253 res!1340543) b!3305255))

(assert (= (and d!925635 res!1340544) b!3305254))

(assert (= (and b!3305254 res!1340545) b!3305252))

(declare-fun m!3631291 () Bool)

(assert (=> b!3305254 m!3631291))

(assert (=> b!3305254 m!3631169))

(declare-fun m!3631293 () Bool)

(assert (=> b!3305254 m!3631293))

(assert (=> b!3305254 m!3631293))

(declare-fun m!3631295 () Bool)

(assert (=> b!3305254 m!3631295))

(declare-fun m!3631297 () Bool)

(assert (=> b!3305253 m!3631297))

(assert (=> b!3305253 m!3631169))

(declare-fun m!3631299 () Bool)

(assert (=> b!3305253 m!3631299))

(declare-fun m!3631301 () Bool)

(assert (=> b!3305255 m!3631301))

(declare-fun m!3631303 () Bool)

(assert (=> d!925635 m!3631303))

(assert (=> d!925635 m!3631169))

(assert (=> d!925635 m!3631169))

(declare-fun m!3631305 () Bool)

(assert (=> d!925635 m!3631305))

(declare-fun m!3631307 () Bool)

(assert (=> b!3305252 m!3631307))

(assert (=> b!3305252 m!3631169))

(assert (=> b!3305252 m!3631293))

(assert (=> b!3305252 m!3631293))

(assert (=> b!3305252 m!3631295))

(assert (=> b!3305076 d!925635))

(declare-fun d!925637 () Bool)

(declare-fun lt!1120342 () BalanceConc!21544)

(assert (=> d!925637 (= (list!13084 lt!1120342) (printList!1434 thiss!18206 (list!13086 (singletonSeq!2391 (h!41918 tokens!494)))))))

(assert (=> d!925637 (= lt!1120342 (printTailRec!1381 thiss!18206 (singletonSeq!2391 (h!41918 tokens!494)) 0 (BalanceConc!21545 Empty!10965)))))

(assert (=> d!925637 (= (print!1949 thiss!18206 (singletonSeq!2391 (h!41918 tokens!494))) lt!1120342)))

(declare-fun bs!548968 () Bool)

(assert (= bs!548968 d!925637))

(declare-fun m!3631309 () Bool)

(assert (=> bs!548968 m!3631309))

(assert (=> bs!548968 m!3630813))

(assert (=> bs!548968 m!3631167))

(assert (=> bs!548968 m!3631167))

(declare-fun m!3631311 () Bool)

(assert (=> bs!548968 m!3631311))

(assert (=> bs!548968 m!3630813))

(declare-fun m!3631313 () Bool)

(assert (=> bs!548968 m!3631313))

(assert (=> b!3305076 d!925637))

(assert (=> b!3305076 d!925523))

(declare-fun d!925639 () Bool)

(assert (=> d!925639 (= (list!13084 lt!1120247) (list!13087 (c!560673 lt!1120247)))))

(declare-fun bs!548969 () Bool)

(assert (= bs!548969 d!925639))

(declare-fun m!3631315 () Bool)

(assert (=> bs!548969 m!3631315))

(assert (=> d!925515 d!925639))

(declare-fun d!925641 () Bool)

(declare-fun c!560713 () Bool)

(assert (=> d!925641 (= c!560713 (is-Cons!36498 (list!13086 lt!1120226)))))

(declare-fun e!2055584 () List!36621)

(assert (=> d!925641 (= (printList!1434 thiss!18206 (list!13086 lt!1120226)) e!2055584)))

(declare-fun b!3305257 () Bool)

(assert (=> b!3305257 (= e!2055584 (++!8834 (list!13084 (charsOf!3311 (h!41918 (list!13086 lt!1120226)))) (printList!1434 thiss!18206 (t!253453 (list!13086 lt!1120226)))))))

(declare-fun b!3305258 () Bool)

(assert (=> b!3305258 (= e!2055584 Nil!36497)))

(assert (= (and d!925641 c!560713) b!3305257))

(assert (= (and d!925641 (not c!560713)) b!3305258))

(declare-fun m!3631317 () Bool)

(assert (=> b!3305257 m!3631317))

(assert (=> b!3305257 m!3631317))

(declare-fun m!3631319 () Bool)

(assert (=> b!3305257 m!3631319))

(declare-fun m!3631321 () Bool)

(assert (=> b!3305257 m!3631321))

(assert (=> b!3305257 m!3631319))

(assert (=> b!3305257 m!3631321))

(declare-fun m!3631323 () Bool)

(assert (=> b!3305257 m!3631323))

(assert (=> d!925515 d!925641))

(declare-fun d!925643 () Bool)

(assert (=> d!925643 (= (list!13086 lt!1120226) (list!13090 (c!560674 lt!1120226)))))

(declare-fun bs!548970 () Bool)

(assert (= bs!548970 d!925643))

(declare-fun m!3631325 () Bool)

(assert (=> bs!548970 m!3631325))

(assert (=> d!925515 d!925643))

(assert (=> d!925515 d!925519))

(declare-fun d!925645 () Bool)

(assert (=> d!925645 true))

(declare-fun lt!1120345 () Bool)

(declare-fun rulesValidInductive!1806 (LexerInterface!4884 List!36623) Bool)

(assert (=> d!925645 (= lt!1120345 (rulesValidInductive!1806 thiss!18206 rules!2135))))

(declare-fun lambda!119012 () Int)

(declare-fun forall!7568 (List!36623 Int) Bool)

(assert (=> d!925645 (= lt!1120345 (forall!7568 rules!2135 lambda!119012))))

(assert (=> d!925645 (= (rulesValid!1950 thiss!18206 rules!2135) lt!1120345)))

(declare-fun bs!548971 () Bool)

(assert (= bs!548971 d!925645))

(declare-fun m!3631327 () Bool)

(assert (=> bs!548971 m!3631327))

(declare-fun m!3631329 () Bool)

(assert (=> bs!548971 m!3631329))

(assert (=> d!925513 d!925645))

(declare-fun d!925647 () Bool)

(declare-fun charsToBigInt!1 (List!36620) Int)

(assert (=> d!925647 (= (inv!17 (value!171369 (h!41918 tokens!494))) (= (charsToBigInt!1 (text!39123 (value!171369 (h!41918 tokens!494)))) (value!171361 (value!171369 (h!41918 tokens!494)))))))

(declare-fun bs!548972 () Bool)

(assert (= bs!548972 d!925647))

(declare-fun m!3631331 () Bool)

(assert (=> bs!548972 m!3631331))

(assert (=> b!3305062 d!925647))

(declare-fun bs!548973 () Bool)

(declare-fun d!925649 () Bool)

(assert (= bs!548973 (and d!925649 d!925619)))

(declare-fun lambda!119013 () Int)

(assert (=> bs!548973 (= (and (= (toChars!7290 (transformation!5295 (rule!7799 separatorToken!241))) (toChars!7290 (transformation!5295 (h!41919 rules!2135)))) (= (toValue!7431 (transformation!5295 (rule!7799 separatorToken!241))) (toValue!7431 (transformation!5295 (h!41919 rules!2135))))) (= lambda!119013 lambda!119006))))

(assert (=> d!925649 true))

(assert (=> d!925649 (< (dynLambda!14957 order!18951 (toChars!7290 (transformation!5295 (rule!7799 separatorToken!241)))) (dynLambda!14964 order!18959 lambda!119013))))

(assert (=> d!925649 true))

(assert (=> d!925649 (< (dynLambda!14955 order!18947 (toValue!7431 (transformation!5295 (rule!7799 separatorToken!241)))) (dynLambda!14964 order!18959 lambda!119013))))

(assert (=> d!925649 (= (semiInverseModEq!2190 (toChars!7290 (transformation!5295 (rule!7799 separatorToken!241))) (toValue!7431 (transformation!5295 (rule!7799 separatorToken!241)))) (Forall!1292 lambda!119013))))

(declare-fun bs!548974 () Bool)

(assert (= bs!548974 d!925649))

(declare-fun m!3631333 () Bool)

(assert (=> bs!548974 m!3631333))

(assert (=> d!925565 d!925649))

(declare-fun d!925651 () Bool)

(assert (=> d!925651 (= (list!13084 lt!1120267) (list!13087 (c!560673 lt!1120267)))))

(declare-fun bs!548975 () Bool)

(assert (= bs!548975 d!925651))

(declare-fun m!3631335 () Bool)

(assert (=> bs!548975 m!3631335))

(assert (=> d!925519 d!925651))

(declare-fun d!925653 () Bool)

(declare-fun lt!1120359 () List!36621)

(assert (=> d!925653 (= lt!1120359 (++!8834 (list!13084 (BalanceConc!21545 Empty!10965)) (printList!1434 thiss!18206 (dropList!1113 lt!1120226 0))))))

(declare-fun e!2055587 () List!36621)

(assert (=> d!925653 (= lt!1120359 e!2055587)))

(declare-fun c!560716 () Bool)

(assert (=> d!925653 (= c!560716 (is-Cons!36498 (dropList!1113 lt!1120226 0)))))

(assert (=> d!925653 (= (printListTailRec!596 thiss!18206 (dropList!1113 lt!1120226 0) (list!13084 (BalanceConc!21545 Empty!10965))) lt!1120359)))

(declare-fun b!3305265 () Bool)

(assert (=> b!3305265 (= e!2055587 (printListTailRec!596 thiss!18206 (t!253453 (dropList!1113 lt!1120226 0)) (++!8834 (list!13084 (BalanceConc!21545 Empty!10965)) (list!13084 (charsOf!3311 (h!41918 (dropList!1113 lt!1120226 0)))))))))

(declare-fun lt!1120357 () List!36621)

(assert (=> b!3305265 (= lt!1120357 (list!13084 (charsOf!3311 (h!41918 (dropList!1113 lt!1120226 0)))))))

(declare-fun lt!1120358 () List!36621)

(assert (=> b!3305265 (= lt!1120358 (printList!1434 thiss!18206 (t!253453 (dropList!1113 lt!1120226 0))))))

(declare-fun lt!1120360 () Unit!51432)

(declare-fun lemmaConcatAssociativity!1819 (List!36621 List!36621 List!36621) Unit!51432)

(assert (=> b!3305265 (= lt!1120360 (lemmaConcatAssociativity!1819 (list!13084 (BalanceConc!21545 Empty!10965)) lt!1120357 lt!1120358))))

(assert (=> b!3305265 (= (++!8834 (++!8834 (list!13084 (BalanceConc!21545 Empty!10965)) lt!1120357) lt!1120358) (++!8834 (list!13084 (BalanceConc!21545 Empty!10965)) (++!8834 lt!1120357 lt!1120358)))))

(declare-fun lt!1120356 () Unit!51432)

(assert (=> b!3305265 (= lt!1120356 lt!1120360)))

(declare-fun b!3305266 () Bool)

(assert (=> b!3305266 (= e!2055587 (list!13084 (BalanceConc!21545 Empty!10965)))))

(assert (= (and d!925653 c!560716) b!3305265))

(assert (= (and d!925653 (not c!560716)) b!3305266))

(assert (=> d!925653 m!3630937))

(declare-fun m!3631337 () Bool)

(assert (=> d!925653 m!3631337))

(assert (=> d!925653 m!3630939))

(assert (=> d!925653 m!3631337))

(declare-fun m!3631339 () Bool)

(assert (=> d!925653 m!3631339))

(declare-fun m!3631341 () Bool)

(assert (=> b!3305265 m!3631341))

(declare-fun m!3631343 () Bool)

(assert (=> b!3305265 m!3631343))

(declare-fun m!3631345 () Bool)

(assert (=> b!3305265 m!3631345))

(declare-fun m!3631347 () Bool)

(assert (=> b!3305265 m!3631347))

(declare-fun m!3631349 () Bool)

(assert (=> b!3305265 m!3631349))

(assert (=> b!3305265 m!3631341))

(declare-fun m!3631351 () Bool)

(assert (=> b!3305265 m!3631351))

(declare-fun m!3631353 () Bool)

(assert (=> b!3305265 m!3631353))

(assert (=> b!3305265 m!3630939))

(assert (=> b!3305265 m!3631343))

(assert (=> b!3305265 m!3631345))

(assert (=> b!3305265 m!3630939))

(assert (=> b!3305265 m!3631351))

(declare-fun m!3631355 () Bool)

(assert (=> b!3305265 m!3631355))

(assert (=> b!3305265 m!3630939))

(declare-fun m!3631357 () Bool)

(assert (=> b!3305265 m!3631357))

(assert (=> b!3305265 m!3630939))

(assert (=> b!3305265 m!3631349))

(declare-fun m!3631359 () Bool)

(assert (=> b!3305265 m!3631359))

(assert (=> d!925519 d!925653))

(declare-fun d!925655 () Bool)

(declare-fun lt!1120363 () Int)

(declare-fun size!27571 (List!36622) Int)

(assert (=> d!925655 (= lt!1120363 (size!27571 (list!13086 lt!1120226)))))

(declare-fun size!27572 (Conc!10966) Int)

(assert (=> d!925655 (= lt!1120363 (size!27572 (c!560674 lt!1120226)))))

(assert (=> d!925655 (= (size!27567 lt!1120226) lt!1120363)))

(declare-fun bs!548976 () Bool)

(assert (= bs!548976 d!925655))

(assert (=> bs!548976 m!3630927))

(assert (=> bs!548976 m!3630927))

(declare-fun m!3631361 () Bool)

(assert (=> bs!548976 m!3631361))

(declare-fun m!3631363 () Bool)

(assert (=> bs!548976 m!3631363))

(assert (=> d!925519 d!925655))

(declare-fun d!925657 () Bool)

(assert (=> d!925657 (= (list!13084 (BalanceConc!21545 Empty!10965)) (list!13087 (c!560673 (BalanceConc!21545 Empty!10965))))))

(declare-fun bs!548977 () Bool)

(assert (= bs!548977 d!925657))

(declare-fun m!3631365 () Bool)

(assert (=> bs!548977 m!3631365))

(assert (=> d!925519 d!925657))

(declare-fun d!925659 () Bool)

(assert (=> d!925659 (= (dropList!1113 lt!1120226 0) (drop!1904 (list!13090 (c!560674 lt!1120226)) 0))))

(declare-fun bs!548978 () Bool)

(assert (= bs!548978 d!925659))

(assert (=> bs!548978 m!3631325))

(assert (=> bs!548978 m!3631325))

(declare-fun m!3631367 () Bool)

(assert (=> bs!548978 m!3631367))

(assert (=> d!925519 d!925659))

(declare-fun d!925661 () Bool)

(declare-fun res!1340546 () Bool)

(declare-fun e!2055588 () Bool)

(assert (=> d!925661 (=> (not res!1340546) (not e!2055588))))

(assert (=> d!925661 (= res!1340546 (not (isEmpty!20636 (originalCharacters!6009 (h!41918 (t!253453 tokens!494))))))))

(assert (=> d!925661 (= (inv!49461 (h!41918 (t!253453 tokens!494))) e!2055588)))

(declare-fun b!3305267 () Bool)

(declare-fun res!1340547 () Bool)

(assert (=> b!3305267 (=> (not res!1340547) (not e!2055588))))

(assert (=> b!3305267 (= res!1340547 (= (originalCharacters!6009 (h!41918 (t!253453 tokens!494))) (list!13084 (dynLambda!14954 (toChars!7290 (transformation!5295 (rule!7799 (h!41918 (t!253453 tokens!494))))) (value!171369 (h!41918 (t!253453 tokens!494)))))))))

(declare-fun b!3305268 () Bool)

(assert (=> b!3305268 (= e!2055588 (= (size!27564 (h!41918 (t!253453 tokens!494))) (size!27566 (originalCharacters!6009 (h!41918 (t!253453 tokens!494))))))))

(assert (= (and d!925661 res!1340546) b!3305267))

(assert (= (and b!3305267 res!1340547) b!3305268))

(declare-fun b_lambda!92329 () Bool)

(assert (=> (not b_lambda!92329) (not b!3305267)))

(declare-fun tb!171495 () Bool)

(declare-fun t!253514 () Bool)

(assert (=> (and b!3304844 (= (toChars!7290 (transformation!5295 (rule!7799 separatorToken!241))) (toChars!7290 (transformation!5295 (rule!7799 (h!41918 (t!253453 tokens!494)))))) t!253514) tb!171495))

(declare-fun b!3305269 () Bool)

(declare-fun e!2055589 () Bool)

(declare-fun tp!1034931 () Bool)

(assert (=> b!3305269 (= e!2055589 (and (inv!49465 (c!560673 (dynLambda!14954 (toChars!7290 (transformation!5295 (rule!7799 (h!41918 (t!253453 tokens!494))))) (value!171369 (h!41918 (t!253453 tokens!494)))))) tp!1034931))))

(declare-fun result!214316 () Bool)

(assert (=> tb!171495 (= result!214316 (and (inv!49466 (dynLambda!14954 (toChars!7290 (transformation!5295 (rule!7799 (h!41918 (t!253453 tokens!494))))) (value!171369 (h!41918 (t!253453 tokens!494))))) e!2055589))))

(assert (= tb!171495 b!3305269))

(declare-fun m!3631369 () Bool)

(assert (=> b!3305269 m!3631369))

(declare-fun m!3631371 () Bool)

(assert (=> tb!171495 m!3631371))

(assert (=> b!3305267 t!253514))

(declare-fun b_and!226503 () Bool)

(assert (= b_and!226469 (and (=> t!253514 result!214316) b_and!226503)))

(declare-fun t!253516 () Bool)

(declare-fun tb!171497 () Bool)

(assert (=> (and b!3304843 (= (toChars!7290 (transformation!5295 (rule!7799 (h!41918 tokens!494)))) (toChars!7290 (transformation!5295 (rule!7799 (h!41918 (t!253453 tokens!494)))))) t!253516) tb!171497))

(declare-fun result!214318 () Bool)

(assert (= result!214318 result!214316))

(assert (=> b!3305267 t!253516))

(declare-fun b_and!226505 () Bool)

(assert (= b_and!226471 (and (=> t!253516 result!214318) b_and!226505)))

(declare-fun tb!171499 () Bool)

(declare-fun t!253518 () Bool)

(assert (=> (and b!3305106 (= (toChars!7290 (transformation!5295 (h!41919 (t!253454 rules!2135)))) (toChars!7290 (transformation!5295 (rule!7799 (h!41918 (t!253453 tokens!494)))))) t!253518) tb!171499))

(declare-fun result!214320 () Bool)

(assert (= result!214320 result!214316))

(assert (=> b!3305267 t!253518))

(declare-fun b_and!226507 () Bool)

(assert (= b_and!226481 (and (=> t!253518 result!214320) b_and!226507)))

(declare-fun t!253520 () Bool)

(declare-fun tb!171501 () Bool)

(assert (=> (and b!3305095 (= (toChars!7290 (transformation!5295 (rule!7799 (h!41918 (t!253453 tokens!494))))) (toChars!7290 (transformation!5295 (rule!7799 (h!41918 (t!253453 tokens!494)))))) t!253520) tb!171501))

(declare-fun result!214322 () Bool)

(assert (= result!214322 result!214316))

(assert (=> b!3305267 t!253520))

(declare-fun b_and!226509 () Bool)

(assert (= b_and!226477 (and (=> t!253520 result!214322) b_and!226509)))

(declare-fun t!253522 () Bool)

(declare-fun tb!171503 () Bool)

(assert (=> (and b!3304839 (= (toChars!7290 (transformation!5295 (h!41919 rules!2135))) (toChars!7290 (transformation!5295 (rule!7799 (h!41918 (t!253453 tokens!494)))))) t!253522) tb!171503))

(declare-fun result!214324 () Bool)

(assert (= result!214324 result!214316))

(assert (=> b!3305267 t!253522))

(declare-fun b_and!226511 () Bool)

(assert (= b_and!226473 (and (=> t!253522 result!214324) b_and!226511)))

(declare-fun m!3631373 () Bool)

(assert (=> d!925661 m!3631373))

(declare-fun m!3631375 () Bool)

(assert (=> b!3305267 m!3631375))

(assert (=> b!3305267 m!3631375))

(declare-fun m!3631377 () Bool)

(assert (=> b!3305267 m!3631377))

(declare-fun m!3631379 () Bool)

(assert (=> b!3305268 m!3631379))

(assert (=> b!3305092 d!925661))

(declare-fun b!3305281 () Bool)

(declare-fun e!2055595 () List!36621)

(assert (=> b!3305281 (= e!2055595 (++!8834 (list!13087 (left!28427 (c!560673 (charsOf!3311 (h!41918 tokens!494))))) (list!13087 (right!28757 (c!560673 (charsOf!3311 (h!41918 tokens!494)))))))))

(declare-fun b!3305280 () Bool)

(declare-fun list!13091 (IArray!21935) List!36621)

(assert (=> b!3305280 (= e!2055595 (list!13091 (xs!14103 (c!560673 (charsOf!3311 (h!41918 tokens!494))))))))

(declare-fun d!925663 () Bool)

(declare-fun c!560721 () Bool)

(assert (=> d!925663 (= c!560721 (is-Empty!10965 (c!560673 (charsOf!3311 (h!41918 tokens!494)))))))

(declare-fun e!2055594 () List!36621)

(assert (=> d!925663 (= (list!13087 (c!560673 (charsOf!3311 (h!41918 tokens!494)))) e!2055594)))

(declare-fun b!3305278 () Bool)

(assert (=> b!3305278 (= e!2055594 Nil!36497)))

(declare-fun b!3305279 () Bool)

(assert (=> b!3305279 (= e!2055594 e!2055595)))

(declare-fun c!560722 () Bool)

(assert (=> b!3305279 (= c!560722 (is-Leaf!17224 (c!560673 (charsOf!3311 (h!41918 tokens!494)))))))

(assert (= (and d!925663 c!560721) b!3305278))

(assert (= (and d!925663 (not c!560721)) b!3305279))

(assert (= (and b!3305279 c!560722) b!3305280))

(assert (= (and b!3305279 (not c!560722)) b!3305281))

(declare-fun m!3631381 () Bool)

(assert (=> b!3305281 m!3631381))

(declare-fun m!3631383 () Bool)

(assert (=> b!3305281 m!3631383))

(assert (=> b!3305281 m!3631381))

(assert (=> b!3305281 m!3631383))

(declare-fun m!3631385 () Bool)

(assert (=> b!3305281 m!3631385))

(declare-fun m!3631387 () Bool)

(assert (=> b!3305280 m!3631387))

(assert (=> d!925583 d!925663))

(declare-fun d!925665 () Bool)

(declare-fun charsToInt!0 (List!36620) (_ BitVec 32))

(assert (=> d!925665 (= (inv!16 (value!171369 (h!41918 tokens!494))) (= (charsToInt!0 (text!39122 (value!171369 (h!41918 tokens!494)))) (value!171360 (value!171369 (h!41918 tokens!494)))))))

(declare-fun bs!548979 () Bool)

(assert (= bs!548979 d!925665))

(declare-fun m!3631389 () Bool)

(assert (=> bs!548979 m!3631389))

(assert (=> b!3305065 d!925665))

(declare-fun bs!548980 () Bool)

(declare-fun d!925667 () Bool)

(assert (= bs!548980 (and d!925667 d!925621)))

(declare-fun lambda!119014 () Int)

(assert (=> bs!548980 (= (= (toValue!7431 (transformation!5295 (rule!7799 separatorToken!241))) (toValue!7431 (transformation!5295 (rule!7799 (h!41918 tokens!494))))) (= lambda!119014 lambda!119009))))

(assert (=> d!925667 true))

(assert (=> d!925667 (< (dynLambda!14955 order!18947 (toValue!7431 (transformation!5295 (rule!7799 separatorToken!241)))) (dynLambda!14965 order!18961 lambda!119014))))

(assert (=> d!925667 (= (equivClasses!2089 (toChars!7290 (transformation!5295 (rule!7799 separatorToken!241))) (toValue!7431 (transformation!5295 (rule!7799 separatorToken!241)))) (Forall2!889 lambda!119014))))

(declare-fun bs!548981 () Bool)

(assert (= bs!548981 d!925667))

(declare-fun m!3631391 () Bool)

(assert (=> bs!548981 m!3631391))

(assert (=> b!3305049 d!925667))

(declare-fun d!925669 () Bool)

(assert (=> d!925669 (= (list!13084 (dynLambda!14954 (toChars!7290 (transformation!5295 (rule!7799 separatorToken!241))) (value!171369 separatorToken!241))) (list!13087 (c!560673 (dynLambda!14954 (toChars!7290 (transformation!5295 (rule!7799 separatorToken!241))) (value!171369 separatorToken!241)))))))

(declare-fun bs!548982 () Bool)

(assert (= bs!548982 d!925669))

(declare-fun m!3631393 () Bool)

(assert (=> bs!548982 m!3631393))

(assert (=> b!3304928 d!925669))

(declare-fun d!925671 () Bool)

(declare-fun res!1340548 () Bool)

(declare-fun e!2055596 () Bool)

(assert (=> d!925671 (=> res!1340548 e!2055596)))

(assert (=> d!925671 (= res!1340548 (is-Nil!36498 (t!253453 tokens!494)))))

(assert (=> d!925671 (= (forall!7563 (t!253453 tokens!494) lambda!118990) e!2055596)))

(declare-fun b!3305282 () Bool)

(declare-fun e!2055597 () Bool)

(assert (=> b!3305282 (= e!2055596 e!2055597)))

(declare-fun res!1340549 () Bool)

(assert (=> b!3305282 (=> (not res!1340549) (not e!2055597))))

(assert (=> b!3305282 (= res!1340549 (dynLambda!14958 lambda!118990 (h!41918 (t!253453 tokens!494))))))

(declare-fun b!3305283 () Bool)

(assert (=> b!3305283 (= e!2055597 (forall!7563 (t!253453 (t!253453 tokens!494)) lambda!118990))))

(assert (= (and d!925671 (not res!1340548)) b!3305282))

(assert (= (and b!3305282 res!1340549) b!3305283))

(declare-fun b_lambda!92331 () Bool)

(assert (=> (not b_lambda!92331) (not b!3305282)))

(declare-fun m!3631395 () Bool)

(assert (=> b!3305282 m!3631395))

(declare-fun m!3631397 () Bool)

(assert (=> b!3305283 m!3631397))

(assert (=> b!3305073 d!925671))

(declare-fun b!3305284 () Bool)

(declare-fun e!2055599 () Bool)

(assert (=> b!3305284 (= e!2055599 (inv!17 (value!171369 (h!41918 (t!253453 tokens!494)))))))

(declare-fun b!3305285 () Bool)

(declare-fun res!1340550 () Bool)

(declare-fun e!2055598 () Bool)

(assert (=> b!3305285 (=> res!1340550 e!2055598)))

(assert (=> b!3305285 (= res!1340550 (not (is-IntegerValue!16577 (value!171369 (h!41918 (t!253453 tokens!494))))))))

(assert (=> b!3305285 (= e!2055599 e!2055598)))

(declare-fun b!3305286 () Bool)

(declare-fun e!2055600 () Bool)

(assert (=> b!3305286 (= e!2055600 e!2055599)))

(declare-fun c!560724 () Bool)

(assert (=> b!3305286 (= c!560724 (is-IntegerValue!16576 (value!171369 (h!41918 (t!253453 tokens!494)))))))

(declare-fun b!3305287 () Bool)

(assert (=> b!3305287 (= e!2055600 (inv!16 (value!171369 (h!41918 (t!253453 tokens!494)))))))

(declare-fun d!925673 () Bool)

(declare-fun c!560723 () Bool)

(assert (=> d!925673 (= c!560723 (is-IntegerValue!16575 (value!171369 (h!41918 (t!253453 tokens!494)))))))

(assert (=> d!925673 (= (inv!21 (value!171369 (h!41918 (t!253453 tokens!494)))) e!2055600)))

(declare-fun b!3305288 () Bool)

(assert (=> b!3305288 (= e!2055598 (inv!15 (value!171369 (h!41918 (t!253453 tokens!494)))))))

(assert (= (and d!925673 c!560723) b!3305287))

(assert (= (and d!925673 (not c!560723)) b!3305286))

(assert (= (and b!3305286 c!560724) b!3305284))

(assert (= (and b!3305286 (not c!560724)) b!3305285))

(assert (= (and b!3305285 (not res!1340550)) b!3305288))

(declare-fun m!3631399 () Bool)

(assert (=> b!3305284 m!3631399))

(declare-fun m!3631401 () Bool)

(assert (=> b!3305287 m!3631401))

(declare-fun m!3631403 () Bool)

(assert (=> b!3305288 m!3631403))

(assert (=> b!3305093 d!925673))

(declare-fun d!925675 () Bool)

(declare-fun c!560727 () Bool)

(assert (=> d!925675 (= c!560727 (is-Node!10965 (c!560673 (dynLambda!14954 (toChars!7290 (transformation!5295 (rule!7799 (h!41918 tokens!494)))) (value!171369 (h!41918 tokens!494))))))))

(declare-fun e!2055605 () Bool)

(assert (=> d!925675 (= (inv!49465 (c!560673 (dynLambda!14954 (toChars!7290 (transformation!5295 (rule!7799 (h!41918 tokens!494)))) (value!171369 (h!41918 tokens!494))))) e!2055605)))

(declare-fun b!3305295 () Bool)

(declare-fun inv!49469 (Conc!10965) Bool)

(assert (=> b!3305295 (= e!2055605 (inv!49469 (c!560673 (dynLambda!14954 (toChars!7290 (transformation!5295 (rule!7799 (h!41918 tokens!494)))) (value!171369 (h!41918 tokens!494))))))))

(declare-fun b!3305296 () Bool)

(declare-fun e!2055606 () Bool)

(assert (=> b!3305296 (= e!2055605 e!2055606)))

(declare-fun res!1340553 () Bool)

(assert (=> b!3305296 (= res!1340553 (not (is-Leaf!17224 (c!560673 (dynLambda!14954 (toChars!7290 (transformation!5295 (rule!7799 (h!41918 tokens!494)))) (value!171369 (h!41918 tokens!494)))))))))

(assert (=> b!3305296 (=> res!1340553 e!2055606)))

(declare-fun b!3305297 () Bool)

(declare-fun inv!49470 (Conc!10965) Bool)

(assert (=> b!3305297 (= e!2055606 (inv!49470 (c!560673 (dynLambda!14954 (toChars!7290 (transformation!5295 (rule!7799 (h!41918 tokens!494)))) (value!171369 (h!41918 tokens!494))))))))

(assert (= (and d!925675 c!560727) b!3305295))

(assert (= (and d!925675 (not c!560727)) b!3305296))

(assert (= (and b!3305296 (not res!1340553)) b!3305297))

(declare-fun m!3631405 () Bool)

(assert (=> b!3305295 m!3631405))

(declare-fun m!3631407 () Bool)

(assert (=> b!3305297 m!3631407))

(assert (=> b!3305061 d!925675))

(declare-fun d!925677 () Bool)

(assert (=> d!925677 (= (list!13084 lt!1120322) (list!13087 (c!560673 lt!1120322)))))

(declare-fun bs!548983 () Bool)

(assert (= bs!548983 d!925677))

(declare-fun m!3631409 () Bool)

(assert (=> bs!548983 m!3631409))

(assert (=> d!925585 d!925677))

(declare-fun d!925679 () Bool)

(declare-fun lt!1120364 () Token!9956)

(assert (=> d!925679 (= lt!1120364 (apply!8384 (list!13086 (_1!21127 lt!1120316)) 0))))

(assert (=> d!925679 (= lt!1120364 (apply!8387 (c!560674 (_1!21127 lt!1120316)) 0))))

(declare-fun e!2055607 () Bool)

(assert (=> d!925679 e!2055607))

(declare-fun res!1340554 () Bool)

(assert (=> d!925679 (=> (not res!1340554) (not e!2055607))))

(assert (=> d!925679 (= res!1340554 (<= 0 0))))

(assert (=> d!925679 (= (apply!8383 (_1!21127 lt!1120316) 0) lt!1120364)))

(declare-fun b!3305298 () Bool)

(assert (=> b!3305298 (= e!2055607 (< 0 (size!27567 (_1!21127 lt!1120316))))))

(assert (= (and d!925679 res!1340554) b!3305298))

(declare-fun m!3631411 () Bool)

(assert (=> d!925679 m!3631411))

(assert (=> d!925679 m!3631411))

(declare-fun m!3631413 () Bool)

(assert (=> d!925679 m!3631413))

(declare-fun m!3631415 () Bool)

(assert (=> d!925679 m!3631415))

(assert (=> b!3305298 m!3631133))

(assert (=> b!3305056 d!925679))

(declare-fun d!925681 () Bool)

(assert (=> d!925681 (= (inv!16 (value!171369 separatorToken!241)) (= (charsToInt!0 (text!39122 (value!171369 separatorToken!241))) (value!171360 (value!171369 separatorToken!241))))))

(declare-fun bs!548984 () Bool)

(assert (= bs!548984 d!925681))

(declare-fun m!3631417 () Bool)

(assert (=> bs!548984 m!3631417))

(assert (=> b!3304922 d!925681))

(declare-fun bs!548985 () Bool)

(declare-fun d!925683 () Bool)

(assert (= bs!548985 (and d!925683 b!3304830)))

(declare-fun lambda!119017 () Int)

(assert (=> bs!548985 (not (= lambda!119017 lambda!118990))))

(declare-fun bs!548986 () Bool)

(assert (= bs!548986 (and d!925683 d!925527)))

(assert (=> bs!548986 (= lambda!119017 lambda!118998)))

(declare-fun b!3305307 () Bool)

(declare-fun e!2055616 () Bool)

(assert (=> b!3305307 (= e!2055616 true)))

(declare-fun b!3305306 () Bool)

(declare-fun e!2055615 () Bool)

(assert (=> b!3305306 (= e!2055615 e!2055616)))

(declare-fun b!3305305 () Bool)

(declare-fun e!2055614 () Bool)

(assert (=> b!3305305 (= e!2055614 e!2055615)))

(assert (=> d!925683 e!2055614))

(assert (= b!3305306 b!3305307))

(assert (= b!3305305 b!3305306))

(assert (= (and d!925683 (is-Cons!36499 rules!2135)) b!3305305))

(assert (=> b!3305307 (< (dynLambda!14955 order!18947 (toValue!7431 (transformation!5295 (h!41919 rules!2135)))) (dynLambda!14956 order!18949 lambda!119017))))

(assert (=> b!3305307 (< (dynLambda!14957 order!18951 (toChars!7290 (transformation!5295 (h!41919 rules!2135)))) (dynLambda!14956 order!18949 lambda!119017))))

(assert (=> d!925683 true))

(declare-fun lt!1120367 () Bool)

(assert (=> d!925683 (= lt!1120367 (forall!7563 (list!13086 (seqFromList!3647 tokens!494)) lambda!119017))))

(declare-fun e!2055612 () Bool)

(assert (=> d!925683 (= lt!1120367 e!2055612)))

(declare-fun res!1340564 () Bool)

(assert (=> d!925683 (=> res!1340564 e!2055612)))

(assert (=> d!925683 (= res!1340564 (not (is-Cons!36498 (list!13086 (seqFromList!3647 tokens!494)))))))

(assert (=> d!925683 (not (isEmpty!20634 rules!2135))))

(assert (=> d!925683 (= (rulesProduceEachTokenIndividuallyList!1762 thiss!18206 rules!2135 (list!13086 (seqFromList!3647 tokens!494))) lt!1120367)))

(declare-fun b!3305303 () Bool)

(declare-fun e!2055613 () Bool)

(assert (=> b!3305303 (= e!2055612 e!2055613)))

(declare-fun res!1340565 () Bool)

(assert (=> b!3305303 (=> (not res!1340565) (not e!2055613))))

(assert (=> b!3305303 (= res!1340565 (rulesProduceIndividualToken!2376 thiss!18206 rules!2135 (h!41918 (list!13086 (seqFromList!3647 tokens!494)))))))

(declare-fun b!3305304 () Bool)

(assert (=> b!3305304 (= e!2055613 (rulesProduceEachTokenIndividuallyList!1762 thiss!18206 rules!2135 (t!253453 (list!13086 (seqFromList!3647 tokens!494)))))))

(assert (= (and d!925683 (not res!1340564)) b!3305303))

(assert (= (and b!3305303 res!1340565) b!3305304))

(assert (=> d!925683 m!3631101))

(declare-fun m!3631419 () Bool)

(assert (=> d!925683 m!3631419))

(assert (=> d!925683 m!3630821))

(declare-fun m!3631421 () Bool)

(assert (=> b!3305303 m!3631421))

(declare-fun m!3631423 () Bool)

(assert (=> b!3305304 m!3631423))

(assert (=> b!3305026 d!925683))

(assert (=> b!3305026 d!925625))

(declare-fun d!925685 () Bool)

(assert (=> d!925685 (= (list!13086 (singletonSeq!2391 separatorToken!241)) (list!13090 (c!560674 (singletonSeq!2391 separatorToken!241))))))

(declare-fun bs!548987 () Bool)

(assert (= bs!548987 d!925685))

(declare-fun m!3631425 () Bool)

(assert (=> bs!548987 m!3631425))

(assert (=> d!925567 d!925685))

(declare-fun d!925687 () Bool)

(declare-fun lt!1120368 () Int)

(assert (=> d!925687 (= lt!1120368 (size!27571 (list!13086 (_1!21127 lt!1120316))))))

(assert (=> d!925687 (= lt!1120368 (size!27572 (c!560674 (_1!21127 lt!1120316))))))

(assert (=> d!925687 (= (size!27567 (_1!21127 lt!1120316)) lt!1120368)))

(declare-fun bs!548988 () Bool)

(assert (= bs!548988 d!925687))

(assert (=> bs!548988 m!3631411))

(assert (=> bs!548988 m!3631411))

(declare-fun m!3631427 () Bool)

(assert (=> bs!548988 m!3631427))

(declare-fun m!3631429 () Bool)

(assert (=> bs!548988 m!3631429))

(assert (=> d!925567 d!925687))

(declare-fun d!925689 () Bool)

(assert (=> d!925689 (= (list!13086 (_1!21127 (lex!2210 thiss!18206 rules!2135 (print!1949 thiss!18206 (singletonSeq!2391 separatorToken!241))))) (list!13090 (c!560674 (_1!21127 (lex!2210 thiss!18206 rules!2135 (print!1949 thiss!18206 (singletonSeq!2391 separatorToken!241)))))))))

(declare-fun bs!548989 () Bool)

(assert (= bs!548989 d!925689))

(declare-fun m!3631431 () Bool)

(assert (=> bs!548989 m!3631431))

(assert (=> d!925567 d!925689))

(declare-fun d!925691 () Bool)

(declare-fun e!2055617 () Bool)

(assert (=> d!925691 e!2055617))

(declare-fun res!1340566 () Bool)

(assert (=> d!925691 (=> (not res!1340566) (not e!2055617))))

(declare-fun lt!1120369 () BalanceConc!21546)

(assert (=> d!925691 (= res!1340566 (= (list!13086 lt!1120369) (Cons!36498 separatorToken!241 Nil!36498)))))

(assert (=> d!925691 (= lt!1120369 (singleton!1029 separatorToken!241))))

(assert (=> d!925691 (= (singletonSeq!2391 separatorToken!241) lt!1120369)))

(declare-fun b!3305308 () Bool)

(assert (=> b!3305308 (= e!2055617 (isBalanced!3278 (c!560674 lt!1120369)))))

(assert (= (and d!925691 res!1340566) b!3305308))

(declare-fun m!3631433 () Bool)

(assert (=> d!925691 m!3631433))

(declare-fun m!3631435 () Bool)

(assert (=> d!925691 m!3631435))

(declare-fun m!3631437 () Bool)

(assert (=> b!3305308 m!3631437))

(assert (=> d!925567 d!925691))

(declare-fun d!925693 () Bool)

(declare-fun lt!1120370 () BalanceConc!21544)

(assert (=> d!925693 (= (list!13084 lt!1120370) (printList!1434 thiss!18206 (list!13086 (singletonSeq!2391 separatorToken!241))))))

(assert (=> d!925693 (= lt!1120370 (printTailRec!1381 thiss!18206 (singletonSeq!2391 separatorToken!241) 0 (BalanceConc!21545 Empty!10965)))))

(assert (=> d!925693 (= (print!1949 thiss!18206 (singletonSeq!2391 separatorToken!241)) lt!1120370)))

(declare-fun bs!548990 () Bool)

(assert (= bs!548990 d!925693))

(declare-fun m!3631439 () Bool)

(assert (=> bs!548990 m!3631439))

(assert (=> bs!548990 m!3631123))

(assert (=> bs!548990 m!3631125))

(assert (=> bs!548990 m!3631125))

(declare-fun m!3631441 () Bool)

(assert (=> bs!548990 m!3631441))

(assert (=> bs!548990 m!3631123))

(declare-fun m!3631443 () Bool)

(assert (=> bs!548990 m!3631443))

(assert (=> d!925567 d!925693))

(assert (=> d!925567 d!925581))

(declare-fun b!3305310 () Bool)

(declare-fun e!2055619 () Bool)

(declare-fun e!2055618 () Bool)

(assert (=> b!3305310 (= e!2055619 e!2055618)))

(declare-fun lt!1120371 () tuple2!35986)

(declare-fun res!1340567 () Bool)

(assert (=> b!3305310 (= res!1340567 (< (size!27570 (_2!21127 lt!1120371)) (size!27570 (print!1949 thiss!18206 (singletonSeq!2391 separatorToken!241)))))))

(assert (=> b!3305310 (=> (not res!1340567) (not e!2055618))))

(declare-fun b!3305311 () Bool)

(declare-fun res!1340569 () Bool)

(declare-fun e!2055620 () Bool)

(assert (=> b!3305311 (=> (not res!1340569) (not e!2055620))))

(assert (=> b!3305311 (= res!1340569 (= (list!13086 (_1!21127 lt!1120371)) (_1!21129 (lexList!1354 thiss!18206 rules!2135 (list!13084 (print!1949 thiss!18206 (singletonSeq!2391 separatorToken!241)))))))))

(declare-fun d!925695 () Bool)

(assert (=> d!925695 e!2055620))

(declare-fun res!1340568 () Bool)

(assert (=> d!925695 (=> (not res!1340568) (not e!2055620))))

(assert (=> d!925695 (= res!1340568 e!2055619)))

(declare-fun c!560728 () Bool)

(assert (=> d!925695 (= c!560728 (> (size!27567 (_1!21127 lt!1120371)) 0))))

(assert (=> d!925695 (= lt!1120371 (lexTailRecV2!964 thiss!18206 rules!2135 (print!1949 thiss!18206 (singletonSeq!2391 separatorToken!241)) (BalanceConc!21545 Empty!10965) (print!1949 thiss!18206 (singletonSeq!2391 separatorToken!241)) (BalanceConc!21547 Empty!10966)))))

(assert (=> d!925695 (= (lex!2210 thiss!18206 rules!2135 (print!1949 thiss!18206 (singletonSeq!2391 separatorToken!241))) lt!1120371)))

(declare-fun b!3305309 () Bool)

(assert (=> b!3305309 (= e!2055620 (= (list!13084 (_2!21127 lt!1120371)) (_2!21129 (lexList!1354 thiss!18206 rules!2135 (list!13084 (print!1949 thiss!18206 (singletonSeq!2391 separatorToken!241)))))))))

(declare-fun b!3305312 () Bool)

(assert (=> b!3305312 (= e!2055618 (not (isEmpty!20641 (_1!21127 lt!1120371))))))

(declare-fun b!3305313 () Bool)

(assert (=> b!3305313 (= e!2055619 (= (_2!21127 lt!1120371) (print!1949 thiss!18206 (singletonSeq!2391 separatorToken!241))))))

(assert (= (and d!925695 c!560728) b!3305310))

(assert (= (and d!925695 (not c!560728)) b!3305313))

(assert (= (and b!3305310 res!1340567) b!3305312))

(assert (= (and d!925695 res!1340568) b!3305311))

(assert (= (and b!3305311 res!1340569) b!3305309))

(declare-fun m!3631445 () Bool)

(assert (=> b!3305311 m!3631445))

(assert (=> b!3305311 m!3631127))

(declare-fun m!3631447 () Bool)

(assert (=> b!3305311 m!3631447))

(assert (=> b!3305311 m!3631447))

(declare-fun m!3631449 () Bool)

(assert (=> b!3305311 m!3631449))

(declare-fun m!3631451 () Bool)

(assert (=> b!3305310 m!3631451))

(assert (=> b!3305310 m!3631127))

(declare-fun m!3631453 () Bool)

(assert (=> b!3305310 m!3631453))

(declare-fun m!3631455 () Bool)

(assert (=> b!3305312 m!3631455))

(declare-fun m!3631457 () Bool)

(assert (=> d!925695 m!3631457))

(assert (=> d!925695 m!3631127))

(assert (=> d!925695 m!3631127))

(declare-fun m!3631459 () Bool)

(assert (=> d!925695 m!3631459))

(declare-fun m!3631461 () Bool)

(assert (=> b!3305309 m!3631461))

(assert (=> b!3305309 m!3631127))

(assert (=> b!3305309 m!3631447))

(assert (=> b!3305309 m!3631447))

(assert (=> b!3305309 m!3631449))

(assert (=> d!925567 d!925695))

(declare-fun b!3305317 () Bool)

(declare-fun e!2055622 () List!36621)

(assert (=> b!3305317 (= e!2055622 (++!8834 (list!13087 (left!28427 (c!560673 lt!1120225))) (list!13087 (right!28757 (c!560673 lt!1120225)))))))

(declare-fun b!3305316 () Bool)

(assert (=> b!3305316 (= e!2055622 (list!13091 (xs!14103 (c!560673 lt!1120225))))))

(declare-fun d!925697 () Bool)

(declare-fun c!560729 () Bool)

(assert (=> d!925697 (= c!560729 (is-Empty!10965 (c!560673 lt!1120225)))))

(declare-fun e!2055621 () List!36621)

(assert (=> d!925697 (= (list!13087 (c!560673 lt!1120225)) e!2055621)))

(declare-fun b!3305314 () Bool)

(assert (=> b!3305314 (= e!2055621 Nil!36497)))

(declare-fun b!3305315 () Bool)

(assert (=> b!3305315 (= e!2055621 e!2055622)))

(declare-fun c!560730 () Bool)

(assert (=> b!3305315 (= c!560730 (is-Leaf!17224 (c!560673 lt!1120225)))))

(assert (= (and d!925697 c!560729) b!3305314))

(assert (= (and d!925697 (not c!560729)) b!3305315))

(assert (= (and b!3305315 c!560730) b!3305316))

(assert (= (and b!3305315 (not c!560730)) b!3305317))

(declare-fun m!3631463 () Bool)

(assert (=> b!3305317 m!3631463))

(declare-fun m!3631465 () Bool)

(assert (=> b!3305317 m!3631465))

(assert (=> b!3305317 m!3631463))

(assert (=> b!3305317 m!3631465))

(declare-fun m!3631467 () Bool)

(assert (=> b!3305317 m!3631467))

(declare-fun m!3631469 () Bool)

(assert (=> b!3305316 m!3631469))

(assert (=> d!925517 d!925697))

(declare-fun d!925699 () Bool)

(assert (=> d!925699 (= (inv!49466 (dynLambda!14954 (toChars!7290 (transformation!5295 (rule!7799 separatorToken!241))) (value!171369 separatorToken!241))) (isBalanced!3280 (c!560673 (dynLambda!14954 (toChars!7290 (transformation!5295 (rule!7799 separatorToken!241))) (value!171369 separatorToken!241)))))))

(declare-fun bs!548991 () Bool)

(assert (= bs!548991 d!925699))

(declare-fun m!3631471 () Bool)

(assert (=> bs!548991 m!3631471))

(assert (=> tb!171455 d!925699))

(declare-fun d!925701 () Bool)

(assert (=> d!925701 (= (list!13086 (_1!21127 (lex!2210 thiss!18206 rules!2135 (print!1949 thiss!18206 (singletonSeq!2391 (h!41918 tokens!494)))))) (list!13090 (c!560674 (_1!21127 (lex!2210 thiss!18206 rules!2135 (print!1949 thiss!18206 (singletonSeq!2391 (h!41918 tokens!494))))))))))

(declare-fun bs!548992 () Bool)

(assert (= bs!548992 d!925701))

(declare-fun m!3631473 () Bool)

(assert (=> bs!548992 m!3631473))

(assert (=> d!925579 d!925701))

(assert (=> d!925579 d!925635))

(assert (=> d!925579 d!925637))

(declare-fun d!925703 () Bool)

(assert (=> d!925703 (= (list!13086 (singletonSeq!2391 (h!41918 tokens!494))) (list!13090 (c!560674 (singletonSeq!2391 (h!41918 tokens!494)))))))

(declare-fun bs!548993 () Bool)

(assert (= bs!548993 d!925703))

(declare-fun m!3631475 () Bool)

(assert (=> bs!548993 m!3631475))

(assert (=> d!925579 d!925703))

(assert (=> d!925579 d!925523))

(declare-fun d!925705 () Bool)

(declare-fun lt!1120372 () Int)

(assert (=> d!925705 (= lt!1120372 (size!27571 (list!13086 (_1!21127 lt!1120318))))))

(assert (=> d!925705 (= lt!1120372 (size!27572 (c!560674 (_1!21127 lt!1120318))))))

(assert (=> d!925705 (= (size!27567 (_1!21127 lt!1120318)) lt!1120372)))

(declare-fun bs!548994 () Bool)

(assert (= bs!548994 d!925705))

(assert (=> bs!548994 m!3631277))

(assert (=> bs!548994 m!3631277))

(declare-fun m!3631477 () Bool)

(assert (=> bs!548994 m!3631477))

(declare-fun m!3631479 () Bool)

(assert (=> bs!548994 m!3631479))

(assert (=> d!925579 d!925705))

(assert (=> d!925579 d!925581))

(declare-fun d!925707 () Bool)

(declare-fun lt!1120373 () Bool)

(assert (=> d!925707 (= lt!1120373 (isEmpty!20636 (list!13084 (_2!21127 (lex!2210 thiss!18206 rules!2135 (print!1949 thiss!18206 (singletonSeq!2391 separatorToken!241)))))))))

(assert (=> d!925707 (= lt!1120373 (isEmpty!20640 (c!560673 (_2!21127 (lex!2210 thiss!18206 rules!2135 (print!1949 thiss!18206 (singletonSeq!2391 separatorToken!241)))))))))

(assert (=> d!925707 (= (isEmpty!20637 (_2!21127 (lex!2210 thiss!18206 rules!2135 (print!1949 thiss!18206 (singletonSeq!2391 separatorToken!241))))) lt!1120373)))

(declare-fun bs!548995 () Bool)

(assert (= bs!548995 d!925707))

(declare-fun m!3631481 () Bool)

(assert (=> bs!548995 m!3631481))

(assert (=> bs!548995 m!3631481))

(declare-fun m!3631483 () Bool)

(assert (=> bs!548995 m!3631483))

(declare-fun m!3631485 () Bool)

(assert (=> bs!548995 m!3631485))

(assert (=> b!3305058 d!925707))

(assert (=> b!3305058 d!925695))

(assert (=> b!3305058 d!925693))

(assert (=> b!3305058 d!925691))

(declare-fun d!925709 () Bool)

(assert (=> d!925709 (= (list!13084 (dynLambda!14954 (toChars!7290 (transformation!5295 (rule!7799 (h!41918 tokens!494)))) (value!171369 (h!41918 tokens!494)))) (list!13087 (c!560673 (dynLambda!14954 (toChars!7290 (transformation!5295 (rule!7799 (h!41918 tokens!494)))) (value!171369 (h!41918 tokens!494))))))))

(declare-fun bs!548996 () Bool)

(assert (= bs!548996 d!925709))

(declare-fun m!3631487 () Bool)

(assert (=> bs!548996 m!3631487))

(assert (=> b!3305059 d!925709))

(declare-fun bs!548997 () Bool)

(declare-fun d!925711 () Bool)

(assert (= bs!548997 (and d!925711 d!925619)))

(declare-fun lambda!119018 () Int)

(assert (=> bs!548997 (= (and (= (toChars!7290 (transformation!5295 (rule!7799 (h!41918 tokens!494)))) (toChars!7290 (transformation!5295 (h!41919 rules!2135)))) (= (toValue!7431 (transformation!5295 (rule!7799 (h!41918 tokens!494)))) (toValue!7431 (transformation!5295 (h!41919 rules!2135))))) (= lambda!119018 lambda!119006))))

(declare-fun bs!548998 () Bool)

(assert (= bs!548998 (and d!925711 d!925649)))

(assert (=> bs!548998 (= (and (= (toChars!7290 (transformation!5295 (rule!7799 (h!41918 tokens!494)))) (toChars!7290 (transformation!5295 (rule!7799 separatorToken!241)))) (= (toValue!7431 (transformation!5295 (rule!7799 (h!41918 tokens!494)))) (toValue!7431 (transformation!5295 (rule!7799 separatorToken!241))))) (= lambda!119018 lambda!119013))))

(assert (=> d!925711 true))

(assert (=> d!925711 (< (dynLambda!14957 order!18951 (toChars!7290 (transformation!5295 (rule!7799 (h!41918 tokens!494))))) (dynLambda!14964 order!18959 lambda!119018))))

(assert (=> d!925711 true))

(assert (=> d!925711 (< (dynLambda!14955 order!18947 (toValue!7431 (transformation!5295 (rule!7799 (h!41918 tokens!494))))) (dynLambda!14964 order!18959 lambda!119018))))

(assert (=> d!925711 (= (semiInverseModEq!2190 (toChars!7290 (transformation!5295 (rule!7799 (h!41918 tokens!494)))) (toValue!7431 (transformation!5295 (rule!7799 (h!41918 tokens!494))))) (Forall!1292 lambda!119018))))

(declare-fun bs!548999 () Bool)

(assert (= bs!548999 d!925711))

(declare-fun m!3631489 () Bool)

(assert (=> bs!548999 m!3631489))

(assert (=> d!925575 d!925711))

(assert (=> b!3304944 d!925655))

(declare-fun bm!240174 () Bool)

(declare-fun call!240179 () Int)

(assert (=> bm!240174 (= call!240179 (size!27571 lt!1120264))))

(declare-fun d!925713 () Bool)

(declare-fun e!2055642 () Bool)

(assert (=> d!925713 e!2055642))

(declare-fun res!1340578 () Bool)

(assert (=> d!925713 (=> (not res!1340578) (not e!2055642))))

(declare-fun lt!1120376 () List!36622)

(declare-fun content!4967 (List!36622) (Set Token!9956))

(assert (=> d!925713 (= res!1340578 (set.subset (content!4967 lt!1120376) (content!4967 lt!1120264)))))

(declare-fun e!2055640 () List!36622)

(assert (=> d!925713 (= lt!1120376 e!2055640)))

(declare-fun c!560741 () Bool)

(assert (=> d!925713 (= c!560741 (is-Nil!36498 lt!1120264))))

(assert (=> d!925713 (= (drop!1904 lt!1120264 0) lt!1120376)))

(declare-fun b!3305342 () Bool)

(declare-fun e!2055643 () List!36622)

(assert (=> b!3305342 (= e!2055643 lt!1120264)))

(declare-fun b!3305343 () Bool)

(declare-fun e!2055641 () Int)

(assert (=> b!3305343 (= e!2055641 (- call!240179 0))))

(declare-fun b!3305344 () Bool)

(assert (=> b!3305344 (= e!2055641 0)))

(declare-fun b!3305345 () Bool)

(declare-fun e!2055639 () Int)

(assert (=> b!3305345 (= e!2055642 (= (size!27571 lt!1120376) e!2055639))))

(declare-fun c!560739 () Bool)

(assert (=> b!3305345 (= c!560739 (<= 0 0))))

(declare-fun b!3305346 () Bool)

(assert (=> b!3305346 (= e!2055643 (drop!1904 (t!253453 lt!1120264) (- 0 1)))))

(declare-fun b!3305347 () Bool)

(assert (=> b!3305347 (= e!2055639 call!240179)))

(declare-fun b!3305348 () Bool)

(assert (=> b!3305348 (= e!2055639 e!2055641)))

(declare-fun c!560740 () Bool)

(assert (=> b!3305348 (= c!560740 (>= 0 call!240179))))

(declare-fun b!3305349 () Bool)

(assert (=> b!3305349 (= e!2055640 Nil!36498)))

(declare-fun b!3305350 () Bool)

(assert (=> b!3305350 (= e!2055640 e!2055643)))

(declare-fun c!560742 () Bool)

(assert (=> b!3305350 (= c!560742 (<= 0 0))))

(assert (= (and d!925713 c!560741) b!3305349))

(assert (= (and d!925713 (not c!560741)) b!3305350))

(assert (= (and b!3305350 c!560742) b!3305342))

(assert (= (and b!3305350 (not c!560742)) b!3305346))

(assert (= (and d!925713 res!1340578) b!3305345))

(assert (= (and b!3305345 c!560739) b!3305347))

(assert (= (and b!3305345 (not c!560739)) b!3305348))

(assert (= (and b!3305348 c!560740) b!3305344))

(assert (= (and b!3305348 (not c!560740)) b!3305343))

(assert (= (or b!3305347 b!3305348 b!3305343) bm!240174))

(declare-fun m!3631497 () Bool)

(assert (=> bm!240174 m!3631497))

(declare-fun m!3631499 () Bool)

(assert (=> d!925713 m!3631499))

(declare-fun m!3631501 () Bool)

(assert (=> d!925713 m!3631501))

(declare-fun m!3631503 () Bool)

(assert (=> b!3305345 m!3631503))

(declare-fun m!3631505 () Bool)

(assert (=> b!3305346 m!3631505))

(assert (=> b!3304946 d!925713))

(declare-fun bm!240175 () Bool)

(declare-fun call!240180 () Int)

(assert (=> bm!240175 (= call!240180 (size!27571 lt!1120264))))

(declare-fun d!925721 () Bool)

(declare-fun e!2055647 () Bool)

(assert (=> d!925721 e!2055647))

(declare-fun res!1340579 () Bool)

(assert (=> d!925721 (=> (not res!1340579) (not e!2055647))))

(declare-fun lt!1120377 () List!36622)

(assert (=> d!925721 (= res!1340579 (set.subset (content!4967 lt!1120377) (content!4967 lt!1120264)))))

(declare-fun e!2055645 () List!36622)

(assert (=> d!925721 (= lt!1120377 e!2055645)))

(declare-fun c!560745 () Bool)

(assert (=> d!925721 (= c!560745 (is-Nil!36498 lt!1120264))))

(assert (=> d!925721 (= (drop!1904 lt!1120264 (+ 0 1)) lt!1120377)))

(declare-fun b!3305351 () Bool)

(declare-fun e!2055648 () List!36622)

(assert (=> b!3305351 (= e!2055648 lt!1120264)))

(declare-fun b!3305352 () Bool)

(declare-fun e!2055646 () Int)

(assert (=> b!3305352 (= e!2055646 (- call!240180 (+ 0 1)))))

(declare-fun b!3305353 () Bool)

(assert (=> b!3305353 (= e!2055646 0)))

(declare-fun b!3305354 () Bool)

(declare-fun e!2055644 () Int)

(assert (=> b!3305354 (= e!2055647 (= (size!27571 lt!1120377) e!2055644))))

(declare-fun c!560743 () Bool)

(assert (=> b!3305354 (= c!560743 (<= (+ 0 1) 0))))

(declare-fun b!3305355 () Bool)

(assert (=> b!3305355 (= e!2055648 (drop!1904 (t!253453 lt!1120264) (- (+ 0 1) 1)))))

(declare-fun b!3305356 () Bool)

(assert (=> b!3305356 (= e!2055644 call!240180)))

(declare-fun b!3305357 () Bool)

(assert (=> b!3305357 (= e!2055644 e!2055646)))

(declare-fun c!560744 () Bool)

(assert (=> b!3305357 (= c!560744 (>= (+ 0 1) call!240180))))

(declare-fun b!3305358 () Bool)

(assert (=> b!3305358 (= e!2055645 Nil!36498)))

(declare-fun b!3305359 () Bool)

(assert (=> b!3305359 (= e!2055645 e!2055648)))

(declare-fun c!560746 () Bool)

(assert (=> b!3305359 (= c!560746 (<= (+ 0 1) 0))))

(assert (= (and d!925721 c!560745) b!3305358))

(assert (= (and d!925721 (not c!560745)) b!3305359))

(assert (= (and b!3305359 c!560746) b!3305351))

(assert (= (and b!3305359 (not c!560746)) b!3305355))

(assert (= (and d!925721 res!1340579) b!3305354))

(assert (= (and b!3305354 c!560743) b!3305356))

(assert (= (and b!3305354 (not c!560743)) b!3305357))

(assert (= (and b!3305357 c!560744) b!3305353))

(assert (= (and b!3305357 (not c!560744)) b!3305352))

(assert (= (or b!3305356 b!3305357 b!3305352) bm!240175))

(assert (=> bm!240175 m!3631497))

(declare-fun m!3631509 () Bool)

(assert (=> d!925721 m!3631509))

(assert (=> d!925721 m!3631501))

(declare-fun m!3631511 () Bool)

(assert (=> b!3305354 m!3631511))

(declare-fun m!3631513 () Bool)

(assert (=> b!3305355 m!3631513))

(assert (=> b!3304946 d!925721))

(declare-fun d!925725 () Bool)

(declare-fun lt!1120383 () BalanceConc!21544)

(assert (=> d!925725 (= (list!13084 lt!1120383) (printListTailRec!596 thiss!18206 (dropList!1113 lt!1120226 (+ 0 1)) (list!13084 (++!8833 (BalanceConc!21545 Empty!10965) (charsOf!3311 (apply!8383 lt!1120226 0))))))))

(declare-fun e!2055650 () BalanceConc!21544)

(assert (=> d!925725 (= lt!1120383 e!2055650)))

(declare-fun c!560747 () Bool)

(assert (=> d!925725 (= c!560747 (>= (+ 0 1) (size!27567 lt!1120226)))))

(declare-fun e!2055649 () Bool)

(assert (=> d!925725 e!2055649))

(declare-fun res!1340580 () Bool)

(assert (=> d!925725 (=> (not res!1340580) (not e!2055649))))

(assert (=> d!925725 (= res!1340580 (>= (+ 0 1) 0))))

(assert (=> d!925725 (= (printTailRec!1381 thiss!18206 lt!1120226 (+ 0 1) (++!8833 (BalanceConc!21545 Empty!10965) (charsOf!3311 (apply!8383 lt!1120226 0)))) lt!1120383)))

(declare-fun b!3305360 () Bool)

(assert (=> b!3305360 (= e!2055649 (<= (+ 0 1) (size!27567 lt!1120226)))))

(declare-fun b!3305361 () Bool)

(assert (=> b!3305361 (= e!2055650 (++!8833 (BalanceConc!21545 Empty!10965) (charsOf!3311 (apply!8383 lt!1120226 0))))))

(declare-fun b!3305362 () Bool)

(assert (=> b!3305362 (= e!2055650 (printTailRec!1381 thiss!18206 lt!1120226 (+ 0 1 1) (++!8833 (++!8833 (BalanceConc!21545 Empty!10965) (charsOf!3311 (apply!8383 lt!1120226 0))) (charsOf!3311 (apply!8383 lt!1120226 (+ 0 1))))))))

(declare-fun lt!1120384 () List!36622)

(assert (=> b!3305362 (= lt!1120384 (list!13086 lt!1120226))))

(declare-fun lt!1120382 () Unit!51432)

(assert (=> b!3305362 (= lt!1120382 (lemmaDropApply!1072 lt!1120384 (+ 0 1)))))

(assert (=> b!3305362 (= (head!7128 (drop!1904 lt!1120384 (+ 0 1))) (apply!8384 lt!1120384 (+ 0 1)))))

(declare-fun lt!1120381 () Unit!51432)

(assert (=> b!3305362 (= lt!1120381 lt!1120382)))

(declare-fun lt!1120380 () List!36622)

(assert (=> b!3305362 (= lt!1120380 (list!13086 lt!1120226))))

(declare-fun lt!1120378 () Unit!51432)

(assert (=> b!3305362 (= lt!1120378 (lemmaDropTail!956 lt!1120380 (+ 0 1)))))

(assert (=> b!3305362 (= (tail!5266 (drop!1904 lt!1120380 (+ 0 1))) (drop!1904 lt!1120380 (+ 0 1 1)))))

(declare-fun lt!1120379 () Unit!51432)

(assert (=> b!3305362 (= lt!1120379 lt!1120378)))

(assert (= (and d!925725 res!1340580) b!3305360))

(assert (= (and d!925725 c!560747) b!3305361))

(assert (= (and d!925725 (not c!560747)) b!3305362))

(declare-fun m!3631515 () Bool)

(assert (=> d!925725 m!3631515))

(assert (=> d!925725 m!3630935))

(declare-fun m!3631517 () Bool)

(assert (=> d!925725 m!3631517))

(declare-fun m!3631519 () Bool)

(assert (=> d!925725 m!3631519))

(declare-fun m!3631521 () Bool)

(assert (=> d!925725 m!3631521))

(assert (=> d!925725 m!3630955))

(assert (=> d!925725 m!3631519))

(assert (=> d!925725 m!3631517))

(assert (=> b!3305360 m!3630935))

(declare-fun m!3631523 () Bool)

(assert (=> b!3305362 m!3631523))

(declare-fun m!3631525 () Bool)

(assert (=> b!3305362 m!3631525))

(assert (=> b!3305362 m!3630927))

(declare-fun m!3631527 () Bool)

(assert (=> b!3305362 m!3631527))

(declare-fun m!3631529 () Bool)

(assert (=> b!3305362 m!3631529))

(declare-fun m!3631531 () Bool)

(assert (=> b!3305362 m!3631531))

(declare-fun m!3631533 () Bool)

(assert (=> b!3305362 m!3631533))

(assert (=> b!3305362 m!3630955))

(assert (=> b!3305362 m!3631533))

(declare-fun m!3631535 () Bool)

(assert (=> b!3305362 m!3631535))

(assert (=> b!3305362 m!3631535))

(declare-fun m!3631541 () Bool)

(assert (=> b!3305362 m!3631541))

(assert (=> b!3305362 m!3631523))

(declare-fun m!3631543 () Bool)

(assert (=> b!3305362 m!3631543))

(assert (=> b!3305362 m!3631531))

(declare-fun m!3631545 () Bool)

(assert (=> b!3305362 m!3631545))

(declare-fun m!3631547 () Bool)

(assert (=> b!3305362 m!3631547))

(assert (=> b!3305362 m!3631545))

(declare-fun m!3631549 () Bool)

(assert (=> b!3305362 m!3631549))

(assert (=> b!3304946 d!925725))

(declare-fun d!925729 () Bool)

(assert (=> d!925729 (= (tail!5266 (drop!1904 lt!1120264 0)) (t!253453 (drop!1904 lt!1120264 0)))))

(assert (=> b!3304946 d!925729))

(declare-fun d!925733 () Bool)

(assert (=> d!925733 (= (head!7128 (drop!1904 lt!1120268 0)) (h!41918 (drop!1904 lt!1120268 0)))))

(assert (=> b!3304946 d!925733))

(declare-fun d!925735 () Bool)

(declare-fun lt!1120388 () BalanceConc!21544)

(assert (=> d!925735 (= (list!13084 lt!1120388) (originalCharacters!6009 (apply!8383 lt!1120226 0)))))

(assert (=> d!925735 (= lt!1120388 (dynLambda!14954 (toChars!7290 (transformation!5295 (rule!7799 (apply!8383 lt!1120226 0)))) (value!171369 (apply!8383 lt!1120226 0))))))

(assert (=> d!925735 (= (charsOf!3311 (apply!8383 lt!1120226 0)) lt!1120388)))

(declare-fun b_lambda!92333 () Bool)

(assert (=> (not b_lambda!92333) (not d!925735)))

(declare-fun t!253527 () Bool)

(declare-fun tb!171505 () Bool)

(assert (=> (and b!3304843 (= (toChars!7290 (transformation!5295 (rule!7799 (h!41918 tokens!494)))) (toChars!7290 (transformation!5295 (rule!7799 (apply!8383 lt!1120226 0))))) t!253527) tb!171505))

(declare-fun b!3305365 () Bool)

(declare-fun e!2055653 () Bool)

(declare-fun tp!1034932 () Bool)

(assert (=> b!3305365 (= e!2055653 (and (inv!49465 (c!560673 (dynLambda!14954 (toChars!7290 (transformation!5295 (rule!7799 (apply!8383 lt!1120226 0)))) (value!171369 (apply!8383 lt!1120226 0))))) tp!1034932))))

(declare-fun result!214326 () Bool)

(assert (=> tb!171505 (= result!214326 (and (inv!49466 (dynLambda!14954 (toChars!7290 (transformation!5295 (rule!7799 (apply!8383 lt!1120226 0)))) (value!171369 (apply!8383 lt!1120226 0)))) e!2055653))))

(assert (= tb!171505 b!3305365))

(declare-fun m!3631555 () Bool)

(assert (=> b!3305365 m!3631555))

(declare-fun m!3631557 () Bool)

(assert (=> tb!171505 m!3631557))

(assert (=> d!925735 t!253527))

(declare-fun b_and!226513 () Bool)

(assert (= b_and!226505 (and (=> t!253527 result!214326) b_and!226513)))

(declare-fun t!253529 () Bool)

(declare-fun tb!171507 () Bool)

(assert (=> (and b!3304839 (= (toChars!7290 (transformation!5295 (h!41919 rules!2135))) (toChars!7290 (transformation!5295 (rule!7799 (apply!8383 lt!1120226 0))))) t!253529) tb!171507))

(declare-fun result!214328 () Bool)

(assert (= result!214328 result!214326))

(assert (=> d!925735 t!253529))

(declare-fun b_and!226515 () Bool)

(assert (= b_and!226511 (and (=> t!253529 result!214328) b_and!226515)))

(declare-fun tb!171509 () Bool)

(declare-fun t!253531 () Bool)

(assert (=> (and b!3304844 (= (toChars!7290 (transformation!5295 (rule!7799 separatorToken!241))) (toChars!7290 (transformation!5295 (rule!7799 (apply!8383 lt!1120226 0))))) t!253531) tb!171509))

(declare-fun result!214330 () Bool)

(assert (= result!214330 result!214326))

(assert (=> d!925735 t!253531))

(declare-fun b_and!226517 () Bool)

(assert (= b_and!226503 (and (=> t!253531 result!214330) b_and!226517)))

(declare-fun t!253533 () Bool)

(declare-fun tb!171511 () Bool)

(assert (=> (and b!3305106 (= (toChars!7290 (transformation!5295 (h!41919 (t!253454 rules!2135)))) (toChars!7290 (transformation!5295 (rule!7799 (apply!8383 lt!1120226 0))))) t!253533) tb!171511))

(declare-fun result!214332 () Bool)

(assert (= result!214332 result!214326))

(assert (=> d!925735 t!253533))

(declare-fun b_and!226519 () Bool)

(assert (= b_and!226507 (and (=> t!253533 result!214332) b_and!226519)))

(declare-fun t!253535 () Bool)

(declare-fun tb!171513 () Bool)

(assert (=> (and b!3305095 (= (toChars!7290 (transformation!5295 (rule!7799 (h!41918 (t!253453 tokens!494))))) (toChars!7290 (transformation!5295 (rule!7799 (apply!8383 lt!1120226 0))))) t!253535) tb!171513))

(declare-fun result!214334 () Bool)

(assert (= result!214334 result!214326))

(assert (=> d!925735 t!253535))

(declare-fun b_and!226521 () Bool)

(assert (= b_and!226509 (and (=> t!253535 result!214334) b_and!226521)))

(declare-fun m!3631559 () Bool)

(assert (=> d!925735 m!3631559))

(declare-fun m!3631561 () Bool)

(assert (=> d!925735 m!3631561))

(assert (=> b!3304946 d!925735))

(declare-fun d!925737 () Bool)

(assert (=> d!925737 (= (tail!5266 (drop!1904 lt!1120264 0)) (drop!1904 lt!1120264 (+ 0 1)))))

(declare-fun lt!1120393 () Unit!51432)

(declare-fun choose!19137 (List!36622 Int) Unit!51432)

(assert (=> d!925737 (= lt!1120393 (choose!19137 lt!1120264 0))))

(declare-fun e!2055666 () Bool)

(assert (=> d!925737 e!2055666))

(declare-fun res!1340587 () Bool)

(assert (=> d!925737 (=> (not res!1340587) (not e!2055666))))

(assert (=> d!925737 (= res!1340587 (>= 0 0))))

(assert (=> d!925737 (= (lemmaDropTail!956 lt!1120264 0) lt!1120393)))

(declare-fun b!3305386 () Bool)

(assert (=> b!3305386 (= e!2055666 (< 0 (size!27571 lt!1120264)))))

(assert (= (and d!925737 res!1340587) b!3305386))

(assert (=> d!925737 m!3630961))

(assert (=> d!925737 m!3630961))

(assert (=> d!925737 m!3630963))

(assert (=> d!925737 m!3630949))

(declare-fun m!3631563 () Bool)

(assert (=> d!925737 m!3631563))

(assert (=> b!3305386 m!3631497))

(assert (=> b!3304946 d!925737))

(declare-fun bm!240178 () Bool)

(declare-fun call!240183 () Int)

(assert (=> bm!240178 (= call!240183 (size!27571 lt!1120268))))

(declare-fun d!925739 () Bool)

(declare-fun e!2055670 () Bool)

(assert (=> d!925739 e!2055670))

(declare-fun res!1340588 () Bool)

(assert (=> d!925739 (=> (not res!1340588) (not e!2055670))))

(declare-fun lt!1120394 () List!36622)

(assert (=> d!925739 (= res!1340588 (set.subset (content!4967 lt!1120394) (content!4967 lt!1120268)))))

(declare-fun e!2055668 () List!36622)

(assert (=> d!925739 (= lt!1120394 e!2055668)))

(declare-fun c!560758 () Bool)

(assert (=> d!925739 (= c!560758 (is-Nil!36498 lt!1120268))))

(assert (=> d!925739 (= (drop!1904 lt!1120268 0) lt!1120394)))

(declare-fun b!3305387 () Bool)

(declare-fun e!2055671 () List!36622)

(assert (=> b!3305387 (= e!2055671 lt!1120268)))

(declare-fun b!3305388 () Bool)

(declare-fun e!2055669 () Int)

(assert (=> b!3305388 (= e!2055669 (- call!240183 0))))

(declare-fun b!3305389 () Bool)

(assert (=> b!3305389 (= e!2055669 0)))

(declare-fun b!3305390 () Bool)

(declare-fun e!2055667 () Int)

(assert (=> b!3305390 (= e!2055670 (= (size!27571 lt!1120394) e!2055667))))

(declare-fun c!560756 () Bool)

(assert (=> b!3305390 (= c!560756 (<= 0 0))))

(declare-fun b!3305391 () Bool)

(assert (=> b!3305391 (= e!2055671 (drop!1904 (t!253453 lt!1120268) (- 0 1)))))

(declare-fun b!3305392 () Bool)

(assert (=> b!3305392 (= e!2055667 call!240183)))

(declare-fun b!3305393 () Bool)

(assert (=> b!3305393 (= e!2055667 e!2055669)))

(declare-fun c!560757 () Bool)

(assert (=> b!3305393 (= c!560757 (>= 0 call!240183))))

(declare-fun b!3305394 () Bool)

(assert (=> b!3305394 (= e!2055668 Nil!36498)))

(declare-fun b!3305395 () Bool)

(assert (=> b!3305395 (= e!2055668 e!2055671)))

(declare-fun c!560759 () Bool)

(assert (=> b!3305395 (= c!560759 (<= 0 0))))

(assert (= (and d!925739 c!560758) b!3305394))

(assert (= (and d!925739 (not c!560758)) b!3305395))

(assert (= (and b!3305395 c!560759) b!3305387))

(assert (= (and b!3305395 (not c!560759)) b!3305391))

(assert (= (and d!925739 res!1340588) b!3305390))

(assert (= (and b!3305390 c!560756) b!3305392))

(assert (= (and b!3305390 (not c!560756)) b!3305393))

(assert (= (and b!3305393 c!560757) b!3305389))

(assert (= (and b!3305393 (not c!560757)) b!3305388))

(assert (= (or b!3305392 b!3305393 b!3305388) bm!240178))

(declare-fun m!3631565 () Bool)

(assert (=> bm!240178 m!3631565))

(declare-fun m!3631567 () Bool)

(assert (=> d!925739 m!3631567))

(declare-fun m!3631569 () Bool)

(assert (=> d!925739 m!3631569))

(declare-fun m!3631571 () Bool)

(assert (=> b!3305390 m!3631571))

(declare-fun m!3631573 () Bool)

(assert (=> b!3305391 m!3631573))

(assert (=> b!3304946 d!925739))

(declare-fun d!925741 () Bool)

(declare-fun lt!1120398 () Token!9956)

(declare-fun contains!6595 (List!36622 Token!9956) Bool)

(assert (=> d!925741 (contains!6595 lt!1120268 lt!1120398)))

(declare-fun e!2055681 () Token!9956)

(assert (=> d!925741 (= lt!1120398 e!2055681)))

(declare-fun c!560766 () Bool)

(assert (=> d!925741 (= c!560766 (= 0 0))))

(declare-fun e!2055682 () Bool)

(assert (=> d!925741 e!2055682))

(declare-fun res!1340592 () Bool)

(assert (=> d!925741 (=> (not res!1340592) (not e!2055682))))

(assert (=> d!925741 (= res!1340592 (<= 0 0))))

(assert (=> d!925741 (= (apply!8384 lt!1120268 0) lt!1120398)))

(declare-fun b!3305411 () Bool)

(assert (=> b!3305411 (= e!2055682 (< 0 (size!27571 lt!1120268)))))

(declare-fun b!3305412 () Bool)

(assert (=> b!3305412 (= e!2055681 (head!7128 lt!1120268))))

(declare-fun b!3305413 () Bool)

(assert (=> b!3305413 (= e!2055681 (apply!8384 (tail!5266 lt!1120268) (- 0 1)))))

(assert (= (and d!925741 res!1340592) b!3305411))

(assert (= (and d!925741 c!560766) b!3305412))

(assert (= (and d!925741 (not c!560766)) b!3305413))

(declare-fun m!3631585 () Bool)

(assert (=> d!925741 m!3631585))

(assert (=> b!3305411 m!3631565))

(declare-fun m!3631587 () Bool)

(assert (=> b!3305412 m!3631587))

(declare-fun m!3631589 () Bool)

(assert (=> b!3305413 m!3631589))

(assert (=> b!3305413 m!3631589))

(declare-fun m!3631591 () Bool)

(assert (=> b!3305413 m!3631591))

(assert (=> b!3304946 d!925741))

(declare-fun d!925745 () Bool)

(declare-fun lt!1120399 () Token!9956)

(assert (=> d!925745 (= lt!1120399 (apply!8384 (list!13086 lt!1120226) 0))))

(assert (=> d!925745 (= lt!1120399 (apply!8387 (c!560674 lt!1120226) 0))))

(declare-fun e!2055683 () Bool)

(assert (=> d!925745 e!2055683))

(declare-fun res!1340593 () Bool)

(assert (=> d!925745 (=> (not res!1340593) (not e!2055683))))

(assert (=> d!925745 (= res!1340593 (<= 0 0))))

(assert (=> d!925745 (= (apply!8383 lt!1120226 0) lt!1120399)))

(declare-fun b!3305414 () Bool)

(assert (=> b!3305414 (= e!2055683 (< 0 (size!27567 lt!1120226)))))

(assert (= (and d!925745 res!1340593) b!3305414))

(assert (=> d!925745 m!3630927))

(assert (=> d!925745 m!3630927))

(declare-fun m!3631593 () Bool)

(assert (=> d!925745 m!3631593))

(declare-fun m!3631595 () Bool)

(assert (=> d!925745 m!3631595))

(assert (=> b!3305414 m!3630935))

(assert (=> b!3304946 d!925745))

(declare-fun d!925747 () Bool)

(declare-fun e!2055691 () Bool)

(assert (=> d!925747 e!2055691))

(declare-fun res!1340613 () Bool)

(assert (=> d!925747 (=> (not res!1340613) (not e!2055691))))

(declare-fun appendAssocInst!758 (Conc!10965 Conc!10965) Bool)

(assert (=> d!925747 (= res!1340613 (appendAssocInst!758 (c!560673 (BalanceConc!21545 Empty!10965)) (c!560673 (charsOf!3311 (apply!8383 lt!1120226 0)))))))

(declare-fun lt!1120407 () BalanceConc!21544)

(declare-fun ++!8837 (Conc!10965 Conc!10965) Conc!10965)

(assert (=> d!925747 (= lt!1120407 (BalanceConc!21545 (++!8837 (c!560673 (BalanceConc!21545 Empty!10965)) (c!560673 (charsOf!3311 (apply!8383 lt!1120226 0))))))))

(assert (=> d!925747 (= (++!8833 (BalanceConc!21545 Empty!10965) (charsOf!3311 (apply!8383 lt!1120226 0))) lt!1120407)))

(declare-fun b!3305437 () Bool)

(assert (=> b!3305437 (= e!2055691 (= (list!13084 lt!1120407) (++!8834 (list!13084 (BalanceConc!21545 Empty!10965)) (list!13084 (charsOf!3311 (apply!8383 lt!1120226 0))))))))

(declare-fun b!3305434 () Bool)

(declare-fun res!1340615 () Bool)

(assert (=> b!3305434 (=> (not res!1340615) (not e!2055691))))

(assert (=> b!3305434 (= res!1340615 (isBalanced!3280 (++!8837 (c!560673 (BalanceConc!21545 Empty!10965)) (c!560673 (charsOf!3311 (apply!8383 lt!1120226 0))))))))

(declare-fun b!3305436 () Bool)

(declare-fun res!1340616 () Bool)

(assert (=> b!3305436 (=> (not res!1340616) (not e!2055691))))

(declare-fun height!1605 (Conc!10965) Int)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!3305436 (= res!1340616 (>= (height!1605 (++!8837 (c!560673 (BalanceConc!21545 Empty!10965)) (c!560673 (charsOf!3311 (apply!8383 lt!1120226 0))))) (max!0 (height!1605 (c!560673 (BalanceConc!21545 Empty!10965))) (height!1605 (c!560673 (charsOf!3311 (apply!8383 lt!1120226 0)))))))))

(declare-fun b!3305435 () Bool)

(declare-fun res!1340614 () Bool)

(assert (=> b!3305435 (=> (not res!1340614) (not e!2055691))))

(assert (=> b!3305435 (= res!1340614 (<= (height!1605 (++!8837 (c!560673 (BalanceConc!21545 Empty!10965)) (c!560673 (charsOf!3311 (apply!8383 lt!1120226 0))))) (+ (max!0 (height!1605 (c!560673 (BalanceConc!21545 Empty!10965))) (height!1605 (c!560673 (charsOf!3311 (apply!8383 lt!1120226 0))))) 1)))))

(assert (= (and d!925747 res!1340613) b!3305434))

(assert (= (and b!3305434 res!1340615) b!3305435))

(assert (= (and b!3305435 res!1340614) b!3305436))

(assert (= (and b!3305436 res!1340616) b!3305437))

(declare-fun m!3631601 () Bool)

(assert (=> b!3305437 m!3631601))

(assert (=> b!3305437 m!3630939))

(assert (=> b!3305437 m!3630953))

(declare-fun m!3631603 () Bool)

(assert (=> b!3305437 m!3631603))

(assert (=> b!3305437 m!3630939))

(assert (=> b!3305437 m!3631603))

(declare-fun m!3631605 () Bool)

(assert (=> b!3305437 m!3631605))

(declare-fun m!3631607 () Bool)

(assert (=> d!925747 m!3631607))

(declare-fun m!3631609 () Bool)

(assert (=> d!925747 m!3631609))

(assert (=> b!3305436 m!3631609))

(declare-fun m!3631611 () Bool)

(assert (=> b!3305436 m!3631611))

(declare-fun m!3631613 () Bool)

(assert (=> b!3305436 m!3631613))

(assert (=> b!3305436 m!3631609))

(declare-fun m!3631615 () Bool)

(assert (=> b!3305436 m!3631615))

(assert (=> b!3305436 m!3631615))

(assert (=> b!3305436 m!3631613))

(declare-fun m!3631617 () Bool)

(assert (=> b!3305436 m!3631617))

(assert (=> b!3305434 m!3631609))

(assert (=> b!3305434 m!3631609))

(declare-fun m!3631619 () Bool)

(assert (=> b!3305434 m!3631619))

(assert (=> b!3305435 m!3631609))

(assert (=> b!3305435 m!3631611))

(assert (=> b!3305435 m!3631613))

(assert (=> b!3305435 m!3631609))

(assert (=> b!3305435 m!3631615))

(assert (=> b!3305435 m!3631615))

(assert (=> b!3305435 m!3631613))

(assert (=> b!3305435 m!3631617))

(assert (=> b!3304946 d!925747))

(assert (=> b!3304946 d!925643))

(declare-fun d!925751 () Bool)

(assert (=> d!925751 (= (head!7128 (drop!1904 lt!1120268 0)) (apply!8384 lt!1120268 0))))

(declare-fun lt!1120412 () Unit!51432)

(declare-fun choose!19138 (List!36622 Int) Unit!51432)

(assert (=> d!925751 (= lt!1120412 (choose!19138 lt!1120268 0))))

(declare-fun e!2055700 () Bool)

(assert (=> d!925751 e!2055700))

(declare-fun res!1340624 () Bool)

(assert (=> d!925751 (=> (not res!1340624) (not e!2055700))))

(assert (=> d!925751 (= res!1340624 (>= 0 0))))

(assert (=> d!925751 (= (lemmaDropApply!1072 lt!1120268 0) lt!1120412)))

(declare-fun b!3305453 () Bool)

(assert (=> b!3305453 (= e!2055700 (< 0 (size!27571 lt!1120268)))))

(assert (= (and d!925751 res!1340624) b!3305453))

(assert (=> d!925751 m!3630943))

(assert (=> d!925751 m!3630943))

(assert (=> d!925751 m!3630959))

(assert (=> d!925751 m!3630965))

(declare-fun m!3631647 () Bool)

(assert (=> d!925751 m!3631647))

(assert (=> b!3305453 m!3631565))

(assert (=> b!3304946 d!925751))

(declare-fun d!925757 () Bool)

(declare-fun lt!1120413 () Bool)

(assert (=> d!925757 (= lt!1120413 (isEmpty!20636 (list!13084 (_2!21127 lt!1120318))))))

(assert (=> d!925757 (= lt!1120413 (isEmpty!20640 (c!560673 (_2!21127 lt!1120318))))))

(assert (=> d!925757 (= (isEmpty!20637 (_2!21127 lt!1120318)) lt!1120413)))

(declare-fun bs!549003 () Bool)

(assert (= bs!549003 d!925757))

(declare-fun m!3631649 () Bool)

(assert (=> bs!549003 m!3631649))

(assert (=> bs!549003 m!3631649))

(declare-fun m!3631651 () Bool)

(assert (=> bs!549003 m!3631651))

(declare-fun m!3631653 () Bool)

(assert (=> bs!549003 m!3631653))

(assert (=> b!3305075 d!925757))

(declare-fun d!925759 () Bool)

(assert (=> d!925759 (= (isEmpty!20636 (originalCharacters!6009 separatorToken!241)) (is-Nil!36497 (originalCharacters!6009 separatorToken!241)))))

(assert (=> d!925511 d!925759))

(declare-fun d!925761 () Bool)

(declare-fun e!2055709 () Bool)

(assert (=> d!925761 e!2055709))

(declare-fun res!1340630 () Bool)

(assert (=> d!925761 (=> (not res!1340630) (not e!2055709))))

(declare-fun lt!1120420 () BalanceConc!21546)

(assert (=> d!925761 (= res!1340630 (= (list!13086 lt!1120420) tokens!494))))

(declare-fun fromList!658 (List!36622) Conc!10966)

(assert (=> d!925761 (= lt!1120420 (BalanceConc!21547 (fromList!658 tokens!494)))))

(assert (=> d!925761 (= (fromListB!1601 tokens!494) lt!1120420)))

(declare-fun b!3305465 () Bool)

(assert (=> b!3305465 (= e!2055709 (isBalanced!3278 (fromList!658 tokens!494)))))

(assert (= (and d!925761 res!1340630) b!3305465))

(declare-fun m!3631665 () Bool)

(assert (=> d!925761 m!3631665))

(declare-fun m!3631667 () Bool)

(assert (=> d!925761 m!3631667))

(assert (=> b!3305465 m!3631667))

(assert (=> b!3305465 m!3631667))

(declare-fun m!3631669 () Bool)

(assert (=> b!3305465 m!3631669))

(assert (=> d!925555 d!925761))

(declare-fun d!925765 () Bool)

(declare-fun charsToBigInt!0 (List!36620 Int) Int)

(assert (=> d!925765 (= (inv!15 (value!171369 (h!41918 tokens!494))) (= (charsToBigInt!0 (text!39124 (value!171369 (h!41918 tokens!494))) 0) (value!171364 (value!171369 (h!41918 tokens!494)))))))

(declare-fun bs!549004 () Bool)

(assert (= bs!549004 d!925765))

(declare-fun m!3631699 () Bool)

(assert (=> bs!549004 m!3631699))

(assert (=> b!3305066 d!925765))

(declare-fun d!925769 () Bool)

(assert (=> d!925769 (= (inv!49458 (tag!5841 (rule!7799 (h!41918 (t!253453 tokens!494))))) (= (mod (str.len (value!171368 (tag!5841 (rule!7799 (h!41918 (t!253453 tokens!494)))))) 2) 0))))

(assert (=> b!3305094 d!925769))

(declare-fun d!925771 () Bool)

(declare-fun res!1340632 () Bool)

(declare-fun e!2055713 () Bool)

(assert (=> d!925771 (=> (not res!1340632) (not e!2055713))))

(assert (=> d!925771 (= res!1340632 (semiInverseModEq!2190 (toChars!7290 (transformation!5295 (rule!7799 (h!41918 (t!253453 tokens!494))))) (toValue!7431 (transformation!5295 (rule!7799 (h!41918 (t!253453 tokens!494)))))))))

(assert (=> d!925771 (= (inv!49462 (transformation!5295 (rule!7799 (h!41918 (t!253453 tokens!494))))) e!2055713)))

(declare-fun b!3305470 () Bool)

(assert (=> b!3305470 (= e!2055713 (equivClasses!2089 (toChars!7290 (transformation!5295 (rule!7799 (h!41918 (t!253453 tokens!494))))) (toValue!7431 (transformation!5295 (rule!7799 (h!41918 (t!253453 tokens!494)))))))))

(assert (= (and d!925771 res!1340632) b!3305470))

(declare-fun m!3631713 () Bool)

(assert (=> d!925771 m!3631713))

(declare-fun m!3631715 () Bool)

(assert (=> b!3305470 m!3631715))

(assert (=> b!3305094 d!925771))

(declare-fun d!925775 () Bool)

(declare-fun lt!1120428 () Int)

(assert (=> d!925775 (>= lt!1120428 0)))

(declare-fun e!2055714 () Int)

(assert (=> d!925775 (= lt!1120428 e!2055714)))

(declare-fun c!560782 () Bool)

(assert (=> d!925775 (= c!560782 (is-Nil!36497 (originalCharacters!6009 separatorToken!241)))))

(assert (=> d!925775 (= (size!27566 (originalCharacters!6009 separatorToken!241)) lt!1120428)))

(declare-fun b!3305471 () Bool)

(assert (=> b!3305471 (= e!2055714 0)))

(declare-fun b!3305472 () Bool)

(assert (=> b!3305472 (= e!2055714 (+ 1 (size!27566 (t!253452 (originalCharacters!6009 separatorToken!241)))))))

(assert (= (and d!925775 c!560782) b!3305471))

(assert (= (and d!925775 (not c!560782)) b!3305472))

(declare-fun m!3631717 () Bool)

(assert (=> b!3305472 m!3631717))

(assert (=> b!3304929 d!925775))

(declare-fun d!925777 () Bool)

(declare-fun res!1340649 () Bool)

(declare-fun e!2055728 () Bool)

(assert (=> d!925777 (=> res!1340649 e!2055728)))

(assert (=> d!925777 (= res!1340649 (not (is-Node!10966 (c!560674 lt!1120271))))))

(assert (=> d!925777 (= (isBalanced!3278 (c!560674 lt!1120271)) e!2055728)))

(declare-fun b!3305497 () Bool)

(declare-fun e!2055727 () Bool)

(declare-fun isEmpty!20642 (Conc!10966) Bool)

(assert (=> b!3305497 (= e!2055727 (not (isEmpty!20642 (right!28758 (c!560674 lt!1120271)))))))

(declare-fun b!3305498 () Bool)

(declare-fun res!1340651 () Bool)

(assert (=> b!3305498 (=> (not res!1340651) (not e!2055727))))

(assert (=> b!3305498 (= res!1340651 (not (isEmpty!20642 (left!28428 (c!560674 lt!1120271)))))))

(declare-fun b!3305499 () Bool)

(assert (=> b!3305499 (= e!2055728 e!2055727)))

(declare-fun res!1340653 () Bool)

(assert (=> b!3305499 (=> (not res!1340653) (not e!2055727))))

(declare-fun height!1606 (Conc!10966) Int)

(assert (=> b!3305499 (= res!1340653 (<= (- 1) (- (height!1606 (left!28428 (c!560674 lt!1120271))) (height!1606 (right!28758 (c!560674 lt!1120271))))))))

(declare-fun b!3305500 () Bool)

(declare-fun res!1340654 () Bool)

(assert (=> b!3305500 (=> (not res!1340654) (not e!2055727))))

(assert (=> b!3305500 (= res!1340654 (isBalanced!3278 (left!28428 (c!560674 lt!1120271))))))

(declare-fun b!3305501 () Bool)

(declare-fun res!1340650 () Bool)

(assert (=> b!3305501 (=> (not res!1340650) (not e!2055727))))

(assert (=> b!3305501 (= res!1340650 (<= (- (height!1606 (left!28428 (c!560674 lt!1120271))) (height!1606 (right!28758 (c!560674 lt!1120271)))) 1))))

(declare-fun b!3305502 () Bool)

(declare-fun res!1340652 () Bool)

(assert (=> b!3305502 (=> (not res!1340652) (not e!2055727))))

(assert (=> b!3305502 (= res!1340652 (isBalanced!3278 (right!28758 (c!560674 lt!1120271))))))

(assert (= (and d!925777 (not res!1340649)) b!3305499))

(assert (= (and b!3305499 res!1340653) b!3305501))

(assert (= (and b!3305501 res!1340650) b!3305500))

(assert (= (and b!3305500 res!1340654) b!3305502))

(assert (= (and b!3305502 res!1340652) b!3305498))

(assert (= (and b!3305498 res!1340651) b!3305497))

(declare-fun m!3631729 () Bool)

(assert (=> b!3305500 m!3631729))

(declare-fun m!3631731 () Bool)

(assert (=> b!3305499 m!3631731))

(declare-fun m!3631733 () Bool)

(assert (=> b!3305499 m!3631733))

(declare-fun m!3631735 () Bool)

(assert (=> b!3305498 m!3631735))

(declare-fun m!3631737 () Bool)

(assert (=> b!3305502 m!3631737))

(assert (=> b!3305501 m!3631731))

(assert (=> b!3305501 m!3631733))

(declare-fun m!3631739 () Bool)

(assert (=> b!3305497 m!3631739))

(assert (=> b!3304949 d!925777))

(declare-fun bs!549005 () Bool)

(declare-fun d!925783 () Bool)

(assert (= bs!549005 (and d!925783 d!925621)))

(declare-fun lambda!119019 () Int)

(assert (=> bs!549005 (= (= (toValue!7431 (transformation!5295 (h!41919 rules!2135))) (toValue!7431 (transformation!5295 (rule!7799 (h!41918 tokens!494))))) (= lambda!119019 lambda!119009))))

(declare-fun bs!549006 () Bool)

(assert (= bs!549006 (and d!925783 d!925667)))

(assert (=> bs!549006 (= (= (toValue!7431 (transformation!5295 (h!41919 rules!2135))) (toValue!7431 (transformation!5295 (rule!7799 separatorToken!241)))) (= lambda!119019 lambda!119014))))

(assert (=> d!925783 true))

(assert (=> d!925783 (< (dynLambda!14955 order!18947 (toValue!7431 (transformation!5295 (h!41919 rules!2135)))) (dynLambda!14965 order!18961 lambda!119019))))

(assert (=> d!925783 (= (equivClasses!2089 (toChars!7290 (transformation!5295 (h!41919 rules!2135))) (toValue!7431 (transformation!5295 (h!41919 rules!2135)))) (Forall2!889 lambda!119019))))

(declare-fun bs!549007 () Bool)

(assert (= bs!549007 d!925783))

(declare-fun m!3631741 () Bool)

(assert (=> bs!549007 m!3631741))

(assert (=> b!3305042 d!925783))

(declare-fun d!925785 () Bool)

(assert (=> d!925785 (= (inv!17 (value!171369 separatorToken!241)) (= (charsToBigInt!1 (text!39123 (value!171369 separatorToken!241))) (value!171361 (value!171369 separatorToken!241))))))

(declare-fun bs!549008 () Bool)

(assert (= bs!549008 d!925785))

(declare-fun m!3631743 () Bool)

(assert (=> bs!549008 m!3631743))

(assert (=> b!3304919 d!925785))

(declare-fun d!925787 () Bool)

(declare-fun e!2055739 () Bool)

(assert (=> d!925787 e!2055739))

(declare-fun res!1340665 () Bool)

(assert (=> d!925787 (=> (not res!1340665) (not e!2055739))))

(declare-fun lt!1120438 () List!36621)

(declare-fun content!4968 (List!36621) (Set C!20294))

(assert (=> d!925787 (= res!1340665 (= (content!4968 lt!1120438) (set.union (content!4968 (list!13084 (charsOf!3311 (h!41918 (Cons!36498 (h!41918 tokens!494) Nil!36498))))) (content!4968 (printList!1434 thiss!18206 (t!253453 (Cons!36498 (h!41918 tokens!494) Nil!36498)))))))))

(declare-fun e!2055738 () List!36621)

(assert (=> d!925787 (= lt!1120438 e!2055738)))

(declare-fun c!560789 () Bool)

(assert (=> d!925787 (= c!560789 (is-Nil!36497 (list!13084 (charsOf!3311 (h!41918 (Cons!36498 (h!41918 tokens!494) Nil!36498))))))))

(assert (=> d!925787 (= (++!8834 (list!13084 (charsOf!3311 (h!41918 (Cons!36498 (h!41918 tokens!494) Nil!36498)))) (printList!1434 thiss!18206 (t!253453 (Cons!36498 (h!41918 tokens!494) Nil!36498)))) lt!1120438)))

(declare-fun b!3305518 () Bool)

(declare-fun res!1340664 () Bool)

(assert (=> b!3305518 (=> (not res!1340664) (not e!2055739))))

(assert (=> b!3305518 (= res!1340664 (= (size!27566 lt!1120438) (+ (size!27566 (list!13084 (charsOf!3311 (h!41918 (Cons!36498 (h!41918 tokens!494) Nil!36498))))) (size!27566 (printList!1434 thiss!18206 (t!253453 (Cons!36498 (h!41918 tokens!494) Nil!36498)))))))))

(declare-fun b!3305519 () Bool)

(assert (=> b!3305519 (= e!2055739 (or (not (= (printList!1434 thiss!18206 (t!253453 (Cons!36498 (h!41918 tokens!494) Nil!36498))) Nil!36497)) (= lt!1120438 (list!13084 (charsOf!3311 (h!41918 (Cons!36498 (h!41918 tokens!494) Nil!36498)))))))))

(declare-fun b!3305516 () Bool)

(assert (=> b!3305516 (= e!2055738 (printList!1434 thiss!18206 (t!253453 (Cons!36498 (h!41918 tokens!494) Nil!36498))))))

(declare-fun b!3305517 () Bool)

(assert (=> b!3305517 (= e!2055738 (Cons!36497 (h!41917 (list!13084 (charsOf!3311 (h!41918 (Cons!36498 (h!41918 tokens!494) Nil!36498))))) (++!8834 (t!253452 (list!13084 (charsOf!3311 (h!41918 (Cons!36498 (h!41918 tokens!494) Nil!36498))))) (printList!1434 thiss!18206 (t!253453 (Cons!36498 (h!41918 tokens!494) Nil!36498))))))))

(assert (= (and d!925787 c!560789) b!3305516))

(assert (= (and d!925787 (not c!560789)) b!3305517))

(assert (= (and d!925787 res!1340665) b!3305518))

(assert (= (and b!3305518 res!1340664) b!3305519))

(declare-fun m!3631749 () Bool)

(assert (=> d!925787 m!3631749))

(assert (=> d!925787 m!3630975))

(declare-fun m!3631751 () Bool)

(assert (=> d!925787 m!3631751))

(assert (=> d!925787 m!3630977))

(declare-fun m!3631753 () Bool)

(assert (=> d!925787 m!3631753))

(declare-fun m!3631755 () Bool)

(assert (=> b!3305518 m!3631755))

(assert (=> b!3305518 m!3630975))

(declare-fun m!3631757 () Bool)

(assert (=> b!3305518 m!3631757))

(assert (=> b!3305518 m!3630977))

(declare-fun m!3631759 () Bool)

(assert (=> b!3305518 m!3631759))

(assert (=> b!3305517 m!3630977))

(declare-fun m!3631761 () Bool)

(assert (=> b!3305517 m!3631761))

(assert (=> b!3304954 d!925787))

(declare-fun d!925797 () Bool)

(assert (=> d!925797 (= (list!13084 (charsOf!3311 (h!41918 (Cons!36498 (h!41918 tokens!494) Nil!36498)))) (list!13087 (c!560673 (charsOf!3311 (h!41918 (Cons!36498 (h!41918 tokens!494) Nil!36498))))))))

(declare-fun bs!549010 () Bool)

(assert (= bs!549010 d!925797))

(declare-fun m!3631763 () Bool)

(assert (=> bs!549010 m!3631763))

(assert (=> b!3304954 d!925797))

(declare-fun d!925799 () Bool)

(declare-fun lt!1120439 () BalanceConc!21544)

(assert (=> d!925799 (= (list!13084 lt!1120439) (originalCharacters!6009 (h!41918 (Cons!36498 (h!41918 tokens!494) Nil!36498))))))

(assert (=> d!925799 (= lt!1120439 (dynLambda!14954 (toChars!7290 (transformation!5295 (rule!7799 (h!41918 (Cons!36498 (h!41918 tokens!494) Nil!36498))))) (value!171369 (h!41918 (Cons!36498 (h!41918 tokens!494) Nil!36498)))))))

(assert (=> d!925799 (= (charsOf!3311 (h!41918 (Cons!36498 (h!41918 tokens!494) Nil!36498))) lt!1120439)))

(declare-fun b_lambda!92337 () Bool)

(assert (=> (not b_lambda!92337) (not d!925799)))

(declare-fun t!253548 () Bool)

(declare-fun tb!171525 () Bool)

(assert (=> (and b!3305095 (= (toChars!7290 (transformation!5295 (rule!7799 (h!41918 (t!253453 tokens!494))))) (toChars!7290 (transformation!5295 (rule!7799 (h!41918 (Cons!36498 (h!41918 tokens!494) Nil!36498)))))) t!253548) tb!171525))

(declare-fun b!3305520 () Bool)

(declare-fun e!2055740 () Bool)

(declare-fun tp!1034934 () Bool)

(assert (=> b!3305520 (= e!2055740 (and (inv!49465 (c!560673 (dynLambda!14954 (toChars!7290 (transformation!5295 (rule!7799 (h!41918 (Cons!36498 (h!41918 tokens!494) Nil!36498))))) (value!171369 (h!41918 (Cons!36498 (h!41918 tokens!494) Nil!36498)))))) tp!1034934))))

(declare-fun result!214346 () Bool)

(assert (=> tb!171525 (= result!214346 (and (inv!49466 (dynLambda!14954 (toChars!7290 (transformation!5295 (rule!7799 (h!41918 (Cons!36498 (h!41918 tokens!494) Nil!36498))))) (value!171369 (h!41918 (Cons!36498 (h!41918 tokens!494) Nil!36498))))) e!2055740))))

(assert (= tb!171525 b!3305520))

(declare-fun m!3631765 () Bool)

(assert (=> b!3305520 m!3631765))

(declare-fun m!3631767 () Bool)

(assert (=> tb!171525 m!3631767))

(assert (=> d!925799 t!253548))

(declare-fun b_and!226533 () Bool)

(assert (= b_and!226521 (and (=> t!253548 result!214346) b_and!226533)))

(declare-fun tb!171527 () Bool)

(declare-fun t!253550 () Bool)

(assert (=> (and b!3305106 (= (toChars!7290 (transformation!5295 (h!41919 (t!253454 rules!2135)))) (toChars!7290 (transformation!5295 (rule!7799 (h!41918 (Cons!36498 (h!41918 tokens!494) Nil!36498)))))) t!253550) tb!171527))

(declare-fun result!214348 () Bool)

(assert (= result!214348 result!214346))

(assert (=> d!925799 t!253550))

(declare-fun b_and!226535 () Bool)

(assert (= b_and!226519 (and (=> t!253550 result!214348) b_and!226535)))

(declare-fun tb!171529 () Bool)

(declare-fun t!253552 () Bool)

(assert (=> (and b!3304844 (= (toChars!7290 (transformation!5295 (rule!7799 separatorToken!241))) (toChars!7290 (transformation!5295 (rule!7799 (h!41918 (Cons!36498 (h!41918 tokens!494) Nil!36498)))))) t!253552) tb!171529))

(declare-fun result!214350 () Bool)

(assert (= result!214350 result!214346))

(assert (=> d!925799 t!253552))

(declare-fun b_and!226537 () Bool)

(assert (= b_and!226517 (and (=> t!253552 result!214350) b_and!226537)))

(declare-fun t!253554 () Bool)

(declare-fun tb!171531 () Bool)

(assert (=> (and b!3304839 (= (toChars!7290 (transformation!5295 (h!41919 rules!2135))) (toChars!7290 (transformation!5295 (rule!7799 (h!41918 (Cons!36498 (h!41918 tokens!494) Nil!36498)))))) t!253554) tb!171531))

(declare-fun result!214352 () Bool)

(assert (= result!214352 result!214346))

(assert (=> d!925799 t!253554))

(declare-fun b_and!226539 () Bool)

(assert (= b_and!226515 (and (=> t!253554 result!214352) b_and!226539)))

(declare-fun t!253556 () Bool)

(declare-fun tb!171533 () Bool)

(assert (=> (and b!3304843 (= (toChars!7290 (transformation!5295 (rule!7799 (h!41918 tokens!494)))) (toChars!7290 (transformation!5295 (rule!7799 (h!41918 (Cons!36498 (h!41918 tokens!494) Nil!36498)))))) t!253556) tb!171533))

(declare-fun result!214354 () Bool)

(assert (= result!214354 result!214346))

(assert (=> d!925799 t!253556))

(declare-fun b_and!226541 () Bool)

(assert (= b_and!226513 (and (=> t!253556 result!214354) b_and!226541)))

(declare-fun m!3631771 () Bool)

(assert (=> d!925799 m!3631771))

(declare-fun m!3631775 () Bool)

(assert (=> d!925799 m!3631775))

(assert (=> b!3304954 d!925799))

(declare-fun d!925803 () Bool)

(declare-fun c!560790 () Bool)

(assert (=> d!925803 (= c!560790 (is-Cons!36498 (t!253453 (Cons!36498 (h!41918 tokens!494) Nil!36498))))))

(declare-fun e!2055741 () List!36621)

(assert (=> d!925803 (= (printList!1434 thiss!18206 (t!253453 (Cons!36498 (h!41918 tokens!494) Nil!36498))) e!2055741)))

(declare-fun b!3305523 () Bool)

(assert (=> b!3305523 (= e!2055741 (++!8834 (list!13084 (charsOf!3311 (h!41918 (t!253453 (Cons!36498 (h!41918 tokens!494) Nil!36498))))) (printList!1434 thiss!18206 (t!253453 (t!253453 (Cons!36498 (h!41918 tokens!494) Nil!36498))))))))

(declare-fun b!3305524 () Bool)

(assert (=> b!3305524 (= e!2055741 Nil!36497)))

(assert (= (and d!925803 c!560790) b!3305523))

(assert (= (and d!925803 (not c!560790)) b!3305524))

(declare-fun m!3631779 () Bool)

(assert (=> b!3305523 m!3631779))

(assert (=> b!3305523 m!3631779))

(declare-fun m!3631783 () Bool)

(assert (=> b!3305523 m!3631783))

(declare-fun m!3631787 () Bool)

(assert (=> b!3305523 m!3631787))

(assert (=> b!3305523 m!3631783))

(assert (=> b!3305523 m!3631787))

(declare-fun m!3631791 () Bool)

(assert (=> b!3305523 m!3631791))

(assert (=> b!3304954 d!925803))

(declare-fun d!925811 () Bool)

(declare-fun lt!1120442 () Bool)

(assert (=> d!925811 (= lt!1120442 (isEmpty!20636 (list!13084 (_2!21127 lt!1120316))))))

(assert (=> d!925811 (= lt!1120442 (isEmpty!20640 (c!560673 (_2!21127 lt!1120316))))))

(assert (=> d!925811 (= (isEmpty!20637 (_2!21127 lt!1120316)) lt!1120442)))

(declare-fun bs!549015 () Bool)

(assert (= bs!549015 d!925811))

(declare-fun m!3631799 () Bool)

(assert (=> bs!549015 m!3631799))

(assert (=> bs!549015 m!3631799))

(declare-fun m!3631801 () Bool)

(assert (=> bs!549015 m!3631801))

(declare-fun m!3631803 () Bool)

(assert (=> bs!549015 m!3631803))

(assert (=> b!3305057 d!925811))

(declare-fun d!925815 () Bool)

(assert (=> d!925815 (= (isEmpty!20636 (originalCharacters!6009 (h!41918 tokens!494))) (is-Nil!36497 (originalCharacters!6009 (h!41918 tokens!494))))))

(assert (=> d!925569 d!925815))

(declare-fun d!925817 () Bool)

(declare-fun c!560791 () Bool)

(assert (=> d!925817 (= c!560791 (is-Node!10965 (c!560673 (dynLambda!14954 (toChars!7290 (transformation!5295 (rule!7799 separatorToken!241))) (value!171369 separatorToken!241)))))))

(declare-fun e!2055743 () Bool)

(assert (=> d!925817 (= (inv!49465 (c!560673 (dynLambda!14954 (toChars!7290 (transformation!5295 (rule!7799 separatorToken!241))) (value!171369 separatorToken!241)))) e!2055743)))

(declare-fun b!3305526 () Bool)

(assert (=> b!3305526 (= e!2055743 (inv!49469 (c!560673 (dynLambda!14954 (toChars!7290 (transformation!5295 (rule!7799 separatorToken!241))) (value!171369 separatorToken!241)))))))

(declare-fun b!3305527 () Bool)

(declare-fun e!2055744 () Bool)

(assert (=> b!3305527 (= e!2055743 e!2055744)))

(declare-fun res!1340667 () Bool)

(assert (=> b!3305527 (= res!1340667 (not (is-Leaf!17224 (c!560673 (dynLambda!14954 (toChars!7290 (transformation!5295 (rule!7799 separatorToken!241))) (value!171369 separatorToken!241))))))))

(assert (=> b!3305527 (=> res!1340667 e!2055744)))

(declare-fun b!3305528 () Bool)

(assert (=> b!3305528 (= e!2055744 (inv!49470 (c!560673 (dynLambda!14954 (toChars!7290 (transformation!5295 (rule!7799 separatorToken!241))) (value!171369 separatorToken!241)))))))

(assert (= (and d!925817 c!560791) b!3305526))

(assert (= (and d!925817 (not c!560791)) b!3305527))

(assert (= (and b!3305527 (not res!1340667)) b!3305528))

(declare-fun m!3631811 () Bool)

(assert (=> b!3305526 m!3631811))

(declare-fun m!3631813 () Bool)

(assert (=> b!3305528 m!3631813))

(assert (=> b!3304934 d!925817))

(declare-fun d!925821 () Bool)

(assert (=> d!925821 (= (inv!15 (value!171369 separatorToken!241)) (= (charsToBigInt!0 (text!39124 (value!171369 separatorToken!241)) 0) (value!171364 (value!171369 separatorToken!241))))))

(declare-fun bs!549017 () Bool)

(assert (= bs!549017 d!925821))

(declare-fun m!3631815 () Bool)

(assert (=> bs!549017 m!3631815))

(assert (=> b!3304923 d!925821))

(declare-fun d!925823 () Bool)

(assert (=> d!925823 (= (inv!49458 (tag!5841 (h!41919 (t!253454 rules!2135)))) (= (mod (str.len (value!171368 (tag!5841 (h!41919 (t!253454 rules!2135))))) 2) 0))))

(assert (=> b!3305105 d!925823))

(declare-fun d!925825 () Bool)

(declare-fun res!1340668 () Bool)

(declare-fun e!2055745 () Bool)

(assert (=> d!925825 (=> (not res!1340668) (not e!2055745))))

(assert (=> d!925825 (= res!1340668 (semiInverseModEq!2190 (toChars!7290 (transformation!5295 (h!41919 (t!253454 rules!2135)))) (toValue!7431 (transformation!5295 (h!41919 (t!253454 rules!2135))))))))

(assert (=> d!925825 (= (inv!49462 (transformation!5295 (h!41919 (t!253454 rules!2135)))) e!2055745)))

(declare-fun b!3305529 () Bool)

(assert (=> b!3305529 (= e!2055745 (equivClasses!2089 (toChars!7290 (transformation!5295 (h!41919 (t!253454 rules!2135)))) (toValue!7431 (transformation!5295 (h!41919 (t!253454 rules!2135))))))))

(assert (= (and d!925825 res!1340668) b!3305529))

(declare-fun m!3631817 () Bool)

(assert (=> d!925825 m!3631817))

(declare-fun m!3631819 () Bool)

(assert (=> b!3305529 m!3631819))

(assert (=> b!3305105 d!925825))

(declare-fun d!925827 () Bool)

(assert (=> d!925827 (= (list!13086 lt!1120271) (list!13090 (c!560674 lt!1120271)))))

(declare-fun bs!549018 () Bool)

(assert (= bs!549018 d!925827))

(declare-fun m!3631821 () Bool)

(assert (=> bs!549018 m!3631821))

(assert (=> d!925523 d!925827))

(declare-fun d!925829 () Bool)

(declare-fun e!2055748 () Bool)

(assert (=> d!925829 e!2055748))

(declare-fun res!1340671 () Bool)

(assert (=> d!925829 (=> (not res!1340671) (not e!2055748))))

(declare-fun lt!1120446 () BalanceConc!21546)

(assert (=> d!925829 (= res!1340671 (= (list!13086 lt!1120446) (Cons!36498 (h!41918 tokens!494) Nil!36498)))))

(declare-fun choose!19139 (Token!9956) BalanceConc!21546)

(assert (=> d!925829 (= lt!1120446 (choose!19139 (h!41918 tokens!494)))))

(assert (=> d!925829 (= (singleton!1029 (h!41918 tokens!494)) lt!1120446)))

(declare-fun b!3305532 () Bool)

(assert (=> b!3305532 (= e!2055748 (isBalanced!3278 (c!560674 lt!1120446)))))

(assert (= (and d!925829 res!1340671) b!3305532))

(declare-fun m!3631823 () Bool)

(assert (=> d!925829 m!3631823))

(declare-fun m!3631825 () Bool)

(assert (=> d!925829 m!3631825))

(declare-fun m!3631827 () Bool)

(assert (=> b!3305532 m!3631827))

(assert (=> d!925523 d!925829))

(declare-fun d!925831 () Bool)

(declare-fun c!560794 () Bool)

(assert (=> d!925831 (= c!560794 (and (is-Cons!36499 rules!2135) (not (= (isSeparator!5295 (h!41919 rules!2135)) (isSeparator!5295 (h!41919 rules!2135))))))))

(declare-fun e!2055757 () Bool)

(assert (=> d!925831 (= (ruleDisjointCharsFromAllFromOtherType!626 (h!41919 rules!2135) rules!2135) e!2055757)))

(declare-fun bm!240184 () Bool)

(declare-fun call!240189 () Bool)

(assert (=> bm!240184 (= call!240189 (ruleDisjointCharsFromAllFromOtherType!626 (h!41919 rules!2135) (t!253454 rules!2135)))))

(declare-fun b!3305541 () Bool)

(declare-fun e!2055756 () Bool)

(assert (=> b!3305541 (= e!2055757 e!2055756)))

(declare-fun res!1340676 () Bool)

(declare-fun rulesUseDisjointChars!296 (Rule!10390 Rule!10390) Bool)

(assert (=> b!3305541 (= res!1340676 (rulesUseDisjointChars!296 (h!41919 rules!2135) (h!41919 rules!2135)))))

(assert (=> b!3305541 (=> (not res!1340676) (not e!2055756))))

(declare-fun b!3305542 () Bool)

(assert (=> b!3305542 (= e!2055756 call!240189)))

(declare-fun b!3305543 () Bool)

(declare-fun e!2055755 () Bool)

(assert (=> b!3305543 (= e!2055755 call!240189)))

(declare-fun b!3305544 () Bool)

(assert (=> b!3305544 (= e!2055757 e!2055755)))

(declare-fun res!1340677 () Bool)

(assert (=> b!3305544 (= res!1340677 (not (is-Cons!36499 rules!2135)))))

(assert (=> b!3305544 (=> res!1340677 e!2055755)))

(assert (= (and d!925831 c!560794) b!3305541))

(assert (= (and d!925831 (not c!560794)) b!3305544))

(assert (= (and b!3305541 res!1340676) b!3305542))

(assert (= (and b!3305544 (not res!1340677)) b!3305543))

(assert (= (or b!3305542 b!3305543) bm!240184))

(declare-fun m!3631829 () Bool)

(assert (=> bm!240184 m!3631829))

(declare-fun m!3631831 () Bool)

(assert (=> b!3305541 m!3631831))

(assert (=> b!3305047 d!925831))

(declare-fun e!2055758 () Bool)

(assert (=> b!3305120 (= tp!1034863 e!2055758)))

(declare-fun b!3305547 () Bool)

(declare-fun tp!1034939 () Bool)

(assert (=> b!3305547 (= e!2055758 tp!1034939)))

(declare-fun b!3305548 () Bool)

(declare-fun tp!1034938 () Bool)

(declare-fun tp!1034935 () Bool)

(assert (=> b!3305548 (= e!2055758 (and tp!1034938 tp!1034935))))

(declare-fun b!3305545 () Bool)

(assert (=> b!3305545 (= e!2055758 tp_is_empty!17367)))

(declare-fun b!3305546 () Bool)

(declare-fun tp!1034936 () Bool)

(declare-fun tp!1034937 () Bool)

(assert (=> b!3305546 (= e!2055758 (and tp!1034936 tp!1034937))))

(assert (= (and b!3305120 (is-ElementMatch!10054 (reg!10383 (regex!5295 (rule!7799 (h!41918 tokens!494)))))) b!3305545))

(assert (= (and b!3305120 (is-Concat!15579 (reg!10383 (regex!5295 (rule!7799 (h!41918 tokens!494)))))) b!3305546))

(assert (= (and b!3305120 (is-Star!10054 (reg!10383 (regex!5295 (rule!7799 (h!41918 tokens!494)))))) b!3305547))

(assert (= (and b!3305120 (is-Union!10054 (reg!10383 (regex!5295 (rule!7799 (h!41918 tokens!494)))))) b!3305548))

(declare-fun e!2055759 () Bool)

(assert (=> b!3305125 (= tp!1034867 e!2055759)))

(declare-fun b!3305551 () Bool)

(declare-fun tp!1034944 () Bool)

(assert (=> b!3305551 (= e!2055759 tp!1034944)))

(declare-fun b!3305552 () Bool)

(declare-fun tp!1034943 () Bool)

(declare-fun tp!1034940 () Bool)

(assert (=> b!3305552 (= e!2055759 (and tp!1034943 tp!1034940))))

(declare-fun b!3305549 () Bool)

(assert (=> b!3305549 (= e!2055759 tp_is_empty!17367)))

(declare-fun b!3305550 () Bool)

(declare-fun tp!1034941 () Bool)

(declare-fun tp!1034942 () Bool)

(assert (=> b!3305550 (= e!2055759 (and tp!1034941 tp!1034942))))

(assert (= (and b!3305125 (is-ElementMatch!10054 (regOne!20621 (regex!5295 (h!41919 rules!2135))))) b!3305549))

(assert (= (and b!3305125 (is-Concat!15579 (regOne!20621 (regex!5295 (h!41919 rules!2135))))) b!3305550))

(assert (= (and b!3305125 (is-Star!10054 (regOne!20621 (regex!5295 (h!41919 rules!2135))))) b!3305551))

(assert (= (and b!3305125 (is-Union!10054 (regOne!20621 (regex!5295 (h!41919 rules!2135))))) b!3305552))

(declare-fun e!2055760 () Bool)

(assert (=> b!3305125 (= tp!1034864 e!2055760)))

(declare-fun b!3305555 () Bool)

(declare-fun tp!1034949 () Bool)

(assert (=> b!3305555 (= e!2055760 tp!1034949)))

(declare-fun b!3305556 () Bool)

(declare-fun tp!1034948 () Bool)

(declare-fun tp!1034945 () Bool)

(assert (=> b!3305556 (= e!2055760 (and tp!1034948 tp!1034945))))

(declare-fun b!3305553 () Bool)

(assert (=> b!3305553 (= e!2055760 tp_is_empty!17367)))

(declare-fun b!3305554 () Bool)

(declare-fun tp!1034946 () Bool)

(declare-fun tp!1034947 () Bool)

(assert (=> b!3305554 (= e!2055760 (and tp!1034946 tp!1034947))))

(assert (= (and b!3305125 (is-ElementMatch!10054 (regTwo!20621 (regex!5295 (h!41919 rules!2135))))) b!3305553))

(assert (= (and b!3305125 (is-Concat!15579 (regTwo!20621 (regex!5295 (h!41919 rules!2135))))) b!3305554))

(assert (= (and b!3305125 (is-Star!10054 (regTwo!20621 (regex!5295 (h!41919 rules!2135))))) b!3305555))

(assert (= (and b!3305125 (is-Union!10054 (regTwo!20621 (regex!5295 (h!41919 rules!2135))))) b!3305556))

(declare-fun e!2055761 () Bool)

(assert (=> b!3305124 (= tp!1034868 e!2055761)))

(declare-fun b!3305559 () Bool)

(declare-fun tp!1034954 () Bool)

(assert (=> b!3305559 (= e!2055761 tp!1034954)))

(declare-fun b!3305560 () Bool)

(declare-fun tp!1034953 () Bool)

(declare-fun tp!1034950 () Bool)

(assert (=> b!3305560 (= e!2055761 (and tp!1034953 tp!1034950))))

(declare-fun b!3305557 () Bool)

(assert (=> b!3305557 (= e!2055761 tp_is_empty!17367)))

(declare-fun b!3305558 () Bool)

(declare-fun tp!1034951 () Bool)

(declare-fun tp!1034952 () Bool)

(assert (=> b!3305558 (= e!2055761 (and tp!1034951 tp!1034952))))

(assert (= (and b!3305124 (is-ElementMatch!10054 (reg!10383 (regex!5295 (h!41919 rules!2135))))) b!3305557))

(assert (= (and b!3305124 (is-Concat!15579 (reg!10383 (regex!5295 (h!41919 rules!2135))))) b!3305558))

(assert (= (and b!3305124 (is-Star!10054 (reg!10383 (regex!5295 (h!41919 rules!2135))))) b!3305559))

(assert (= (and b!3305124 (is-Union!10054 (reg!10383 (regex!5295 (h!41919 rules!2135))))) b!3305560))

(declare-fun e!2055762 () Bool)

(assert (=> b!3305129 (= tp!1034872 e!2055762)))

(declare-fun b!3305563 () Bool)

(declare-fun tp!1034959 () Bool)

(assert (=> b!3305563 (= e!2055762 tp!1034959)))

(declare-fun b!3305564 () Bool)

(declare-fun tp!1034958 () Bool)

(declare-fun tp!1034955 () Bool)

(assert (=> b!3305564 (= e!2055762 (and tp!1034958 tp!1034955))))

(declare-fun b!3305561 () Bool)

(assert (=> b!3305561 (= e!2055762 tp_is_empty!17367)))

(declare-fun b!3305562 () Bool)

(declare-fun tp!1034956 () Bool)

(declare-fun tp!1034957 () Bool)

(assert (=> b!3305562 (= e!2055762 (and tp!1034956 tp!1034957))))

(assert (= (and b!3305129 (is-ElementMatch!10054 (regOne!20621 (regex!5295 (rule!7799 separatorToken!241))))) b!3305561))

(assert (= (and b!3305129 (is-Concat!15579 (regOne!20621 (regex!5295 (rule!7799 separatorToken!241))))) b!3305562))

(assert (= (and b!3305129 (is-Star!10054 (regOne!20621 (regex!5295 (rule!7799 separatorToken!241))))) b!3305563))

(assert (= (and b!3305129 (is-Union!10054 (regOne!20621 (regex!5295 (rule!7799 separatorToken!241))))) b!3305564))

(declare-fun e!2055763 () Bool)

(assert (=> b!3305129 (= tp!1034869 e!2055763)))

(declare-fun b!3305567 () Bool)

(declare-fun tp!1034964 () Bool)

(assert (=> b!3305567 (= e!2055763 tp!1034964)))

(declare-fun b!3305568 () Bool)

(declare-fun tp!1034963 () Bool)

(declare-fun tp!1034960 () Bool)

(assert (=> b!3305568 (= e!2055763 (and tp!1034963 tp!1034960))))

(declare-fun b!3305565 () Bool)

(assert (=> b!3305565 (= e!2055763 tp_is_empty!17367)))

(declare-fun b!3305566 () Bool)

(declare-fun tp!1034961 () Bool)

(declare-fun tp!1034962 () Bool)

(assert (=> b!3305566 (= e!2055763 (and tp!1034961 tp!1034962))))

(assert (= (and b!3305129 (is-ElementMatch!10054 (regTwo!20621 (regex!5295 (rule!7799 separatorToken!241))))) b!3305565))

(assert (= (and b!3305129 (is-Concat!15579 (regTwo!20621 (regex!5295 (rule!7799 separatorToken!241))))) b!3305566))

(assert (= (and b!3305129 (is-Star!10054 (regTwo!20621 (regex!5295 (rule!7799 separatorToken!241))))) b!3305567))

(assert (= (and b!3305129 (is-Union!10054 (regTwo!20621 (regex!5295 (rule!7799 separatorToken!241))))) b!3305568))

(declare-fun b!3305569 () Bool)

(declare-fun e!2055764 () Bool)

(declare-fun tp!1034965 () Bool)

(assert (=> b!3305569 (= e!2055764 (and tp_is_empty!17367 tp!1034965))))

(assert (=> b!3305093 (= tp!1034835 e!2055764)))

(assert (= (and b!3305093 (is-Cons!36497 (originalCharacters!6009 (h!41918 (t!253453 tokens!494))))) b!3305569))

(declare-fun e!2055765 () Bool)

(assert (=> b!3305094 (= tp!1034833 e!2055765)))

(declare-fun b!3305572 () Bool)

(declare-fun tp!1034970 () Bool)

(assert (=> b!3305572 (= e!2055765 tp!1034970)))

(declare-fun b!3305573 () Bool)

(declare-fun tp!1034969 () Bool)

(declare-fun tp!1034966 () Bool)

(assert (=> b!3305573 (= e!2055765 (and tp!1034969 tp!1034966))))

(declare-fun b!3305570 () Bool)

(assert (=> b!3305570 (= e!2055765 tp_is_empty!17367)))

(declare-fun b!3305571 () Bool)

(declare-fun tp!1034967 () Bool)

(declare-fun tp!1034968 () Bool)

(assert (=> b!3305571 (= e!2055765 (and tp!1034967 tp!1034968))))

(assert (= (and b!3305094 (is-ElementMatch!10054 (regex!5295 (rule!7799 (h!41918 (t!253453 tokens!494)))))) b!3305570))

(assert (= (and b!3305094 (is-Concat!15579 (regex!5295 (rule!7799 (h!41918 (t!253453 tokens!494)))))) b!3305571))

(assert (= (and b!3305094 (is-Star!10054 (regex!5295 (rule!7799 (h!41918 (t!253453 tokens!494)))))) b!3305572))

(assert (= (and b!3305094 (is-Union!10054 (regex!5295 (rule!7799 (h!41918 (t!253453 tokens!494)))))) b!3305573))

(declare-fun e!2055771 () Bool)

(declare-fun tp!1034979 () Bool)

(declare-fun tp!1034978 () Bool)

(declare-fun b!3305582 () Bool)

(assert (=> b!3305582 (= e!2055771 (and (inv!49465 (left!28427 (c!560673 (dynLambda!14954 (toChars!7290 (transformation!5295 (rule!7799 (h!41918 tokens!494)))) (value!171369 (h!41918 tokens!494)))))) tp!1034978 (inv!49465 (right!28757 (c!560673 (dynLambda!14954 (toChars!7290 (transformation!5295 (rule!7799 (h!41918 tokens!494)))) (value!171369 (h!41918 tokens!494)))))) tp!1034979))))

(declare-fun b!3305584 () Bool)

(declare-fun e!2055770 () Bool)

(declare-fun tp!1034977 () Bool)

(assert (=> b!3305584 (= e!2055770 tp!1034977)))

(declare-fun b!3305583 () Bool)

(declare-fun inv!49471 (IArray!21935) Bool)

(assert (=> b!3305583 (= e!2055771 (and (inv!49471 (xs!14103 (c!560673 (dynLambda!14954 (toChars!7290 (transformation!5295 (rule!7799 (h!41918 tokens!494)))) (value!171369 (h!41918 tokens!494)))))) e!2055770))))

(assert (=> b!3305061 (= tp!1034817 (and (inv!49465 (c!560673 (dynLambda!14954 (toChars!7290 (transformation!5295 (rule!7799 (h!41918 tokens!494)))) (value!171369 (h!41918 tokens!494))))) e!2055771))))

(assert (= (and b!3305061 (is-Node!10965 (c!560673 (dynLambda!14954 (toChars!7290 (transformation!5295 (rule!7799 (h!41918 tokens!494)))) (value!171369 (h!41918 tokens!494)))))) b!3305582))

(assert (= b!3305583 b!3305584))

(assert (= (and b!3305061 (is-Leaf!17224 (c!560673 (dynLambda!14954 (toChars!7290 (transformation!5295 (rule!7799 (h!41918 tokens!494)))) (value!171369 (h!41918 tokens!494)))))) b!3305583))

(declare-fun m!3631833 () Bool)

(assert (=> b!3305582 m!3631833))

(declare-fun m!3631835 () Bool)

(assert (=> b!3305582 m!3631835))

(declare-fun m!3631837 () Bool)

(assert (=> b!3305583 m!3631837))

(assert (=> b!3305061 m!3631141))

(declare-fun e!2055772 () Bool)

(assert (=> b!3305121 (= tp!1034862 e!2055772)))

(declare-fun b!3305587 () Bool)

(declare-fun tp!1034984 () Bool)

(assert (=> b!3305587 (= e!2055772 tp!1034984)))

(declare-fun b!3305588 () Bool)

(declare-fun tp!1034983 () Bool)

(declare-fun tp!1034980 () Bool)

(assert (=> b!3305588 (= e!2055772 (and tp!1034983 tp!1034980))))

(declare-fun b!3305585 () Bool)

(assert (=> b!3305585 (= e!2055772 tp_is_empty!17367)))

(declare-fun b!3305586 () Bool)

(declare-fun tp!1034981 () Bool)

(declare-fun tp!1034982 () Bool)

(assert (=> b!3305586 (= e!2055772 (and tp!1034981 tp!1034982))))

(assert (= (and b!3305121 (is-ElementMatch!10054 (regOne!20621 (regex!5295 (rule!7799 (h!41918 tokens!494)))))) b!3305585))

(assert (= (and b!3305121 (is-Concat!15579 (regOne!20621 (regex!5295 (rule!7799 (h!41918 tokens!494)))))) b!3305586))

(assert (= (and b!3305121 (is-Star!10054 (regOne!20621 (regex!5295 (rule!7799 (h!41918 tokens!494)))))) b!3305587))

(assert (= (and b!3305121 (is-Union!10054 (regOne!20621 (regex!5295 (rule!7799 (h!41918 tokens!494)))))) b!3305588))

(declare-fun e!2055773 () Bool)

(assert (=> b!3305121 (= tp!1034859 e!2055773)))

(declare-fun b!3305591 () Bool)

(declare-fun tp!1034989 () Bool)

(assert (=> b!3305591 (= e!2055773 tp!1034989)))

(declare-fun b!3305592 () Bool)

(declare-fun tp!1034988 () Bool)

(declare-fun tp!1034985 () Bool)

(assert (=> b!3305592 (= e!2055773 (and tp!1034988 tp!1034985))))

(declare-fun b!3305589 () Bool)

(assert (=> b!3305589 (= e!2055773 tp_is_empty!17367)))

(declare-fun b!3305590 () Bool)

(declare-fun tp!1034986 () Bool)

(declare-fun tp!1034987 () Bool)

(assert (=> b!3305590 (= e!2055773 (and tp!1034986 tp!1034987))))

(assert (= (and b!3305121 (is-ElementMatch!10054 (regTwo!20621 (regex!5295 (rule!7799 (h!41918 tokens!494)))))) b!3305589))

(assert (= (and b!3305121 (is-Concat!15579 (regTwo!20621 (regex!5295 (rule!7799 (h!41918 tokens!494)))))) b!3305590))

(assert (= (and b!3305121 (is-Star!10054 (regTwo!20621 (regex!5295 (rule!7799 (h!41918 tokens!494)))))) b!3305591))

(assert (= (and b!3305121 (is-Union!10054 (regTwo!20621 (regex!5295 (rule!7799 (h!41918 tokens!494)))))) b!3305592))

(declare-fun b!3305595 () Bool)

(declare-fun e!2055776 () Bool)

(assert (=> b!3305595 (= e!2055776 true)))

(declare-fun b!3305594 () Bool)

(declare-fun e!2055775 () Bool)

(assert (=> b!3305594 (= e!2055775 e!2055776)))

(declare-fun b!3305593 () Bool)

(declare-fun e!2055774 () Bool)

(assert (=> b!3305593 (= e!2055774 e!2055775)))

(assert (=> b!3305035 e!2055774))

(assert (= b!3305594 b!3305595))

(assert (= b!3305593 b!3305594))

(assert (= (and b!3305035 (is-Cons!36499 (t!253454 rules!2135))) b!3305593))

(assert (=> b!3305595 (< (dynLambda!14955 order!18947 (toValue!7431 (transformation!5295 (h!41919 (t!253454 rules!2135))))) (dynLambda!14956 order!18949 lambda!118998))))

(assert (=> b!3305595 (< (dynLambda!14957 order!18951 (toChars!7290 (transformation!5295 (h!41919 (t!253454 rules!2135))))) (dynLambda!14956 order!18949 lambda!118998))))

(declare-fun b!3305596 () Bool)

(declare-fun e!2055777 () Bool)

(declare-fun tp!1034990 () Bool)

(assert (=> b!3305596 (= e!2055777 (and tp_is_empty!17367 tp!1034990))))

(assert (=> b!3305081 (= tp!1034820 e!2055777)))

(assert (= (and b!3305081 (is-Cons!36497 (t!253452 (originalCharacters!6009 separatorToken!241)))) b!3305596))

(declare-fun b!3305599 () Bool)

(declare-fun b_free!86885 () Bool)

(declare-fun b_next!87589 () Bool)

(assert (=> b!3305599 (= b_free!86885 (not b_next!87589))))

(declare-fun tp!1034994 () Bool)

(declare-fun b_and!226543 () Bool)

(assert (=> b!3305599 (= tp!1034994 b_and!226543)))

(declare-fun b_free!86887 () Bool)

(declare-fun b_next!87591 () Bool)

(assert (=> b!3305599 (= b_free!86887 (not b_next!87591))))

(declare-fun t!253559 () Bool)

(declare-fun tb!171535 () Bool)

(assert (=> (and b!3305599 (= (toChars!7290 (transformation!5295 (h!41919 (t!253454 (t!253454 rules!2135))))) (toChars!7290 (transformation!5295 (rule!7799 (h!41918 (t!253453 tokens!494)))))) t!253559) tb!171535))

(declare-fun result!214358 () Bool)

(assert (= result!214358 result!214316))

(assert (=> b!3305267 t!253559))

(declare-fun tb!171537 () Bool)

(declare-fun t!253561 () Bool)

(assert (=> (and b!3305599 (= (toChars!7290 (transformation!5295 (h!41919 (t!253454 (t!253454 rules!2135))))) (toChars!7290 (transformation!5295 (rule!7799 (h!41918 tokens!494))))) t!253561) tb!171537))

(declare-fun result!214360 () Bool)

(assert (= result!214360 result!214272))

(assert (=> d!925585 t!253561))

(declare-fun tb!171539 () Bool)

(declare-fun t!253563 () Bool)

(assert (=> (and b!3305599 (= (toChars!7290 (transformation!5295 (h!41919 (t!253454 (t!253454 rules!2135))))) (toChars!7290 (transformation!5295 (rule!7799 separatorToken!241)))) t!253563) tb!171539))

(declare-fun result!214362 () Bool)

(assert (= result!214362 result!214256))

(assert (=> b!3304928 t!253563))

(assert (=> b!3305059 t!253561))

(declare-fun t!253565 () Bool)

(declare-fun tb!171541 () Bool)

(assert (=> (and b!3305599 (= (toChars!7290 (transformation!5295 (h!41919 (t!253454 (t!253454 rules!2135))))) (toChars!7290 (transformation!5295 (rule!7799 (apply!8383 lt!1120226 0))))) t!253565) tb!171541))

(declare-fun result!214364 () Bool)

(assert (= result!214364 result!214326))

(assert (=> d!925735 t!253565))

(declare-fun t!253567 () Bool)

(declare-fun tb!171543 () Bool)

(assert (=> (and b!3305599 (= (toChars!7290 (transformation!5295 (h!41919 (t!253454 (t!253454 rules!2135))))) (toChars!7290 (transformation!5295 (rule!7799 (h!41918 (Cons!36498 (h!41918 tokens!494) Nil!36498)))))) t!253567) tb!171543))

(declare-fun result!214366 () Bool)

(assert (= result!214366 result!214346))

(assert (=> d!925799 t!253567))

(declare-fun b_and!226545 () Bool)

(declare-fun tp!1034991 () Bool)

(assert (=> b!3305599 (= tp!1034991 (and (=> t!253567 result!214366) (=> t!253561 result!214360) (=> t!253565 result!214364) (=> t!253559 result!214358) (=> t!253563 result!214362) b_and!226545))))

(declare-fun e!2055779 () Bool)

(assert (=> b!3305599 (= e!2055779 (and tp!1034994 tp!1034991))))

(declare-fun b!3305598 () Bool)

(declare-fun e!2055781 () Bool)

(declare-fun tp!1034993 () Bool)

(assert (=> b!3305598 (= e!2055781 (and tp!1034993 (inv!49458 (tag!5841 (h!41919 (t!253454 (t!253454 rules!2135))))) (inv!49462 (transformation!5295 (h!41919 (t!253454 (t!253454 rules!2135))))) e!2055779))))

(declare-fun b!3305597 () Bool)

(declare-fun e!2055780 () Bool)

(declare-fun tp!1034992 () Bool)

(assert (=> b!3305597 (= e!2055780 (and e!2055781 tp!1034992))))

(assert (=> b!3305104 (= tp!1034845 e!2055780)))

(assert (= b!3305598 b!3305599))

(assert (= b!3305597 b!3305598))

(assert (= (and b!3305104 (is-Cons!36499 (t!253454 (t!253454 rules!2135)))) b!3305597))

(declare-fun m!3631839 () Bool)

(assert (=> b!3305598 m!3631839))

(declare-fun m!3631841 () Bool)

(assert (=> b!3305598 m!3631841))

(declare-fun e!2055783 () Bool)

(declare-fun tp!1034996 () Bool)

(declare-fun b!3305600 () Bool)

(declare-fun tp!1034997 () Bool)

(assert (=> b!3305600 (= e!2055783 (and (inv!49465 (left!28427 (c!560673 (dynLambda!14954 (toChars!7290 (transformation!5295 (rule!7799 separatorToken!241))) (value!171369 separatorToken!241))))) tp!1034996 (inv!49465 (right!28757 (c!560673 (dynLambda!14954 (toChars!7290 (transformation!5295 (rule!7799 separatorToken!241))) (value!171369 separatorToken!241))))) tp!1034997))))

(declare-fun b!3305602 () Bool)

(declare-fun e!2055782 () Bool)

(declare-fun tp!1034995 () Bool)

(assert (=> b!3305602 (= e!2055782 tp!1034995)))

(declare-fun b!3305601 () Bool)

(assert (=> b!3305601 (= e!2055783 (and (inv!49471 (xs!14103 (c!560673 (dynLambda!14954 (toChars!7290 (transformation!5295 (rule!7799 separatorToken!241))) (value!171369 separatorToken!241))))) e!2055782))))

(assert (=> b!3304934 (= tp!1034813 (and (inv!49465 (c!560673 (dynLambda!14954 (toChars!7290 (transformation!5295 (rule!7799 separatorToken!241))) (value!171369 separatorToken!241)))) e!2055783))))

(assert (= (and b!3304934 (is-Node!10965 (c!560673 (dynLambda!14954 (toChars!7290 (transformation!5295 (rule!7799 separatorToken!241))) (value!171369 separatorToken!241))))) b!3305600))

(assert (= b!3305601 b!3305602))

(assert (= (and b!3304934 (is-Leaf!17224 (c!560673 (dynLambda!14954 (toChars!7290 (transformation!5295 (rule!7799 separatorToken!241))) (value!171369 separatorToken!241))))) b!3305601))

(declare-fun m!3631843 () Bool)

(assert (=> b!3305600 m!3631843))

(declare-fun m!3631845 () Bool)

(assert (=> b!3305600 m!3631845))

(declare-fun m!3631847 () Bool)

(assert (=> b!3305601 m!3631847))

(assert (=> b!3304934 m!3630909))

(declare-fun e!2055784 () Bool)

(assert (=> b!3305127 (= tp!1034870 e!2055784)))

(declare-fun b!3305605 () Bool)

(declare-fun tp!1035002 () Bool)

(assert (=> b!3305605 (= e!2055784 tp!1035002)))

(declare-fun b!3305606 () Bool)

(declare-fun tp!1035001 () Bool)

(declare-fun tp!1034998 () Bool)

(assert (=> b!3305606 (= e!2055784 (and tp!1035001 tp!1034998))))

(declare-fun b!3305603 () Bool)

(assert (=> b!3305603 (= e!2055784 tp_is_empty!17367)))

(declare-fun b!3305604 () Bool)

(declare-fun tp!1034999 () Bool)

(declare-fun tp!1035000 () Bool)

(assert (=> b!3305604 (= e!2055784 (and tp!1034999 tp!1035000))))

(assert (= (and b!3305127 (is-ElementMatch!10054 (regOne!20620 (regex!5295 (rule!7799 separatorToken!241))))) b!3305603))

(assert (= (and b!3305127 (is-Concat!15579 (regOne!20620 (regex!5295 (rule!7799 separatorToken!241))))) b!3305604))

(assert (= (and b!3305127 (is-Star!10054 (regOne!20620 (regex!5295 (rule!7799 separatorToken!241))))) b!3305605))

(assert (= (and b!3305127 (is-Union!10054 (regOne!20620 (regex!5295 (rule!7799 separatorToken!241))))) b!3305606))

(declare-fun e!2055785 () Bool)

(assert (=> b!3305127 (= tp!1034871 e!2055785)))

(declare-fun b!3305609 () Bool)

(declare-fun tp!1035007 () Bool)

(assert (=> b!3305609 (= e!2055785 tp!1035007)))

(declare-fun b!3305610 () Bool)

(declare-fun tp!1035006 () Bool)

(declare-fun tp!1035003 () Bool)

(assert (=> b!3305610 (= e!2055785 (and tp!1035006 tp!1035003))))

(declare-fun b!3305607 () Bool)

(assert (=> b!3305607 (= e!2055785 tp_is_empty!17367)))

(declare-fun b!3305608 () Bool)

(declare-fun tp!1035004 () Bool)

(declare-fun tp!1035005 () Bool)

(assert (=> b!3305608 (= e!2055785 (and tp!1035004 tp!1035005))))

(assert (= (and b!3305127 (is-ElementMatch!10054 (regTwo!20620 (regex!5295 (rule!7799 separatorToken!241))))) b!3305607))

(assert (= (and b!3305127 (is-Concat!15579 (regTwo!20620 (regex!5295 (rule!7799 separatorToken!241))))) b!3305608))

(assert (= (and b!3305127 (is-Star!10054 (regTwo!20620 (regex!5295 (rule!7799 separatorToken!241))))) b!3305609))

(assert (= (and b!3305127 (is-Union!10054 (regTwo!20620 (regex!5295 (rule!7799 separatorToken!241))))) b!3305610))

(declare-fun b!3305611 () Bool)

(declare-fun e!2055786 () Bool)

(declare-fun tp!1035008 () Bool)

(assert (=> b!3305611 (= e!2055786 (and tp_is_empty!17367 tp!1035008))))

(assert (=> b!3305107 (= tp!1034848 e!2055786)))

(assert (= (and b!3305107 (is-Cons!36497 (t!253452 (originalCharacters!6009 (h!41918 tokens!494))))) b!3305611))

(declare-fun e!2055787 () Bool)

(assert (=> b!3305105 (= tp!1034846 e!2055787)))

(declare-fun b!3305614 () Bool)

(declare-fun tp!1035013 () Bool)

(assert (=> b!3305614 (= e!2055787 tp!1035013)))

(declare-fun b!3305615 () Bool)

(declare-fun tp!1035012 () Bool)

(declare-fun tp!1035009 () Bool)

(assert (=> b!3305615 (= e!2055787 (and tp!1035012 tp!1035009))))

(declare-fun b!3305612 () Bool)

(assert (=> b!3305612 (= e!2055787 tp_is_empty!17367)))

(declare-fun b!3305613 () Bool)

(declare-fun tp!1035010 () Bool)

(declare-fun tp!1035011 () Bool)

(assert (=> b!3305613 (= e!2055787 (and tp!1035010 tp!1035011))))

(assert (= (and b!3305105 (is-ElementMatch!10054 (regex!5295 (h!41919 (t!253454 rules!2135))))) b!3305612))

(assert (= (and b!3305105 (is-Concat!15579 (regex!5295 (h!41919 (t!253454 rules!2135))))) b!3305613))

(assert (= (and b!3305105 (is-Star!10054 (regex!5295 (h!41919 (t!253454 rules!2135))))) b!3305614))

(assert (= (and b!3305105 (is-Union!10054 (regex!5295 (h!41919 (t!253454 rules!2135))))) b!3305615))

(declare-fun e!2055788 () Bool)

(assert (=> b!3305128 (= tp!1034873 e!2055788)))

(declare-fun b!3305618 () Bool)

(declare-fun tp!1035018 () Bool)

(assert (=> b!3305618 (= e!2055788 tp!1035018)))

(declare-fun b!3305619 () Bool)

(declare-fun tp!1035017 () Bool)

(declare-fun tp!1035014 () Bool)

(assert (=> b!3305619 (= e!2055788 (and tp!1035017 tp!1035014))))

(declare-fun b!3305616 () Bool)

(assert (=> b!3305616 (= e!2055788 tp_is_empty!17367)))

(declare-fun b!3305617 () Bool)

(declare-fun tp!1035015 () Bool)

(declare-fun tp!1035016 () Bool)

(assert (=> b!3305617 (= e!2055788 (and tp!1035015 tp!1035016))))

(assert (= (and b!3305128 (is-ElementMatch!10054 (reg!10383 (regex!5295 (rule!7799 separatorToken!241))))) b!3305616))

(assert (= (and b!3305128 (is-Concat!15579 (reg!10383 (regex!5295 (rule!7799 separatorToken!241))))) b!3305617))

(assert (= (and b!3305128 (is-Star!10054 (reg!10383 (regex!5295 (rule!7799 separatorToken!241))))) b!3305618))

(assert (= (and b!3305128 (is-Union!10054 (reg!10383 (regex!5295 (rule!7799 separatorToken!241))))) b!3305619))

(declare-fun b!3305623 () Bool)

(declare-fun b_free!86889 () Bool)

(declare-fun b_next!87593 () Bool)

(assert (=> b!3305623 (= b_free!86889 (not b_next!87593))))

(declare-fun tp!1035022 () Bool)

(declare-fun b_and!226547 () Bool)

(assert (=> b!3305623 (= tp!1035022 b_and!226547)))

(declare-fun b_free!86891 () Bool)

(declare-fun b_next!87595 () Bool)

(assert (=> b!3305623 (= b_free!86891 (not b_next!87595))))

(declare-fun t!253569 () Bool)

(declare-fun tb!171545 () Bool)

(assert (=> (and b!3305623 (= (toChars!7290 (transformation!5295 (rule!7799 (h!41918 (t!253453 (t!253453 tokens!494)))))) (toChars!7290 (transformation!5295 (rule!7799 (h!41918 (t!253453 tokens!494)))))) t!253569) tb!171545))

(declare-fun result!214368 () Bool)

(assert (= result!214368 result!214316))

(assert (=> b!3305267 t!253569))

(declare-fun t!253571 () Bool)

(declare-fun tb!171547 () Bool)

(assert (=> (and b!3305623 (= (toChars!7290 (transformation!5295 (rule!7799 (h!41918 (t!253453 (t!253453 tokens!494)))))) (toChars!7290 (transformation!5295 (rule!7799 (h!41918 tokens!494))))) t!253571) tb!171547))

(declare-fun result!214370 () Bool)

(assert (= result!214370 result!214272))

(assert (=> d!925585 t!253571))

(declare-fun tb!171549 () Bool)

(declare-fun t!253573 () Bool)

(assert (=> (and b!3305623 (= (toChars!7290 (transformation!5295 (rule!7799 (h!41918 (t!253453 (t!253453 tokens!494)))))) (toChars!7290 (transformation!5295 (rule!7799 separatorToken!241)))) t!253573) tb!171549))

(declare-fun result!214372 () Bool)

(assert (= result!214372 result!214256))

(assert (=> b!3304928 t!253573))

(assert (=> b!3305059 t!253571))

(declare-fun t!253575 () Bool)

(declare-fun tb!171551 () Bool)

(assert (=> (and b!3305623 (= (toChars!7290 (transformation!5295 (rule!7799 (h!41918 (t!253453 (t!253453 tokens!494)))))) (toChars!7290 (transformation!5295 (rule!7799 (apply!8383 lt!1120226 0))))) t!253575) tb!171551))

(declare-fun result!214374 () Bool)

(assert (= result!214374 result!214326))

(assert (=> d!925735 t!253575))

(declare-fun t!253577 () Bool)

(declare-fun tb!171553 () Bool)

(assert (=> (and b!3305623 (= (toChars!7290 (transformation!5295 (rule!7799 (h!41918 (t!253453 (t!253453 tokens!494)))))) (toChars!7290 (transformation!5295 (rule!7799 (h!41918 (Cons!36498 (h!41918 tokens!494) Nil!36498)))))) t!253577) tb!171553))

(declare-fun result!214376 () Bool)

(assert (= result!214376 result!214346))

(assert (=> d!925799 t!253577))

(declare-fun b_and!226549 () Bool)

(declare-fun tp!1035020 () Bool)

(assert (=> b!3305623 (= tp!1035020 (and (=> t!253573 result!214372) (=> t!253575 result!214374) (=> t!253577 result!214376) (=> t!253569 result!214368) (=> t!253571 result!214370) b_and!226549))))

(declare-fun e!2055793 () Bool)

(assert (=> b!3305623 (= e!2055793 (and tp!1035022 tp!1035020))))

(declare-fun tp!1035019 () Bool)

(declare-fun e!2055794 () Bool)

(declare-fun e!2055792 () Bool)

(declare-fun b!3305620 () Bool)

(assert (=> b!3305620 (= e!2055792 (and (inv!49461 (h!41918 (t!253453 (t!253453 tokens!494)))) e!2055794 tp!1035019))))

(declare-fun e!2055791 () Bool)

(declare-fun tp!1035023 () Bool)

(declare-fun b!3305621 () Bool)

(assert (=> b!3305621 (= e!2055794 (and (inv!21 (value!171369 (h!41918 (t!253453 (t!253453 tokens!494))))) e!2055791 tp!1035023))))

(assert (=> b!3305092 (= tp!1034831 e!2055792)))

(declare-fun b!3305622 () Bool)

(declare-fun tp!1035021 () Bool)

(assert (=> b!3305622 (= e!2055791 (and tp!1035021 (inv!49458 (tag!5841 (rule!7799 (h!41918 (t!253453 (t!253453 tokens!494)))))) (inv!49462 (transformation!5295 (rule!7799 (h!41918 (t!253453 (t!253453 tokens!494)))))) e!2055793))))

(assert (= b!3305622 b!3305623))

(assert (= b!3305621 b!3305622))

(assert (= b!3305620 b!3305621))

(assert (= (and b!3305092 (is-Cons!36498 (t!253453 (t!253453 tokens!494)))) b!3305620))

(declare-fun m!3631849 () Bool)

(assert (=> b!3305620 m!3631849))

(declare-fun m!3631851 () Bool)

(assert (=> b!3305621 m!3631851))

(declare-fun m!3631853 () Bool)

(assert (=> b!3305622 m!3631853))

(declare-fun m!3631855 () Bool)

(assert (=> b!3305622 m!3631855))

(declare-fun e!2055795 () Bool)

(assert (=> b!3305119 (= tp!1034860 e!2055795)))

(declare-fun b!3305626 () Bool)

(declare-fun tp!1035028 () Bool)

(assert (=> b!3305626 (= e!2055795 tp!1035028)))

(declare-fun b!3305627 () Bool)

(declare-fun tp!1035027 () Bool)

(declare-fun tp!1035024 () Bool)

(assert (=> b!3305627 (= e!2055795 (and tp!1035027 tp!1035024))))

(declare-fun b!3305624 () Bool)

(assert (=> b!3305624 (= e!2055795 tp_is_empty!17367)))

(declare-fun b!3305625 () Bool)

(declare-fun tp!1035025 () Bool)

(declare-fun tp!1035026 () Bool)

(assert (=> b!3305625 (= e!2055795 (and tp!1035025 tp!1035026))))

(assert (= (and b!3305119 (is-ElementMatch!10054 (regOne!20620 (regex!5295 (rule!7799 (h!41918 tokens!494)))))) b!3305624))

(assert (= (and b!3305119 (is-Concat!15579 (regOne!20620 (regex!5295 (rule!7799 (h!41918 tokens!494)))))) b!3305625))

(assert (= (and b!3305119 (is-Star!10054 (regOne!20620 (regex!5295 (rule!7799 (h!41918 tokens!494)))))) b!3305626))

(assert (= (and b!3305119 (is-Union!10054 (regOne!20620 (regex!5295 (rule!7799 (h!41918 tokens!494)))))) b!3305627))

(declare-fun e!2055796 () Bool)

(assert (=> b!3305119 (= tp!1034861 e!2055796)))

(declare-fun b!3305630 () Bool)

(declare-fun tp!1035033 () Bool)

(assert (=> b!3305630 (= e!2055796 tp!1035033)))

(declare-fun b!3305631 () Bool)

(declare-fun tp!1035032 () Bool)

(declare-fun tp!1035029 () Bool)

(assert (=> b!3305631 (= e!2055796 (and tp!1035032 tp!1035029))))

(declare-fun b!3305628 () Bool)

(assert (=> b!3305628 (= e!2055796 tp_is_empty!17367)))

(declare-fun b!3305629 () Bool)

(declare-fun tp!1035030 () Bool)

(declare-fun tp!1035031 () Bool)

(assert (=> b!3305629 (= e!2055796 (and tp!1035030 tp!1035031))))

(assert (= (and b!3305119 (is-ElementMatch!10054 (regTwo!20620 (regex!5295 (rule!7799 (h!41918 tokens!494)))))) b!3305628))

(assert (= (and b!3305119 (is-Concat!15579 (regTwo!20620 (regex!5295 (rule!7799 (h!41918 tokens!494)))))) b!3305629))

(assert (= (and b!3305119 (is-Star!10054 (regTwo!20620 (regex!5295 (rule!7799 (h!41918 tokens!494)))))) b!3305630))

(assert (= (and b!3305119 (is-Union!10054 (regTwo!20620 (regex!5295 (rule!7799 (h!41918 tokens!494)))))) b!3305631))

(declare-fun e!2055797 () Bool)

(assert (=> b!3305123 (= tp!1034865 e!2055797)))

(declare-fun b!3305634 () Bool)

(declare-fun tp!1035038 () Bool)

(assert (=> b!3305634 (= e!2055797 tp!1035038)))

(declare-fun b!3305635 () Bool)

(declare-fun tp!1035037 () Bool)

(declare-fun tp!1035034 () Bool)

(assert (=> b!3305635 (= e!2055797 (and tp!1035037 tp!1035034))))

(declare-fun b!3305632 () Bool)

(assert (=> b!3305632 (= e!2055797 tp_is_empty!17367)))

(declare-fun b!3305633 () Bool)

(declare-fun tp!1035035 () Bool)

(declare-fun tp!1035036 () Bool)

(assert (=> b!3305633 (= e!2055797 (and tp!1035035 tp!1035036))))

(assert (= (and b!3305123 (is-ElementMatch!10054 (regOne!20620 (regex!5295 (h!41919 rules!2135))))) b!3305632))

(assert (= (and b!3305123 (is-Concat!15579 (regOne!20620 (regex!5295 (h!41919 rules!2135))))) b!3305633))

(assert (= (and b!3305123 (is-Star!10054 (regOne!20620 (regex!5295 (h!41919 rules!2135))))) b!3305634))

(assert (= (and b!3305123 (is-Union!10054 (regOne!20620 (regex!5295 (h!41919 rules!2135))))) b!3305635))

(declare-fun e!2055798 () Bool)

(assert (=> b!3305123 (= tp!1034866 e!2055798)))

(declare-fun b!3305638 () Bool)

(declare-fun tp!1035043 () Bool)

(assert (=> b!3305638 (= e!2055798 tp!1035043)))

(declare-fun b!3305639 () Bool)

(declare-fun tp!1035042 () Bool)

(declare-fun tp!1035039 () Bool)

(assert (=> b!3305639 (= e!2055798 (and tp!1035042 tp!1035039))))

(declare-fun b!3305636 () Bool)

(assert (=> b!3305636 (= e!2055798 tp_is_empty!17367)))

(declare-fun b!3305637 () Bool)

(declare-fun tp!1035040 () Bool)

(declare-fun tp!1035041 () Bool)

(assert (=> b!3305637 (= e!2055798 (and tp!1035040 tp!1035041))))

(assert (= (and b!3305123 (is-ElementMatch!10054 (regTwo!20620 (regex!5295 (h!41919 rules!2135))))) b!3305636))

(assert (= (and b!3305123 (is-Concat!15579 (regTwo!20620 (regex!5295 (h!41919 rules!2135))))) b!3305637))

(assert (= (and b!3305123 (is-Star!10054 (regTwo!20620 (regex!5295 (h!41919 rules!2135))))) b!3305638))

(assert (= (and b!3305123 (is-Union!10054 (regTwo!20620 (regex!5295 (h!41919 rules!2135))))) b!3305639))

(declare-fun b_lambda!92339 () Bool)

(assert (= b_lambda!92329 (or (and b!3305599 b_free!86887 (= (toChars!7290 (transformation!5295 (h!41919 (t!253454 (t!253454 rules!2135))))) (toChars!7290 (transformation!5295 (rule!7799 (h!41918 (t!253453 tokens!494))))))) (and b!3305106 b_free!86875 (= (toChars!7290 (transformation!5295 (h!41919 (t!253454 rules!2135)))) (toChars!7290 (transformation!5295 (rule!7799 (h!41918 (t!253453 tokens!494))))))) (and b!3304839 b_free!86855 (= (toChars!7290 (transformation!5295 (h!41919 rules!2135))) (toChars!7290 (transformation!5295 (rule!7799 (h!41918 (t!253453 tokens!494))))))) (and b!3304844 b_free!86847 (= (toChars!7290 (transformation!5295 (rule!7799 separatorToken!241))) (toChars!7290 (transformation!5295 (rule!7799 (h!41918 (t!253453 tokens!494))))))) (and b!3304843 b_free!86851 (= (toChars!7290 (transformation!5295 (rule!7799 (h!41918 tokens!494)))) (toChars!7290 (transformation!5295 (rule!7799 (h!41918 (t!253453 tokens!494))))))) (and b!3305623 b_free!86891 (= (toChars!7290 (transformation!5295 (rule!7799 (h!41918 (t!253453 (t!253453 tokens!494)))))) (toChars!7290 (transformation!5295 (rule!7799 (h!41918 (t!253453 tokens!494))))))) (and b!3305095 b_free!86871) b_lambda!92339)))

(declare-fun b_lambda!92341 () Bool)

(assert (= b_lambda!92327 (or d!925527 b_lambda!92341)))

(declare-fun bs!549019 () Bool)

(declare-fun d!925833 () Bool)

(assert (= bs!549019 (and d!925833 d!925527)))

(assert (=> bs!549019 (= (dynLambda!14958 lambda!118998 (h!41918 (list!13086 (seqFromList!3647 tokens!494)))) (rulesProduceIndividualToken!2376 thiss!18206 rules!2135 (h!41918 (list!13086 (seqFromList!3647 tokens!494)))))))

(assert (=> bs!549019 m!3631421))

(assert (=> b!3305237 d!925833))

(declare-fun b_lambda!92343 () Bool)

(assert (= b_lambda!92331 (or b!3304830 b_lambda!92343)))

(declare-fun bs!549020 () Bool)

(declare-fun d!925835 () Bool)

(assert (= bs!549020 (and d!925835 b!3304830)))

(assert (=> bs!549020 (= (dynLambda!14958 lambda!118990 (h!41918 (t!253453 tokens!494))) (not (isSeparator!5295 (rule!7799 (h!41918 (t!253453 tokens!494))))))))

(assert (=> b!3305282 d!925835))

(push 1)

(assert (not b!3305517))

(assert (not b_lambda!92339))

(assert (not d!925829))

(assert (not b_next!87589))

(assert (not b!3305253))

(assert (not b!3305316))

(assert (not b!3305591))

(assert b_and!226431)

(assert (not b!3305590))

(assert (not d!925735))

(assert (not b!3305532))

(assert (not b!3305638))

(assert (not b!3305529))

(assert (not d!925661))

(assert (not d!925621))

(assert (not d!925639))

(assert (not b!3305391))

(assert (not d!925649))

(assert (not d!925785))

(assert (not b!3305613))

(assert (not b!3305562))

(assert (not b!3305526))

(assert (not b!3305434))

(assert (not d!925637))

(assert (not b!3305614))

(assert (not d!925701))

(assert (not d!925787))

(assert (not b!3305606))

(assert (not b!3305605))

(assert b_and!226545)

(assert (not b!3305597))

(assert (not d!925693))

(assert (not b!3305631))

(assert (not d!925681))

(assert (not d!925739))

(assert (not b!3305541))

(assert (not b!3305622))

(assert (not d!925635))

(assert (not b!3305528))

(assert (not b_lambda!92307))

(assert (not b!3305572))

(assert (not d!925647))

(assert (not b!3305554))

(assert (not b!3305362))

(assert b_and!226479)

(assert (not b!3305621))

(assert (not d!925619))

(assert (not b_lambda!92341))

(assert (not b!3305546))

(assert (not b!3305630))

(assert (not b!3304934))

(assert b_and!226547)

(assert (not b!3305596))

(assert (not d!925631))

(assert (not b!3305617))

(assert (not b!3305304))

(assert (not d!925669))

(assert b_and!226427)

(assert (not b!3305593))

(assert (not d!925629))

(assert (not d!925799))

(assert (not b_next!87595))

(assert (not b_next!87593))

(assert (not b_next!87549))

(assert (not b!3305601))

(assert (not b!3305413))

(assert (not b!3305584))

(assert b_and!226535)

(assert (not b!3305559))

(assert (not d!925645))

(assert (not b_next!87591))

(assert (not d!925683))

(assert (not b!3305386))

(assert (not b!3305611))

(assert (not b!3305470))

(assert (not b!3305221))

(assert (not b!3305216))

(assert (not b!3305634))

(assert (not d!925633))

(assert (not b_next!87579))

(assert (not d!925653))

(assert (not d!925665))

(assert (not d!925825))

(assert (not d!925709))

(assert b_and!226537)

(assert (not b!3305303))

(assert (not b!3305502))

(assert (not bm!240175))

(assert (not b_next!87559))

(assert (not d!925691))

(assert (not b!3305551))

(assert (not b!3305312))

(assert (not b!3305215))

(assert (not b!3305600))

(assert (not b!3305311))

(assert (not b!3305435))

(assert (not d!925703))

(assert (not b!3305550))

(assert (not d!925689))

(assert (not b_next!87577))

(assert b_and!226543)

(assert (not b!3305610))

(assert (not d!925659))

(assert (not b!3305604))

(assert (not b!3305568))

(assert (not b!3305497))

(assert (not b!3305257))

(assert (not b!3305308))

(assert (not d!925741))

(assert (not b!3305472))

(assert (not b!3305281))

(assert (not d!925725))

(assert (not b!3305288))

(assert (not b!3305586))

(assert (not b!3305571))

(assert (not b!3305390))

(assert (not b!3305499))

(assert (not d!925667))

(assert (not b!3305465))

(assert (not bs!549019))

(assert (not b!3305556))

(assert (not b!3305500))

(assert (not b!3305520))

(assert (not b!3305564))

(assert (not b!3305283))

(assert (not d!925797))

(assert (not b_lambda!92343))

(assert (not b_next!87551))

(assert (not b!3305365))

(assert b_and!226475)

(assert (not b!3305567))

(assert (not b!3305560))

(assert (not b!3305354))

(assert (not b!3305238))

(assert (not b!3305637))

(assert (not b!3305555))

(assert (not b_lambda!92333))

(assert (not b!3305255))

(assert (not b_next!87553))

(assert b_and!226435)

(assert (not d!925627))

(assert (not b!3305252))

(assert (not d!925751))

(assert (not d!925821))

(assert (not d!925713))

(assert (not b_next!87555))

(assert (not b!3305558))

(assert tp_is_empty!17367)

(assert (not b!3305563))

(assert (not b!3305061))

(assert (not b!3305241))

(assert (not b!3305627))

(assert (not b!3305620))

(assert (not b!3305635))

(assert (not b!3305573))

(assert (not b!3305310))

(assert (not d!925711))

(assert (not b!3305587))

(assert (not d!925625))

(assert (not tb!171505))

(assert (not b!3305569))

(assert (not b_lambda!92337))

(assert (not b!3305287))

(assert (not b!3305317))

(assert (not b!3305280))

(assert (not d!925765))

(assert (not d!925657))

(assert (not b!3305305))

(assert (not b!3305498))

(assert (not d!925655))

(assert (not d!925687))

(assert (not b!3305414))

(assert (not b!3305222))

(assert (not b!3305345))

(assert (not b!3305284))

(assert (not d!925677))

(assert (not d!925679))

(assert (not b!3305615))

(assert (not b_next!87575))

(assert (not b!3305268))

(assert (not b!3305518))

(assert (not tb!171525))

(assert (not d!925761))

(assert (not b!3305265))

(assert (not d!925811))

(assert (not bm!240174))

(assert (not b!3305608))

(assert (not b!3305633))

(assert (not b!3305309))

(assert (not d!925827))

(assert (not d!925699))

(assert (not b!3305267))

(assert b_and!226541)

(assert (not b!3305583))

(assert (not d!925651))

(assert (not b_next!87573))

(assert (not d!925747))

(assert (not b!3305626))

(assert (not d!925721))

(assert (not b!3305547))

(assert (not b!3305523))

(assert (not b!3305436))

(assert (not bm!240184))

(assert (not b!3305548))

(assert (not b_lambda!92305))

(assert (not d!925707))

(assert b_and!226539)

(assert (not d!925757))

(assert (not b!3305618))

(assert (not b!3305360))

(assert (not tb!171495))

(assert (not b!3305592))

(assert (not b!3305298))

(assert (not b!3305566))

(assert (not d!925705))

(assert (not b!3305598))

(assert (not b!3305609))

(assert (not d!925685))

(assert (not b!3305355))

(assert (not b!3305582))

(assert (not d!925771))

(assert (not b_lambda!92309))

(assert (not b!3305269))

(assert (not bm!240178))

(assert (not b!3305295))

(assert (not b!3305552))

(assert b_and!226549)

(assert (not b!3305297))

(assert (not d!925783))

(assert (not d!925745))

(assert (not b!3305228))

(assert (not b!3305629))

(assert (not b!3305453))

(assert (not b_next!87557))

(assert (not b!3305411))

(assert (not b!3305602))

(assert (not b!3305437))

(assert (not b_lambda!92311))

(assert (not b!3305254))

(assert (not d!925695))

(assert (not d!925737))

(assert (not b!3305588))

(assert b_and!226533)

(assert (not b!3305619))

(assert (not b!3305625))

(assert (not b!3305501))

(assert (not b!3305639))

(assert (not b!3305346))

(assert (not b!3305412))

(assert (not d!925643))

(check-sat)

(pop 1)

(push 1)

(assert b_and!226545)

(assert b_and!226479)

(assert (not b_next!87579))

(assert b_and!226537)

(assert (not b_next!87559))

(assert (not b_next!87575))

(assert b_and!226539)

(assert b_and!226549)

(assert (not b_next!87557))

(assert b_and!226533)

(assert b_and!226431)

(assert (not b_next!87589))

(assert b_and!226547)

(assert b_and!226427)

(assert (not b_next!87595))

(assert (not b_next!87593))

(assert (not b_next!87549))

(assert b_and!226535)

(assert (not b_next!87591))

(assert (not b_next!87577))

(assert b_and!226543)

(assert (not b_next!87551))

(assert b_and!226475)

(assert (not b_next!87553))

(assert b_and!226435)

(assert (not b_next!87555))

(assert b_and!226541)

(assert (not b_next!87573))

(check-sat)

(pop 1)

