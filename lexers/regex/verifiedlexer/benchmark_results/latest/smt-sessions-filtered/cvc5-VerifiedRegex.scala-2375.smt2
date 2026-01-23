; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!118656 () Bool)

(assert start!118656)

(declare-fun b!1334282 () Bool)

(declare-fun b_free!32399 () Bool)

(declare-fun b_next!33103 () Bool)

(assert (=> b!1334282 (= b_free!32399 (not b_next!33103))))

(declare-fun tp!385877 () Bool)

(declare-fun b_and!89163 () Bool)

(assert (=> b!1334282 (= tp!385877 b_and!89163)))

(declare-fun b_free!32401 () Bool)

(declare-fun b_next!33105 () Bool)

(assert (=> b!1334282 (= b_free!32401 (not b_next!33105))))

(declare-fun tp!385876 () Bool)

(declare-fun b_and!89165 () Bool)

(assert (=> b!1334282 (= tp!385876 b_and!89165)))

(declare-fun b!1334267 () Bool)

(declare-fun b_free!32403 () Bool)

(declare-fun b_next!33107 () Bool)

(assert (=> b!1334267 (= b_free!32403 (not b_next!33107))))

(declare-fun tp!385871 () Bool)

(declare-fun b_and!89167 () Bool)

(assert (=> b!1334267 (= tp!385871 b_and!89167)))

(declare-fun b_free!32405 () Bool)

(declare-fun b_next!33109 () Bool)

(assert (=> b!1334267 (= b_free!32405 (not b_next!33109))))

(declare-fun tp!385878 () Bool)

(declare-fun b_and!89169 () Bool)

(assert (=> b!1334267 (= tp!385878 b_and!89169)))

(declare-fun b!1334275 () Bool)

(declare-fun b_free!32407 () Bool)

(declare-fun b_next!33111 () Bool)

(assert (=> b!1334275 (= b_free!32407 (not b_next!33111))))

(declare-fun tp!385880 () Bool)

(declare-fun b_and!89171 () Bool)

(assert (=> b!1334275 (= tp!385880 b_and!89171)))

(declare-fun b_free!32409 () Bool)

(declare-fun b_next!33113 () Bool)

(assert (=> b!1334275 (= b_free!32409 (not b_next!33113))))

(declare-fun tp!385869 () Bool)

(declare-fun b_and!89173 () Bool)

(assert (=> b!1334275 (= tp!385869 b_and!89173)))

(declare-fun b!1334266 () Bool)

(declare-fun e!854734 () Bool)

(declare-fun e!854742 () Bool)

(assert (=> b!1334266 (= e!854734 e!854742)))

(declare-fun res!601736 () Bool)

(assert (=> b!1334266 (=> (not res!601736) (not e!854742))))

(declare-datatypes ((C!7634 0))(
  ( (C!7635 (val!4377 Int)) )
))
(declare-datatypes ((List!13671 0))(
  ( (Nil!13605) (Cons!13605 (h!19006 C!7634) (t!119116 List!13671)) )
))
(declare-datatypes ((IArray!8973 0))(
  ( (IArray!8974 (innerList!4544 List!13671)) )
))
(declare-datatypes ((Conc!4484 0))(
  ( (Node!4484 (left!11681 Conc!4484) (right!12011 Conc!4484) (csize!9198 Int) (cheight!4695 Int)) (Leaf!6860 (xs!7199 IArray!8973) (csize!9199 Int)) (Empty!4484) )
))
(declare-datatypes ((BalanceConc!8908 0))(
  ( (BalanceConc!8909 (c!218499 Conc!4484)) )
))
(declare-fun lt!441891 () BalanceConc!8908)

(declare-fun size!11070 (BalanceConc!8908) Int)

(assert (=> b!1334266 (= res!601736 (> (size!11070 lt!441891) 0))))

(declare-datatypes ((List!13672 0))(
  ( (Nil!13606) (Cons!13606 (h!19007 (_ BitVec 16)) (t!119117 List!13672)) )
))
(declare-datatypes ((TokenValue!2448 0))(
  ( (FloatLiteralValue!4896 (text!17581 List!13672)) (TokenValueExt!2447 (__x!8725 Int)) (Broken!12240 (value!76811 List!13672)) (Object!2513) (End!2448) (Def!2448) (Underscore!2448) (Match!2448) (Else!2448) (Error!2448) (Case!2448) (If!2448) (Extends!2448) (Abstract!2448) (Class!2448) (Val!2448) (DelimiterValue!4896 (del!2508 List!13672)) (KeywordValue!2454 (value!76812 List!13672)) (CommentValue!4896 (value!76813 List!13672)) (WhitespaceValue!4896 (value!76814 List!13672)) (IndentationValue!2448 (value!76815 List!13672)) (String!16477) (Int32!2448) (Broken!12241 (value!76816 List!13672)) (Boolean!2449) (Unit!19753) (OperatorValue!2451 (op!2508 List!13672)) (IdentifierValue!4896 (value!76817 List!13672)) (IdentifierValue!4897 (value!76818 List!13672)) (WhitespaceValue!4897 (value!76819 List!13672)) (True!4896) (False!4896) (Broken!12242 (value!76820 List!13672)) (Broken!12243 (value!76821 List!13672)) (True!4897) (RightBrace!2448) (RightBracket!2448) (Colon!2448) (Null!2448) (Comma!2448) (LeftBracket!2448) (False!4897) (LeftBrace!2448) (ImaginaryLiteralValue!2448 (text!17582 List!13672)) (StringLiteralValue!7344 (value!76822 List!13672)) (EOFValue!2448 (value!76823 List!13672)) (IdentValue!2448 (value!76824 List!13672)) (DelimiterValue!4897 (value!76825 List!13672)) (DedentValue!2448 (value!76826 List!13672)) (NewLineValue!2448 (value!76827 List!13672)) (IntegerValue!7344 (value!76828 (_ BitVec 32)) (text!17583 List!13672)) (IntegerValue!7345 (value!76829 Int) (text!17584 List!13672)) (Times!2448) (Or!2448) (Equal!2448) (Minus!2448) (Broken!12244 (value!76830 List!13672)) (And!2448) (Div!2448) (LessEqual!2448) (Mod!2448) (Concat!6120) (Not!2448) (Plus!2448) (SpaceValue!2448 (value!76831 List!13672)) (IntegerValue!7346 (value!76832 Int) (text!17585 List!13672)) (StringLiteralValue!7345 (text!17586 List!13672)) (FloatLiteralValue!4897 (text!17587 List!13672)) (BytesLiteralValue!2448 (value!76833 List!13672)) (CommentValue!4897 (value!76834 List!13672)) (StringLiteralValue!7346 (value!76835 List!13672)) (ErrorTokenValue!2448 (msg!2509 List!13672)) )
))
(declare-datatypes ((Regex!3672 0))(
  ( (ElementMatch!3672 (c!218500 C!7634)) (Concat!6121 (regOne!7856 Regex!3672) (regTwo!7856 Regex!3672)) (EmptyExpr!3672) (Star!3672 (reg!4001 Regex!3672)) (EmptyLang!3672) (Union!3672 (regOne!7857 Regex!3672) (regTwo!7857 Regex!3672)) )
))
(declare-datatypes ((String!16478 0))(
  ( (String!16479 (value!76836 String)) )
))
(declare-datatypes ((TokenValueInjection!4556 0))(
  ( (TokenValueInjection!4557 (toValue!3589 Int) (toChars!3448 Int)) )
))
(declare-datatypes ((Rule!4516 0))(
  ( (Rule!4517 (regex!2358 Regex!3672) (tag!2620 String!16478) (isSeparator!2358 Bool) (transformation!2358 TokenValueInjection!4556)) )
))
(declare-datatypes ((Token!4378 0))(
  ( (Token!4379 (value!76837 TokenValue!2448) (rule!4103 Rule!4516) (size!11071 Int) (originalCharacters!3220 List!13671)) )
))
(declare-fun t2!34 () Token!4378)

(declare-fun charsOf!1330 (Token!4378) BalanceConc!8908)

(assert (=> b!1334266 (= lt!441891 (charsOf!1330 t2!34))))

(declare-fun e!854740 () Bool)

(assert (=> b!1334267 (= e!854740 (and tp!385871 tp!385878))))

(declare-fun e!854736 () Bool)

(declare-fun b!1334268 () Bool)

(declare-fun e!854747 () Bool)

(declare-fun tp!385873 () Bool)

(declare-fun inv!21 (TokenValue!2448) Bool)

(assert (=> b!1334268 (= e!854747 (and (inv!21 (value!76837 t2!34)) e!854736 tp!385873))))

(declare-fun b!1334269 () Bool)

(declare-fun res!601740 () Bool)

(assert (=> b!1334269 (=> (not res!601740) (not e!854734))))

(declare-datatypes ((List!13673 0))(
  ( (Nil!13607) (Cons!13607 (h!19008 Rule!4516) (t!119118 List!13673)) )
))
(declare-fun rules!2550 () List!13673)

(declare-fun isEmpty!8110 (List!13673) Bool)

(assert (=> b!1334269 (= res!601740 (not (isEmpty!8110 rules!2550)))))

(declare-fun res!601735 () Bool)

(assert (=> start!118656 (=> (not res!601735) (not e!854734))))

(declare-datatypes ((LexerInterface!2053 0))(
  ( (LexerInterfaceExt!2050 (__x!8726 Int)) (Lexer!2051) )
))
(declare-fun thiss!19762 () LexerInterface!2053)

(assert (=> start!118656 (= res!601735 (is-Lexer!2051 thiss!19762))))

(assert (=> start!118656 e!854734))

(assert (=> start!118656 true))

(declare-fun e!854738 () Bool)

(assert (=> start!118656 e!854738))

(declare-fun t1!34 () Token!4378)

(declare-fun e!854735 () Bool)

(declare-fun inv!17939 (Token!4378) Bool)

(assert (=> start!118656 (and (inv!17939 t1!34) e!854735)))

(assert (=> start!118656 (and (inv!17939 t2!34) e!854747)))

(declare-fun b!1334270 () Bool)

(declare-fun isEmpty!8111 (BalanceConc!8908) Bool)

(assert (=> b!1334270 (= e!854742 (isEmpty!8111 lt!441891))))

(declare-fun b!1334271 () Bool)

(declare-fun e!854743 () Bool)

(declare-fun tp!385870 () Bool)

(assert (=> b!1334271 (= e!854738 (and e!854743 tp!385870))))

(declare-fun b!1334272 () Bool)

(declare-fun res!601734 () Bool)

(assert (=> b!1334272 (=> (not res!601734) (not e!854734))))

(assert (=> b!1334272 (= res!601734 (not (= (isSeparator!2358 (rule!4103 t1!34)) (isSeparator!2358 (rule!4103 t2!34)))))))

(declare-fun tp!385875 () Bool)

(declare-fun b!1334273 () Bool)

(declare-fun e!854745 () Bool)

(declare-fun inv!17936 (String!16478) Bool)

(declare-fun inv!17940 (TokenValueInjection!4556) Bool)

(assert (=> b!1334273 (= e!854743 (and tp!385875 (inv!17936 (tag!2620 (h!19008 rules!2550))) (inv!17940 (transformation!2358 (h!19008 rules!2550))) e!854745))))

(declare-fun b!1334274 () Bool)

(declare-fun res!601737 () Bool)

(assert (=> b!1334274 (=> (not res!601737) (not e!854734))))

(declare-fun rulesProduceIndividualToken!1022 (LexerInterface!2053 List!13673 Token!4378) Bool)

(assert (=> b!1334274 (= res!601737 (rulesProduceIndividualToken!1022 thiss!19762 rules!2550 t2!34))))

(assert (=> b!1334275 (= e!854745 (and tp!385880 tp!385869))))

(declare-fun b!1334276 () Bool)

(declare-fun res!601738 () Bool)

(assert (=> b!1334276 (=> (not res!601738) (not e!854742))))

(declare-fun separableTokensPredicate!336 (LexerInterface!2053 Token!4378 Token!4378 List!13673) Bool)

(assert (=> b!1334276 (= res!601738 (separableTokensPredicate!336 thiss!19762 t1!34 t2!34 rules!2550))))

(declare-fun b!1334277 () Bool)

(declare-fun res!601732 () Bool)

(assert (=> b!1334277 (=> (not res!601732) (not e!854742))))

(declare-fun sepAndNonSepRulesDisjointChars!731 (List!13673 List!13673) Bool)

(assert (=> b!1334277 (= res!601732 (sepAndNonSepRulesDisjointChars!731 rules!2550 rules!2550))))

(declare-fun e!854746 () Bool)

(declare-fun tp!385879 () Bool)

(declare-fun b!1334278 () Bool)

(assert (=> b!1334278 (= e!854735 (and (inv!21 (value!76837 t1!34)) e!854746 tp!385879))))

(declare-fun b!1334279 () Bool)

(declare-fun res!601733 () Bool)

(assert (=> b!1334279 (=> (not res!601733) (not e!854734))))

(assert (=> b!1334279 (= res!601733 (rulesProduceIndividualToken!1022 thiss!19762 rules!2550 t1!34))))

(declare-fun tp!385874 () Bool)

(declare-fun b!1334280 () Bool)

(assert (=> b!1334280 (= e!854736 (and tp!385874 (inv!17936 (tag!2620 (rule!4103 t2!34))) (inv!17940 (transformation!2358 (rule!4103 t2!34))) e!854740))))

(declare-fun e!854733 () Bool)

(declare-fun b!1334281 () Bool)

(declare-fun tp!385872 () Bool)

(assert (=> b!1334281 (= e!854746 (and tp!385872 (inv!17936 (tag!2620 (rule!4103 t1!34))) (inv!17940 (transformation!2358 (rule!4103 t1!34))) e!854733))))

(assert (=> b!1334282 (= e!854733 (and tp!385877 tp!385876))))

(declare-fun b!1334283 () Bool)

(declare-fun res!601739 () Bool)

(assert (=> b!1334283 (=> (not res!601739) (not e!854734))))

(declare-fun rulesInvariant!1923 (LexerInterface!2053 List!13673) Bool)

(assert (=> b!1334283 (= res!601739 (rulesInvariant!1923 thiss!19762 rules!2550))))

(assert (= (and start!118656 res!601735) b!1334269))

(assert (= (and b!1334269 res!601740) b!1334283))

(assert (= (and b!1334283 res!601739) b!1334279))

(assert (= (and b!1334279 res!601733) b!1334274))

(assert (= (and b!1334274 res!601737) b!1334272))

(assert (= (and b!1334272 res!601734) b!1334266))

(assert (= (and b!1334266 res!601736) b!1334277))

(assert (= (and b!1334277 res!601732) b!1334276))

(assert (= (and b!1334276 res!601738) b!1334270))

(assert (= b!1334273 b!1334275))

(assert (= b!1334271 b!1334273))

(assert (= (and start!118656 (is-Cons!13607 rules!2550)) b!1334271))

(assert (= b!1334281 b!1334282))

(assert (= b!1334278 b!1334281))

(assert (= start!118656 b!1334278))

(assert (= b!1334280 b!1334267))

(assert (= b!1334268 b!1334280))

(assert (= start!118656 b!1334268))

(declare-fun m!1491575 () Bool)

(assert (=> b!1334268 m!1491575))

(declare-fun m!1491577 () Bool)

(assert (=> b!1334276 m!1491577))

(declare-fun m!1491579 () Bool)

(assert (=> b!1334274 m!1491579))

(declare-fun m!1491581 () Bool)

(assert (=> b!1334269 m!1491581))

(declare-fun m!1491583 () Bool)

(assert (=> b!1334280 m!1491583))

(declare-fun m!1491585 () Bool)

(assert (=> b!1334280 m!1491585))

(declare-fun m!1491587 () Bool)

(assert (=> start!118656 m!1491587))

(declare-fun m!1491589 () Bool)

(assert (=> start!118656 m!1491589))

(declare-fun m!1491591 () Bool)

(assert (=> b!1334277 m!1491591))

(declare-fun m!1491593 () Bool)

(assert (=> b!1334281 m!1491593))

(declare-fun m!1491595 () Bool)

(assert (=> b!1334281 m!1491595))

(declare-fun m!1491597 () Bool)

(assert (=> b!1334270 m!1491597))

(declare-fun m!1491599 () Bool)

(assert (=> b!1334283 m!1491599))

(declare-fun m!1491601 () Bool)

(assert (=> b!1334279 m!1491601))

(declare-fun m!1491603 () Bool)

(assert (=> b!1334266 m!1491603))

(declare-fun m!1491605 () Bool)

(assert (=> b!1334266 m!1491605))

(declare-fun m!1491607 () Bool)

(assert (=> b!1334278 m!1491607))

(declare-fun m!1491609 () Bool)

(assert (=> b!1334273 m!1491609))

(declare-fun m!1491611 () Bool)

(assert (=> b!1334273 m!1491611))

(push 1)

(assert b_and!89171)

(assert (not b_next!33105))

(assert (not b_next!33109))

(assert b_and!89167)

(assert (not b!1334274))

(assert (not b!1334276))

(assert (not b!1334271))

(assert b_and!89173)

(assert (not b!1334281))

(assert (not b!1334280))

(assert (not b!1334266))

(assert (not b!1334278))

(assert (not b!1334268))

(assert (not b!1334273))

(assert (not b!1334269))

(assert b_and!89169)

(assert (not b!1334283))

(assert b_and!89165)

(assert (not b_next!33103))

(assert (not b!1334270))

(assert (not b!1334279))

(assert (not b_next!33111))

(assert (not b!1334277))

(assert b_and!89163)

(assert (not b_next!33107))

(assert (not start!118656))

(assert (not b_next!33113))

(check-sat)

(pop 1)

(push 1)

(assert b_and!89171)

(assert b_and!89169)

(assert (not b_next!33105))

(assert (not b_next!33109))

(assert b_and!89167)

(assert (not b_next!33111))

(assert b_and!89163)

(assert b_and!89173)

(assert b_and!89165)

(assert (not b_next!33103))

(assert (not b_next!33107))

(assert (not b_next!33113))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!375768 () Bool)

(declare-fun res!601778 () Bool)

(declare-fun e!854799 () Bool)

(assert (=> d!375768 (=> (not res!601778) (not e!854799))))

(declare-fun rulesValid!856 (LexerInterface!2053 List!13673) Bool)

(assert (=> d!375768 (= res!601778 (rulesValid!856 thiss!19762 rules!2550))))

(assert (=> d!375768 (= (rulesInvariant!1923 thiss!19762 rules!2550) e!854799)))

(declare-fun b!1334340 () Bool)

(declare-datatypes ((List!13677 0))(
  ( (Nil!13611) (Cons!13611 (h!19012 String!16478) (t!119139 List!13677)) )
))
(declare-fun noDuplicateTag!856 (LexerInterface!2053 List!13673 List!13677) Bool)

(assert (=> b!1334340 (= e!854799 (noDuplicateTag!856 thiss!19762 rules!2550 Nil!13611))))

(assert (= (and d!375768 res!601778) b!1334340))

(declare-fun m!1491651 () Bool)

(assert (=> d!375768 m!1491651))

(declare-fun m!1491653 () Bool)

(assert (=> b!1334340 m!1491653))

(assert (=> b!1334283 d!375768))

(declare-fun d!375770 () Bool)

(assert (=> d!375770 (= (inv!17936 (tag!2620 (h!19008 rules!2550))) (= (mod (str.len (value!76836 (tag!2620 (h!19008 rules!2550)))) 2) 0))))

(assert (=> b!1334273 d!375770))

(declare-fun d!375772 () Bool)

(declare-fun res!601781 () Bool)

(declare-fun e!854802 () Bool)

(assert (=> d!375772 (=> (not res!601781) (not e!854802))))

(declare-fun semiInverseModEq!887 (Int Int) Bool)

(assert (=> d!375772 (= res!601781 (semiInverseModEq!887 (toChars!3448 (transformation!2358 (h!19008 rules!2550))) (toValue!3589 (transformation!2358 (h!19008 rules!2550)))))))

(assert (=> d!375772 (= (inv!17940 (transformation!2358 (h!19008 rules!2550))) e!854802)))

(declare-fun b!1334343 () Bool)

(declare-fun equivClasses!846 (Int Int) Bool)

(assert (=> b!1334343 (= e!854802 (equivClasses!846 (toChars!3448 (transformation!2358 (h!19008 rules!2550))) (toValue!3589 (transformation!2358 (h!19008 rules!2550)))))))

(assert (= (and d!375772 res!601781) b!1334343))

(declare-fun m!1491655 () Bool)

(assert (=> d!375772 m!1491655))

(declare-fun m!1491657 () Bool)

(assert (=> b!1334343 m!1491657))

(assert (=> b!1334273 d!375772))

(declare-fun d!375774 () Bool)

(declare-fun lt!441897 () Bool)

(declare-fun isEmpty!8114 (List!13671) Bool)

(declare-fun list!5164 (BalanceConc!8908) List!13671)

(assert (=> d!375774 (= lt!441897 (isEmpty!8114 (list!5164 lt!441891)))))

(declare-fun isEmpty!8115 (Conc!4484) Bool)

(assert (=> d!375774 (= lt!441897 (isEmpty!8115 (c!218499 lt!441891)))))

(assert (=> d!375774 (= (isEmpty!8111 lt!441891) lt!441897)))

(declare-fun bs!331821 () Bool)

(assert (= bs!331821 d!375774))

(declare-fun m!1491659 () Bool)

(assert (=> bs!331821 m!1491659))

(assert (=> bs!331821 m!1491659))

(declare-fun m!1491661 () Bool)

(assert (=> bs!331821 m!1491661))

(declare-fun m!1491663 () Bool)

(assert (=> bs!331821 m!1491663))

(assert (=> b!1334270 d!375774))

(declare-fun d!375780 () Bool)

(assert (=> d!375780 (= (inv!17936 (tag!2620 (rule!4103 t1!34))) (= (mod (str.len (value!76836 (tag!2620 (rule!4103 t1!34)))) 2) 0))))

(assert (=> b!1334281 d!375780))

(declare-fun d!375782 () Bool)

(declare-fun res!601782 () Bool)

(declare-fun e!854803 () Bool)

(assert (=> d!375782 (=> (not res!601782) (not e!854803))))

(assert (=> d!375782 (= res!601782 (semiInverseModEq!887 (toChars!3448 (transformation!2358 (rule!4103 t1!34))) (toValue!3589 (transformation!2358 (rule!4103 t1!34)))))))

(assert (=> d!375782 (= (inv!17940 (transformation!2358 (rule!4103 t1!34))) e!854803)))

(declare-fun b!1334344 () Bool)

(assert (=> b!1334344 (= e!854803 (equivClasses!846 (toChars!3448 (transformation!2358 (rule!4103 t1!34))) (toValue!3589 (transformation!2358 (rule!4103 t1!34)))))))

(assert (= (and d!375782 res!601782) b!1334344))

(declare-fun m!1491665 () Bool)

(assert (=> d!375782 m!1491665))

(declare-fun m!1491667 () Bool)

(assert (=> b!1334344 m!1491667))

(assert (=> b!1334281 d!375782))

(declare-fun d!375784 () Bool)

(declare-fun lt!441903 () Bool)

(declare-fun e!854812 () Bool)

(assert (=> d!375784 (= lt!441903 e!854812)))

(declare-fun res!601795 () Bool)

(assert (=> d!375784 (=> (not res!601795) (not e!854812))))

(declare-datatypes ((List!13678 0))(
  ( (Nil!13612) (Cons!13612 (h!19013 Token!4378) (t!119140 List!13678)) )
))
(declare-datatypes ((IArray!8977 0))(
  ( (IArray!8978 (innerList!4546 List!13678)) )
))
(declare-datatypes ((Conc!4486 0))(
  ( (Node!4486 (left!11683 Conc!4486) (right!12013 Conc!4486) (csize!9202 Int) (cheight!4697 Int)) (Leaf!6862 (xs!7201 IArray!8977) (csize!9203 Int)) (Empty!4486) )
))
(declare-datatypes ((BalanceConc!8912 0))(
  ( (BalanceConc!8913 (c!218511 Conc!4486)) )
))
(declare-fun list!5165 (BalanceConc!8912) List!13678)

(declare-datatypes ((tuple2!13256 0))(
  ( (tuple2!13257 (_1!7514 BalanceConc!8912) (_2!7514 BalanceConc!8908)) )
))
(declare-fun lex!886 (LexerInterface!2053 List!13673 BalanceConc!8908) tuple2!13256)

(declare-fun print!825 (LexerInterface!2053 BalanceConc!8912) BalanceConc!8908)

(declare-fun singletonSeq!955 (Token!4378) BalanceConc!8912)

(assert (=> d!375784 (= res!601795 (= (list!5165 (_1!7514 (lex!886 thiss!19762 rules!2550 (print!825 thiss!19762 (singletonSeq!955 t1!34))))) (list!5165 (singletonSeq!955 t1!34))))))

(declare-fun e!854813 () Bool)

(assert (=> d!375784 (= lt!441903 e!854813)))

(declare-fun res!601794 () Bool)

(assert (=> d!375784 (=> (not res!601794) (not e!854813))))

(declare-fun lt!441902 () tuple2!13256)

(declare-fun size!11074 (BalanceConc!8912) Int)

(assert (=> d!375784 (= res!601794 (= (size!11074 (_1!7514 lt!441902)) 1))))

(assert (=> d!375784 (= lt!441902 (lex!886 thiss!19762 rules!2550 (print!825 thiss!19762 (singletonSeq!955 t1!34))))))

(assert (=> d!375784 (not (isEmpty!8110 rules!2550))))

(assert (=> d!375784 (= (rulesProduceIndividualToken!1022 thiss!19762 rules!2550 t1!34) lt!441903)))

(declare-fun b!1334355 () Bool)

(declare-fun res!601793 () Bool)

(assert (=> b!1334355 (=> (not res!601793) (not e!854813))))

(declare-fun apply!3166 (BalanceConc!8912 Int) Token!4378)

(assert (=> b!1334355 (= res!601793 (= (apply!3166 (_1!7514 lt!441902) 0) t1!34))))

(declare-fun b!1334356 () Bool)

(assert (=> b!1334356 (= e!854813 (isEmpty!8111 (_2!7514 lt!441902)))))

(declare-fun b!1334357 () Bool)

(assert (=> b!1334357 (= e!854812 (isEmpty!8111 (_2!7514 (lex!886 thiss!19762 rules!2550 (print!825 thiss!19762 (singletonSeq!955 t1!34))))))))

(assert (= (and d!375784 res!601794) b!1334355))

(assert (= (and b!1334355 res!601793) b!1334356))

(assert (= (and d!375784 res!601795) b!1334357))

(declare-fun m!1491689 () Bool)

(assert (=> d!375784 m!1491689))

(declare-fun m!1491691 () Bool)

(assert (=> d!375784 m!1491691))

(declare-fun m!1491693 () Bool)

(assert (=> d!375784 m!1491693))

(assert (=> d!375784 m!1491581))

(assert (=> d!375784 m!1491689))

(declare-fun m!1491695 () Bool)

(assert (=> d!375784 m!1491695))

(assert (=> d!375784 m!1491691))

(declare-fun m!1491697 () Bool)

(assert (=> d!375784 m!1491697))

(assert (=> d!375784 m!1491689))

(declare-fun m!1491699 () Bool)

(assert (=> d!375784 m!1491699))

(declare-fun m!1491701 () Bool)

(assert (=> b!1334355 m!1491701))

(declare-fun m!1491703 () Bool)

(assert (=> b!1334356 m!1491703))

(assert (=> b!1334357 m!1491689))

(assert (=> b!1334357 m!1491689))

(assert (=> b!1334357 m!1491691))

(assert (=> b!1334357 m!1491691))

(assert (=> b!1334357 m!1491697))

(declare-fun m!1491705 () Bool)

(assert (=> b!1334357 m!1491705))

(assert (=> b!1334279 d!375784))

(declare-fun d!375794 () Bool)

(assert (=> d!375794 (= (isEmpty!8110 rules!2550) (is-Nil!13607 rules!2550))))

(assert (=> b!1334269 d!375794))

(declare-fun d!375796 () Bool)

(assert (=> d!375796 (= (inv!17936 (tag!2620 (rule!4103 t2!34))) (= (mod (str.len (value!76836 (tag!2620 (rule!4103 t2!34)))) 2) 0))))

(assert (=> b!1334280 d!375796))

(declare-fun d!375798 () Bool)

(declare-fun res!601796 () Bool)

(declare-fun e!854814 () Bool)

(assert (=> d!375798 (=> (not res!601796) (not e!854814))))

(assert (=> d!375798 (= res!601796 (semiInverseModEq!887 (toChars!3448 (transformation!2358 (rule!4103 t2!34))) (toValue!3589 (transformation!2358 (rule!4103 t2!34)))))))

(assert (=> d!375798 (= (inv!17940 (transformation!2358 (rule!4103 t2!34))) e!854814)))

(declare-fun b!1334358 () Bool)

(assert (=> b!1334358 (= e!854814 (equivClasses!846 (toChars!3448 (transformation!2358 (rule!4103 t2!34))) (toValue!3589 (transformation!2358 (rule!4103 t2!34)))))))

(assert (= (and d!375798 res!601796) b!1334358))

(declare-fun m!1491707 () Bool)

(assert (=> d!375798 m!1491707))

(declare-fun m!1491709 () Bool)

(assert (=> b!1334358 m!1491709))

(assert (=> b!1334280 d!375798))

(declare-fun b!1334369 () Bool)

(declare-fun e!854822 () Bool)

(declare-fun e!854821 () Bool)

(assert (=> b!1334369 (= e!854822 e!854821)))

(declare-fun c!218508 () Bool)

(assert (=> b!1334369 (= c!218508 (is-IntegerValue!7345 (value!76837 t1!34)))))

(declare-fun b!1334370 () Bool)

(declare-fun e!854823 () Bool)

(declare-fun inv!15 (TokenValue!2448) Bool)

(assert (=> b!1334370 (= e!854823 (inv!15 (value!76837 t1!34)))))

(declare-fun b!1334371 () Bool)

(declare-fun inv!16 (TokenValue!2448) Bool)

(assert (=> b!1334371 (= e!854822 (inv!16 (value!76837 t1!34)))))

(declare-fun d!375800 () Bool)

(declare-fun c!218507 () Bool)

(assert (=> d!375800 (= c!218507 (is-IntegerValue!7344 (value!76837 t1!34)))))

(assert (=> d!375800 (= (inv!21 (value!76837 t1!34)) e!854822)))

(declare-fun b!1334372 () Bool)

(declare-fun inv!17 (TokenValue!2448) Bool)

(assert (=> b!1334372 (= e!854821 (inv!17 (value!76837 t1!34)))))

(declare-fun b!1334373 () Bool)

(declare-fun res!601799 () Bool)

(assert (=> b!1334373 (=> res!601799 e!854823)))

(assert (=> b!1334373 (= res!601799 (not (is-IntegerValue!7346 (value!76837 t1!34))))))

(assert (=> b!1334373 (= e!854821 e!854823)))

(assert (= (and d!375800 c!218507) b!1334371))

(assert (= (and d!375800 (not c!218507)) b!1334369))

(assert (= (and b!1334369 c!218508) b!1334372))

(assert (= (and b!1334369 (not c!218508)) b!1334373))

(assert (= (and b!1334373 (not res!601799)) b!1334370))

(declare-fun m!1491711 () Bool)

(assert (=> b!1334370 m!1491711))

(declare-fun m!1491713 () Bool)

(assert (=> b!1334371 m!1491713))

(declare-fun m!1491715 () Bool)

(assert (=> b!1334372 m!1491715))

(assert (=> b!1334278 d!375800))

(declare-fun b!1334374 () Bool)

(declare-fun e!854825 () Bool)

(declare-fun e!854824 () Bool)

(assert (=> b!1334374 (= e!854825 e!854824)))

(declare-fun c!218510 () Bool)

(assert (=> b!1334374 (= c!218510 (is-IntegerValue!7345 (value!76837 t2!34)))))

(declare-fun b!1334375 () Bool)

(declare-fun e!854826 () Bool)

(assert (=> b!1334375 (= e!854826 (inv!15 (value!76837 t2!34)))))

(declare-fun b!1334376 () Bool)

(assert (=> b!1334376 (= e!854825 (inv!16 (value!76837 t2!34)))))

(declare-fun d!375802 () Bool)

(declare-fun c!218509 () Bool)

(assert (=> d!375802 (= c!218509 (is-IntegerValue!7344 (value!76837 t2!34)))))

(assert (=> d!375802 (= (inv!21 (value!76837 t2!34)) e!854825)))

(declare-fun b!1334377 () Bool)

(assert (=> b!1334377 (= e!854824 (inv!17 (value!76837 t2!34)))))

(declare-fun b!1334378 () Bool)

(declare-fun res!601800 () Bool)

(assert (=> b!1334378 (=> res!601800 e!854826)))

(assert (=> b!1334378 (= res!601800 (not (is-IntegerValue!7346 (value!76837 t2!34))))))

(assert (=> b!1334378 (= e!854824 e!854826)))

(assert (= (and d!375802 c!218509) b!1334376))

(assert (= (and d!375802 (not c!218509)) b!1334374))

(assert (= (and b!1334374 c!218510) b!1334377))

(assert (= (and b!1334374 (not c!218510)) b!1334378))

(assert (= (and b!1334378 (not res!601800)) b!1334375))

(declare-fun m!1491717 () Bool)

(assert (=> b!1334375 m!1491717))

(declare-fun m!1491719 () Bool)

(assert (=> b!1334376 m!1491719))

(declare-fun m!1491721 () Bool)

(assert (=> b!1334377 m!1491721))

(assert (=> b!1334268 d!375802))

(declare-fun d!375804 () Bool)

(declare-fun lt!441906 () Int)

(declare-fun size!11075 (List!13671) Int)

(assert (=> d!375804 (= lt!441906 (size!11075 (list!5164 lt!441891)))))

(declare-fun size!11076 (Conc!4484) Int)

(assert (=> d!375804 (= lt!441906 (size!11076 (c!218499 lt!441891)))))

(assert (=> d!375804 (= (size!11070 lt!441891) lt!441906)))

(declare-fun bs!331823 () Bool)

(assert (= bs!331823 d!375804))

(assert (=> bs!331823 m!1491659))

(assert (=> bs!331823 m!1491659))

(declare-fun m!1491723 () Bool)

(assert (=> bs!331823 m!1491723))

(declare-fun m!1491725 () Bool)

(assert (=> bs!331823 m!1491725))

(assert (=> b!1334266 d!375804))

(declare-fun d!375806 () Bool)

(declare-fun lt!441909 () BalanceConc!8908)

(assert (=> d!375806 (= (list!5164 lt!441909) (originalCharacters!3220 t2!34))))

(declare-fun dynLambda!5989 (Int TokenValue!2448) BalanceConc!8908)

(assert (=> d!375806 (= lt!441909 (dynLambda!5989 (toChars!3448 (transformation!2358 (rule!4103 t2!34))) (value!76837 t2!34)))))

(assert (=> d!375806 (= (charsOf!1330 t2!34) lt!441909)))

(declare-fun b_lambda!39327 () Bool)

(assert (=> (not b_lambda!39327) (not d!375806)))

(declare-fun t!119124 () Bool)

(declare-fun tb!70369 () Bool)

(assert (=> (and b!1334282 (= (toChars!3448 (transformation!2358 (rule!4103 t1!34))) (toChars!3448 (transformation!2358 (rule!4103 t2!34)))) t!119124) tb!70369))

(declare-fun b!1334383 () Bool)

(declare-fun e!854829 () Bool)

(declare-fun tp!385919 () Bool)

(declare-fun inv!17943 (Conc!4484) Bool)

(assert (=> b!1334383 (= e!854829 (and (inv!17943 (c!218499 (dynLambda!5989 (toChars!3448 (transformation!2358 (rule!4103 t2!34))) (value!76837 t2!34)))) tp!385919))))

(declare-fun result!85462 () Bool)

(declare-fun inv!17944 (BalanceConc!8908) Bool)

(assert (=> tb!70369 (= result!85462 (and (inv!17944 (dynLambda!5989 (toChars!3448 (transformation!2358 (rule!4103 t2!34))) (value!76837 t2!34))) e!854829))))

(assert (= tb!70369 b!1334383))

(declare-fun m!1491727 () Bool)

(assert (=> b!1334383 m!1491727))

(declare-fun m!1491729 () Bool)

(assert (=> tb!70369 m!1491729))

(assert (=> d!375806 t!119124))

(declare-fun b_and!89187 () Bool)

(assert (= b_and!89165 (and (=> t!119124 result!85462) b_and!89187)))

(declare-fun t!119126 () Bool)

(declare-fun tb!70371 () Bool)

(assert (=> (and b!1334267 (= (toChars!3448 (transformation!2358 (rule!4103 t2!34))) (toChars!3448 (transformation!2358 (rule!4103 t2!34)))) t!119126) tb!70371))

(declare-fun result!85466 () Bool)

(assert (= result!85466 result!85462))

(assert (=> d!375806 t!119126))

(declare-fun b_and!89189 () Bool)

(assert (= b_and!89169 (and (=> t!119126 result!85466) b_and!89189)))

(declare-fun tb!70373 () Bool)

(declare-fun t!119128 () Bool)

(assert (=> (and b!1334275 (= (toChars!3448 (transformation!2358 (h!19008 rules!2550))) (toChars!3448 (transformation!2358 (rule!4103 t2!34)))) t!119128) tb!70373))

(declare-fun result!85468 () Bool)

(assert (= result!85468 result!85462))

(assert (=> d!375806 t!119128))

(declare-fun b_and!89191 () Bool)

(assert (= b_and!89173 (and (=> t!119128 result!85468) b_and!89191)))

(declare-fun m!1491731 () Bool)

(assert (=> d!375806 m!1491731))

(declare-fun m!1491733 () Bool)

(assert (=> d!375806 m!1491733))

(assert (=> b!1334266 d!375806))

(declare-fun d!375808 () Bool)

(declare-fun res!601805 () Bool)

(declare-fun e!854834 () Bool)

(assert (=> d!375808 (=> res!601805 e!854834)))

(assert (=> d!375808 (= res!601805 (not (is-Cons!13607 rules!2550)))))

(assert (=> d!375808 (= (sepAndNonSepRulesDisjointChars!731 rules!2550 rules!2550) e!854834)))

(declare-fun b!1334388 () Bool)

(declare-fun e!854835 () Bool)

(assert (=> b!1334388 (= e!854834 e!854835)))

(declare-fun res!601806 () Bool)

(assert (=> b!1334388 (=> (not res!601806) (not e!854835))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!330 (Rule!4516 List!13673) Bool)

(assert (=> b!1334388 (= res!601806 (ruleDisjointCharsFromAllFromOtherType!330 (h!19008 rules!2550) rules!2550))))

(declare-fun b!1334389 () Bool)

(assert (=> b!1334389 (= e!854835 (sepAndNonSepRulesDisjointChars!731 rules!2550 (t!119118 rules!2550)))))

(assert (= (and d!375808 (not res!601805)) b!1334388))

(assert (= (and b!1334388 res!601806) b!1334389))

(declare-fun m!1491735 () Bool)

(assert (=> b!1334388 m!1491735))

(declare-fun m!1491737 () Bool)

(assert (=> b!1334389 m!1491737))

(assert (=> b!1334277 d!375808))

(declare-fun d!375810 () Bool)

(declare-fun res!601811 () Bool)

(declare-fun e!854838 () Bool)

(assert (=> d!375810 (=> (not res!601811) (not e!854838))))

(assert (=> d!375810 (= res!601811 (not (isEmpty!8114 (originalCharacters!3220 t1!34))))))

(assert (=> d!375810 (= (inv!17939 t1!34) e!854838)))

(declare-fun b!1334394 () Bool)

(declare-fun res!601812 () Bool)

(assert (=> b!1334394 (=> (not res!601812) (not e!854838))))

(assert (=> b!1334394 (= res!601812 (= (originalCharacters!3220 t1!34) (list!5164 (dynLambda!5989 (toChars!3448 (transformation!2358 (rule!4103 t1!34))) (value!76837 t1!34)))))))

(declare-fun b!1334395 () Bool)

(assert (=> b!1334395 (= e!854838 (= (size!11071 t1!34) (size!11075 (originalCharacters!3220 t1!34))))))

(assert (= (and d!375810 res!601811) b!1334394))

(assert (= (and b!1334394 res!601812) b!1334395))

(declare-fun b_lambda!39329 () Bool)

(assert (=> (not b_lambda!39329) (not b!1334394)))

(declare-fun t!119130 () Bool)

(declare-fun tb!70375 () Bool)

(assert (=> (and b!1334282 (= (toChars!3448 (transformation!2358 (rule!4103 t1!34))) (toChars!3448 (transformation!2358 (rule!4103 t1!34)))) t!119130) tb!70375))

(declare-fun b!1334396 () Bool)

(declare-fun e!854839 () Bool)

(declare-fun tp!385920 () Bool)

(assert (=> b!1334396 (= e!854839 (and (inv!17943 (c!218499 (dynLambda!5989 (toChars!3448 (transformation!2358 (rule!4103 t1!34))) (value!76837 t1!34)))) tp!385920))))

(declare-fun result!85470 () Bool)

(assert (=> tb!70375 (= result!85470 (and (inv!17944 (dynLambda!5989 (toChars!3448 (transformation!2358 (rule!4103 t1!34))) (value!76837 t1!34))) e!854839))))

(assert (= tb!70375 b!1334396))

(declare-fun m!1491739 () Bool)

(assert (=> b!1334396 m!1491739))

(declare-fun m!1491741 () Bool)

(assert (=> tb!70375 m!1491741))

(assert (=> b!1334394 t!119130))

(declare-fun b_and!89193 () Bool)

(assert (= b_and!89187 (and (=> t!119130 result!85470) b_and!89193)))

(declare-fun tb!70377 () Bool)

(declare-fun t!119132 () Bool)

(assert (=> (and b!1334267 (= (toChars!3448 (transformation!2358 (rule!4103 t2!34))) (toChars!3448 (transformation!2358 (rule!4103 t1!34)))) t!119132) tb!70377))

(declare-fun result!85472 () Bool)

(assert (= result!85472 result!85470))

(assert (=> b!1334394 t!119132))

(declare-fun b_and!89195 () Bool)

(assert (= b_and!89189 (and (=> t!119132 result!85472) b_and!89195)))

(declare-fun tb!70379 () Bool)

(declare-fun t!119134 () Bool)

(assert (=> (and b!1334275 (= (toChars!3448 (transformation!2358 (h!19008 rules!2550))) (toChars!3448 (transformation!2358 (rule!4103 t1!34)))) t!119134) tb!70379))

(declare-fun result!85474 () Bool)

(assert (= result!85474 result!85470))

(assert (=> b!1334394 t!119134))

(declare-fun b_and!89197 () Bool)

(assert (= b_and!89191 (and (=> t!119134 result!85474) b_and!89197)))

(declare-fun m!1491743 () Bool)

(assert (=> d!375810 m!1491743))

(declare-fun m!1491745 () Bool)

(assert (=> b!1334394 m!1491745))

(assert (=> b!1334394 m!1491745))

(declare-fun m!1491747 () Bool)

(assert (=> b!1334394 m!1491747))

(declare-fun m!1491749 () Bool)

(assert (=> b!1334395 m!1491749))

(assert (=> start!118656 d!375810))

(declare-fun d!375812 () Bool)

(declare-fun res!601813 () Bool)

(declare-fun e!854840 () Bool)

(assert (=> d!375812 (=> (not res!601813) (not e!854840))))

(assert (=> d!375812 (= res!601813 (not (isEmpty!8114 (originalCharacters!3220 t2!34))))))

(assert (=> d!375812 (= (inv!17939 t2!34) e!854840)))

(declare-fun b!1334397 () Bool)

(declare-fun res!601814 () Bool)

(assert (=> b!1334397 (=> (not res!601814) (not e!854840))))

(assert (=> b!1334397 (= res!601814 (= (originalCharacters!3220 t2!34) (list!5164 (dynLambda!5989 (toChars!3448 (transformation!2358 (rule!4103 t2!34))) (value!76837 t2!34)))))))

(declare-fun b!1334398 () Bool)

(assert (=> b!1334398 (= e!854840 (= (size!11071 t2!34) (size!11075 (originalCharacters!3220 t2!34))))))

(assert (= (and d!375812 res!601813) b!1334397))

(assert (= (and b!1334397 res!601814) b!1334398))

(declare-fun b_lambda!39331 () Bool)

(assert (=> (not b_lambda!39331) (not b!1334397)))

(assert (=> b!1334397 t!119124))

(declare-fun b_and!89199 () Bool)

(assert (= b_and!89193 (and (=> t!119124 result!85462) b_and!89199)))

(assert (=> b!1334397 t!119126))

(declare-fun b_and!89201 () Bool)

(assert (= b_and!89195 (and (=> t!119126 result!85466) b_and!89201)))

(assert (=> b!1334397 t!119128))

(declare-fun b_and!89203 () Bool)

(assert (= b_and!89197 (and (=> t!119128 result!85468) b_and!89203)))

(declare-fun m!1491751 () Bool)

(assert (=> d!375812 m!1491751))

(assert (=> b!1334397 m!1491733))

(assert (=> b!1334397 m!1491733))

(declare-fun m!1491753 () Bool)

(assert (=> b!1334397 m!1491753))

(declare-fun m!1491755 () Bool)

(assert (=> b!1334398 m!1491755))

(assert (=> start!118656 d!375812))

(declare-fun d!375814 () Bool)

(declare-fun prefixMatchZipperSequence!199 (Regex!3672 BalanceConc!8908) Bool)

(declare-fun rulesRegex!241 (LexerInterface!2053 List!13673) Regex!3672)

(declare-fun ++!3473 (BalanceConc!8908 BalanceConc!8908) BalanceConc!8908)

(declare-fun singletonSeq!956 (C!7634) BalanceConc!8908)

(declare-fun apply!3167 (BalanceConc!8908 Int) C!7634)

(assert (=> d!375814 (= (separableTokensPredicate!336 thiss!19762 t1!34 t2!34 rules!2550) (not (prefixMatchZipperSequence!199 (rulesRegex!241 thiss!19762 rules!2550) (++!3473 (charsOf!1330 t1!34) (singletonSeq!956 (apply!3167 (charsOf!1330 t2!34) 0))))))))

(declare-fun bs!331824 () Bool)

(assert (= bs!331824 d!375814))

(assert (=> bs!331824 m!1491605))

(assert (=> bs!331824 m!1491605))

(declare-fun m!1491757 () Bool)

(assert (=> bs!331824 m!1491757))

(declare-fun m!1491759 () Bool)

(assert (=> bs!331824 m!1491759))

(assert (=> bs!331824 m!1491759))

(declare-fun m!1491761 () Bool)

(assert (=> bs!331824 m!1491761))

(declare-fun m!1491763 () Bool)

(assert (=> bs!331824 m!1491763))

(declare-fun m!1491765 () Bool)

(assert (=> bs!331824 m!1491765))

(declare-fun m!1491767 () Bool)

(assert (=> bs!331824 m!1491767))

(assert (=> bs!331824 m!1491761))

(assert (=> bs!331824 m!1491765))

(assert (=> bs!331824 m!1491757))

(assert (=> bs!331824 m!1491767))

(assert (=> b!1334276 d!375814))

(declare-fun d!375816 () Bool)

(declare-fun lt!441911 () Bool)

(declare-fun e!854841 () Bool)

(assert (=> d!375816 (= lt!441911 e!854841)))

(declare-fun res!601817 () Bool)

(assert (=> d!375816 (=> (not res!601817) (not e!854841))))

(assert (=> d!375816 (= res!601817 (= (list!5165 (_1!7514 (lex!886 thiss!19762 rules!2550 (print!825 thiss!19762 (singletonSeq!955 t2!34))))) (list!5165 (singletonSeq!955 t2!34))))))

(declare-fun e!854842 () Bool)

(assert (=> d!375816 (= lt!441911 e!854842)))

(declare-fun res!601816 () Bool)

(assert (=> d!375816 (=> (not res!601816) (not e!854842))))

(declare-fun lt!441910 () tuple2!13256)

(assert (=> d!375816 (= res!601816 (= (size!11074 (_1!7514 lt!441910)) 1))))

(assert (=> d!375816 (= lt!441910 (lex!886 thiss!19762 rules!2550 (print!825 thiss!19762 (singletonSeq!955 t2!34))))))

(assert (=> d!375816 (not (isEmpty!8110 rules!2550))))

(assert (=> d!375816 (= (rulesProduceIndividualToken!1022 thiss!19762 rules!2550 t2!34) lt!441911)))

(declare-fun b!1334399 () Bool)

(declare-fun res!601815 () Bool)

(assert (=> b!1334399 (=> (not res!601815) (not e!854842))))

(assert (=> b!1334399 (= res!601815 (= (apply!3166 (_1!7514 lt!441910) 0) t2!34))))

(declare-fun b!1334400 () Bool)

(assert (=> b!1334400 (= e!854842 (isEmpty!8111 (_2!7514 lt!441910)))))

(declare-fun b!1334401 () Bool)

(assert (=> b!1334401 (= e!854841 (isEmpty!8111 (_2!7514 (lex!886 thiss!19762 rules!2550 (print!825 thiss!19762 (singletonSeq!955 t2!34))))))))

(assert (= (and d!375816 res!601816) b!1334399))

(assert (= (and b!1334399 res!601815) b!1334400))

(assert (= (and d!375816 res!601817) b!1334401))

(declare-fun m!1491769 () Bool)

(assert (=> d!375816 m!1491769))

(declare-fun m!1491771 () Bool)

(assert (=> d!375816 m!1491771))

(declare-fun m!1491773 () Bool)

(assert (=> d!375816 m!1491773))

(assert (=> d!375816 m!1491581))

(assert (=> d!375816 m!1491769))

(declare-fun m!1491775 () Bool)

(assert (=> d!375816 m!1491775))

(assert (=> d!375816 m!1491771))

(declare-fun m!1491777 () Bool)

(assert (=> d!375816 m!1491777))

(assert (=> d!375816 m!1491769))

(declare-fun m!1491779 () Bool)

(assert (=> d!375816 m!1491779))

(declare-fun m!1491781 () Bool)

(assert (=> b!1334399 m!1491781))

(declare-fun m!1491783 () Bool)

(assert (=> b!1334400 m!1491783))

(assert (=> b!1334401 m!1491769))

(assert (=> b!1334401 m!1491769))

(assert (=> b!1334401 m!1491771))

(assert (=> b!1334401 m!1491771))

(assert (=> b!1334401 m!1491777))

(declare-fun m!1491785 () Bool)

(assert (=> b!1334401 m!1491785))

(assert (=> b!1334274 d!375816))

(declare-fun b!1334406 () Bool)

(declare-fun e!854845 () Bool)

(declare-fun tp_is_empty!6665 () Bool)

(declare-fun tp!385923 () Bool)

(assert (=> b!1334406 (= e!854845 (and tp_is_empty!6665 tp!385923))))

(assert (=> b!1334278 (= tp!385879 e!854845)))

(assert (= (and b!1334278 (is-Cons!13605 (originalCharacters!3220 t1!34))) b!1334406))

(declare-fun e!854848 () Bool)

(assert (=> b!1334273 (= tp!385875 e!854848)))

(declare-fun b!1334418 () Bool)

(declare-fun tp!385935 () Bool)

(declare-fun tp!385936 () Bool)

(assert (=> b!1334418 (= e!854848 (and tp!385935 tp!385936))))

(declare-fun b!1334420 () Bool)

(declare-fun tp!385937 () Bool)

(declare-fun tp!385934 () Bool)

(assert (=> b!1334420 (= e!854848 (and tp!385937 tp!385934))))

(declare-fun b!1334417 () Bool)

(assert (=> b!1334417 (= e!854848 tp_is_empty!6665)))

(declare-fun b!1334419 () Bool)

(declare-fun tp!385938 () Bool)

(assert (=> b!1334419 (= e!854848 tp!385938)))

(assert (= (and b!1334273 (is-ElementMatch!3672 (regex!2358 (h!19008 rules!2550)))) b!1334417))

(assert (= (and b!1334273 (is-Concat!6121 (regex!2358 (h!19008 rules!2550)))) b!1334418))

(assert (= (and b!1334273 (is-Star!3672 (regex!2358 (h!19008 rules!2550)))) b!1334419))

(assert (= (and b!1334273 (is-Union!3672 (regex!2358 (h!19008 rules!2550)))) b!1334420))

(declare-fun b!1334421 () Bool)

(declare-fun e!854849 () Bool)

(declare-fun tp!385939 () Bool)

(assert (=> b!1334421 (= e!854849 (and tp_is_empty!6665 tp!385939))))

(assert (=> b!1334268 (= tp!385873 e!854849)))

(assert (= (and b!1334268 (is-Cons!13605 (originalCharacters!3220 t2!34))) b!1334421))

(declare-fun b!1334432 () Bool)

(declare-fun b_free!32423 () Bool)

(declare-fun b_next!33127 () Bool)

(assert (=> b!1334432 (= b_free!32423 (not b_next!33127))))

(declare-fun tp!385950 () Bool)

(declare-fun b_and!89205 () Bool)

(assert (=> b!1334432 (= tp!385950 b_and!89205)))

(declare-fun b_free!32425 () Bool)

(declare-fun b_next!33129 () Bool)

(assert (=> b!1334432 (= b_free!32425 (not b_next!33129))))

(declare-fun t!119136 () Bool)

(declare-fun tb!70381 () Bool)

(assert (=> (and b!1334432 (= (toChars!3448 (transformation!2358 (h!19008 (t!119118 rules!2550)))) (toChars!3448 (transformation!2358 (rule!4103 t2!34)))) t!119136) tb!70381))

(declare-fun result!85482 () Bool)

(assert (= result!85482 result!85462))

(assert (=> d!375806 t!119136))

(declare-fun tb!70383 () Bool)

(declare-fun t!119138 () Bool)

(assert (=> (and b!1334432 (= (toChars!3448 (transformation!2358 (h!19008 (t!119118 rules!2550)))) (toChars!3448 (transformation!2358 (rule!4103 t1!34)))) t!119138) tb!70383))

(declare-fun result!85484 () Bool)

(assert (= result!85484 result!85470))

(assert (=> b!1334394 t!119138))

(assert (=> b!1334397 t!119136))

(declare-fun tp!385951 () Bool)

(declare-fun b_and!89207 () Bool)

(assert (=> b!1334432 (= tp!385951 (and (=> t!119136 result!85482) (=> t!119138 result!85484) b_and!89207))))

(declare-fun e!854858 () Bool)

(assert (=> b!1334432 (= e!854858 (and tp!385950 tp!385951))))

(declare-fun b!1334431 () Bool)

(declare-fun e!854861 () Bool)

(declare-fun tp!385948 () Bool)

(assert (=> b!1334431 (= e!854861 (and tp!385948 (inv!17936 (tag!2620 (h!19008 (t!119118 rules!2550)))) (inv!17940 (transformation!2358 (h!19008 (t!119118 rules!2550)))) e!854858))))

(declare-fun b!1334430 () Bool)

(declare-fun e!854860 () Bool)

(declare-fun tp!385949 () Bool)

(assert (=> b!1334430 (= e!854860 (and e!854861 tp!385949))))

(assert (=> b!1334271 (= tp!385870 e!854860)))

(assert (= b!1334431 b!1334432))

(assert (= b!1334430 b!1334431))

(assert (= (and b!1334271 (is-Cons!13607 (t!119118 rules!2550))) b!1334430))

(declare-fun m!1491787 () Bool)

(assert (=> b!1334431 m!1491787))

(declare-fun m!1491789 () Bool)

(assert (=> b!1334431 m!1491789))

(declare-fun e!854862 () Bool)

(assert (=> b!1334281 (= tp!385872 e!854862)))

(declare-fun b!1334434 () Bool)

(declare-fun tp!385953 () Bool)

(declare-fun tp!385954 () Bool)

(assert (=> b!1334434 (= e!854862 (and tp!385953 tp!385954))))

(declare-fun b!1334436 () Bool)

(declare-fun tp!385955 () Bool)

(declare-fun tp!385952 () Bool)

(assert (=> b!1334436 (= e!854862 (and tp!385955 tp!385952))))

(declare-fun b!1334433 () Bool)

(assert (=> b!1334433 (= e!854862 tp_is_empty!6665)))

(declare-fun b!1334435 () Bool)

(declare-fun tp!385956 () Bool)

(assert (=> b!1334435 (= e!854862 tp!385956)))

(assert (= (and b!1334281 (is-ElementMatch!3672 (regex!2358 (rule!4103 t1!34)))) b!1334433))

(assert (= (and b!1334281 (is-Concat!6121 (regex!2358 (rule!4103 t1!34)))) b!1334434))

(assert (= (and b!1334281 (is-Star!3672 (regex!2358 (rule!4103 t1!34)))) b!1334435))

(assert (= (and b!1334281 (is-Union!3672 (regex!2358 (rule!4103 t1!34)))) b!1334436))

(declare-fun e!854863 () Bool)

(assert (=> b!1334280 (= tp!385874 e!854863)))

(declare-fun b!1334438 () Bool)

(declare-fun tp!385958 () Bool)

(declare-fun tp!385959 () Bool)

(assert (=> b!1334438 (= e!854863 (and tp!385958 tp!385959))))

(declare-fun b!1334440 () Bool)

(declare-fun tp!385960 () Bool)

(declare-fun tp!385957 () Bool)

(assert (=> b!1334440 (= e!854863 (and tp!385960 tp!385957))))

(declare-fun b!1334437 () Bool)

(assert (=> b!1334437 (= e!854863 tp_is_empty!6665)))

(declare-fun b!1334439 () Bool)

(declare-fun tp!385961 () Bool)

(assert (=> b!1334439 (= e!854863 tp!385961)))

(assert (= (and b!1334280 (is-ElementMatch!3672 (regex!2358 (rule!4103 t2!34)))) b!1334437))

(assert (= (and b!1334280 (is-Concat!6121 (regex!2358 (rule!4103 t2!34)))) b!1334438))

(assert (= (and b!1334280 (is-Star!3672 (regex!2358 (rule!4103 t2!34)))) b!1334439))

(assert (= (and b!1334280 (is-Union!3672 (regex!2358 (rule!4103 t2!34)))) b!1334440))

(declare-fun b_lambda!39333 () Bool)

(assert (= b_lambda!39329 (or (and b!1334282 b_free!32401) (and b!1334267 b_free!32405 (= (toChars!3448 (transformation!2358 (rule!4103 t2!34))) (toChars!3448 (transformation!2358 (rule!4103 t1!34))))) (and b!1334275 b_free!32409 (= (toChars!3448 (transformation!2358 (h!19008 rules!2550))) (toChars!3448 (transformation!2358 (rule!4103 t1!34))))) (and b!1334432 b_free!32425 (= (toChars!3448 (transformation!2358 (h!19008 (t!119118 rules!2550)))) (toChars!3448 (transformation!2358 (rule!4103 t1!34))))) b_lambda!39333)))

(declare-fun b_lambda!39335 () Bool)

(assert (= b_lambda!39327 (or (and b!1334282 b_free!32401 (= (toChars!3448 (transformation!2358 (rule!4103 t1!34))) (toChars!3448 (transformation!2358 (rule!4103 t2!34))))) (and b!1334267 b_free!32405) (and b!1334275 b_free!32409 (= (toChars!3448 (transformation!2358 (h!19008 rules!2550))) (toChars!3448 (transformation!2358 (rule!4103 t2!34))))) (and b!1334432 b_free!32425 (= (toChars!3448 (transformation!2358 (h!19008 (t!119118 rules!2550)))) (toChars!3448 (transformation!2358 (rule!4103 t2!34))))) b_lambda!39335)))

(declare-fun b_lambda!39337 () Bool)

(assert (= b_lambda!39331 (or (and b!1334282 b_free!32401 (= (toChars!3448 (transformation!2358 (rule!4103 t1!34))) (toChars!3448 (transformation!2358 (rule!4103 t2!34))))) (and b!1334267 b_free!32405) (and b!1334275 b_free!32409 (= (toChars!3448 (transformation!2358 (h!19008 rules!2550))) (toChars!3448 (transformation!2358 (rule!4103 t2!34))))) (and b!1334432 b_free!32425 (= (toChars!3448 (transformation!2358 (h!19008 (t!119118 rules!2550)))) (toChars!3448 (transformation!2358 (rule!4103 t2!34))))) b_lambda!39337)))

(push 1)

(assert (not b!1334340))

(assert (not tb!70369))

(assert (not b_next!33103))

(assert (not b_next!33111))

(assert (not b!1334357))

(assert (not b!1334434))

(assert (not d!375812))

(assert (not b!1334376))

(assert (not d!375806))

(assert (not b!1334399))

(assert (not b!1334344))

(assert b_and!89171)

(assert (not d!375816))

(assert (not b!1334375))

(assert (not b!1334370))

(assert (not d!375814))

(assert (not b_next!33105))

(assert (not b!1334388))

(assert (not b!1334358))

(assert (not b_next!33109))

(assert (not d!375810))

(assert (not b!1334398))

(assert b_and!89167)

(assert (not b!1334372))

(assert (not b_lambda!39337))

(assert (not b!1334431))

(assert (not b_lambda!39333))

(assert (not d!375774))

(assert (not b_lambda!39335))

(assert b_and!89207)

(assert (not b!1334406))

(assert b_and!89163)

(assert (not b!1334394))

(assert (not b!1334421))

(assert (not b!1334355))

(assert (not b!1334419))

(assert b_and!89203)

(assert (not b!1334396))

(assert (not b!1334438))

(assert (not tb!70375))

(assert (not b!1334397))

(assert (not b!1334356))

(assert (not b!1334420))

(assert b_and!89199)

(assert (not d!375782))

(assert tp_is_empty!6665)

(assert (not b_next!33129))

(assert (not b!1334401))

(assert (not b!1334395))

(assert (not b_next!33127))

(assert (not d!375804))

(assert (not b!1334430))

(assert (not b!1334343))

(assert b_and!89205)

(assert (not d!375784))

(assert (not b!1334435))

(assert (not b!1334371))

(assert (not b!1334377))

(assert (not d!375798))

(assert (not b!1334400))

(assert (not b_next!33113))

(assert (not d!375772))

(assert (not b!1334439))

(assert (not b_next!33107))

(assert (not b!1334418))

(assert (not d!375768))

(assert (not b!1334440))

(assert (not b!1334436))

(assert (not b!1334383))

(assert (not b!1334389))

(assert b_and!89201)

(check-sat)

(pop 1)

(push 1)

(assert b_and!89171)

(assert (not b_next!33105))

(assert (not b_next!33109))

(assert b_and!89167)

(assert (not b_next!33103))

(assert (not b_next!33111))

(assert b_and!89203)

(assert b_and!89199)

(assert (not b_next!33129))

(assert (not b_next!33127))

(assert b_and!89205)

(assert b_and!89201)

(assert b_and!89207)

(assert b_and!89163)

(assert (not b_next!33107))

(assert (not b_next!33113))

(check-sat)

(pop 1)

