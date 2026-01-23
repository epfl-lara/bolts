; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!16074 () Bool)

(assert start!16074)

(declare-fun b!150754 () Bool)

(declare-fun b_free!5489 () Bool)

(declare-fun b_next!5489 () Bool)

(assert (=> b!150754 (= b_free!5489 (not b_next!5489))))

(declare-fun tp!78673 () Bool)

(declare-fun b_and!8637 () Bool)

(assert (=> b!150754 (= tp!78673 b_and!8637)))

(declare-fun b_free!5491 () Bool)

(declare-fun b_next!5491 () Bool)

(assert (=> b!150754 (= b_free!5491 (not b_next!5491))))

(declare-fun tp!78668 () Bool)

(declare-fun b_and!8639 () Bool)

(assert (=> b!150754 (= tp!78668 b_and!8639)))

(declare-fun b!150761 () Bool)

(declare-fun b_free!5493 () Bool)

(declare-fun b_next!5493 () Bool)

(assert (=> b!150761 (= b_free!5493 (not b_next!5493))))

(declare-fun tp!78667 () Bool)

(declare-fun b_and!8641 () Bool)

(assert (=> b!150761 (= tp!78667 b_and!8641)))

(declare-fun b_free!5495 () Bool)

(declare-fun b_next!5495 () Bool)

(assert (=> b!150761 (= b_free!5495 (not b_next!5495))))

(declare-fun tp!78674 () Bool)

(declare-fun b_and!8643 () Bool)

(assert (=> b!150761 (= tp!78674 b_and!8643)))

(declare-fun b!150757 () Bool)

(declare-fun b_free!5497 () Bool)

(declare-fun b_next!5497 () Bool)

(assert (=> b!150757 (= b_free!5497 (not b_next!5497))))

(declare-fun tp!78675 () Bool)

(declare-fun b_and!8645 () Bool)

(assert (=> b!150757 (= tp!78675 b_and!8645)))

(declare-fun b_free!5499 () Bool)

(declare-fun b_next!5499 () Bool)

(assert (=> b!150757 (= b_free!5499 (not b_next!5499))))

(declare-fun tp!78677 () Bool)

(declare-fun b_and!8647 () Bool)

(assert (=> b!150757 (= tp!78677 b_and!8647)))

(declare-fun e!90029 () Bool)

(assert (=> b!150754 (= e!90029 (and tp!78673 tp!78668))))

(declare-fun b!150755 () Bool)

(declare-fun e!90026 () Bool)

(declare-fun e!90031 () Bool)

(assert (=> b!150755 (= e!90026 e!90031)))

(declare-fun res!69147 () Bool)

(assert (=> b!150755 (=> (not res!69147) (not e!90031))))

(declare-datatypes ((C!2280 0))(
  ( (C!2281 (val!1026 Int)) )
))
(declare-datatypes ((List!2631 0))(
  ( (Nil!2621) (Cons!2621 (h!8018 C!2280) (t!24767 List!2631)) )
))
(declare-fun lt!43919 () List!2631)

(declare-fun lt!43921 () List!2631)

(assert (=> b!150755 (= res!69147 (= lt!43919 lt!43921))))

(declare-datatypes ((List!2632 0))(
  ( (Nil!2622) (Cons!2622 (h!8019 (_ BitVec 16)) (t!24768 List!2632)) )
))
(declare-datatypes ((TokenValue!477 0))(
  ( (FloatLiteralValue!954 (text!3784 List!2632)) (TokenValueExt!476 (__x!2441 Int)) (Broken!2385 (value!17257 List!2632)) (Object!486) (End!477) (Def!477) (Underscore!477) (Match!477) (Else!477) (Error!477) (Case!477) (If!477) (Extends!477) (Abstract!477) (Class!477) (Val!477) (DelimiterValue!954 (del!537 List!2632)) (KeywordValue!483 (value!17258 List!2632)) (CommentValue!954 (value!17259 List!2632)) (WhitespaceValue!954 (value!17260 List!2632)) (IndentationValue!477 (value!17261 List!2632)) (String!3464) (Int32!477) (Broken!2386 (value!17262 List!2632)) (Boolean!478) (Unit!1985) (OperatorValue!480 (op!537 List!2632)) (IdentifierValue!954 (value!17263 List!2632)) (IdentifierValue!955 (value!17264 List!2632)) (WhitespaceValue!955 (value!17265 List!2632)) (True!954) (False!954) (Broken!2387 (value!17266 List!2632)) (Broken!2388 (value!17267 List!2632)) (True!955) (RightBrace!477) (RightBracket!477) (Colon!477) (Null!477) (Comma!477) (LeftBracket!477) (False!955) (LeftBrace!477) (ImaginaryLiteralValue!477 (text!3785 List!2632)) (StringLiteralValue!1431 (value!17268 List!2632)) (EOFValue!477 (value!17269 List!2632)) (IdentValue!477 (value!17270 List!2632)) (DelimiterValue!955 (value!17271 List!2632)) (DedentValue!477 (value!17272 List!2632)) (NewLineValue!477 (value!17273 List!2632)) (IntegerValue!1431 (value!17274 (_ BitVec 32)) (text!3786 List!2632)) (IntegerValue!1432 (value!17275 Int) (text!3787 List!2632)) (Times!477) (Or!477) (Equal!477) (Minus!477) (Broken!2389 (value!17276 List!2632)) (And!477) (Div!477) (LessEqual!477) (Mod!477) (Concat!1156) (Not!477) (Plus!477) (SpaceValue!477 (value!17277 List!2632)) (IntegerValue!1433 (value!17278 Int) (text!3788 List!2632)) (StringLiteralValue!1432 (text!3789 List!2632)) (FloatLiteralValue!955 (text!3790 List!2632)) (BytesLiteralValue!477 (value!17279 List!2632)) (CommentValue!955 (value!17280 List!2632)) (StringLiteralValue!1433 (value!17281 List!2632)) (ErrorTokenValue!477 (msg!538 List!2632)) )
))
(declare-datatypes ((IArray!1465 0))(
  ( (IArray!1466 (innerList!790 List!2631)) )
))
(declare-datatypes ((Conc!732 0))(
  ( (Node!732 (left!1978 Conc!732) (right!2308 Conc!732) (csize!1694 Int) (cheight!943 Int)) (Leaf!1299 (xs!3327 IArray!1465) (csize!1695 Int)) (Empty!732) )
))
(declare-datatypes ((BalanceConc!1472 0))(
  ( (BalanceConc!1473 (c!30493 Conc!732)) )
))
(declare-datatypes ((TokenValueInjection!726 0))(
  ( (TokenValueInjection!727 (toValue!1090 Int) (toChars!949 Int)) )
))
(declare-datatypes ((Regex!679 0))(
  ( (ElementMatch!679 (c!30494 C!2280)) (Concat!1157 (regOne!1870 Regex!679) (regTwo!1870 Regex!679)) (EmptyExpr!679) (Star!679 (reg!1008 Regex!679)) (EmptyLang!679) (Union!679 (regOne!1871 Regex!679) (regTwo!1871 Regex!679)) )
))
(declare-datatypes ((String!3465 0))(
  ( (String!3466 (value!17282 String)) )
))
(declare-datatypes ((Rule!710 0))(
  ( (Rule!711 (regex!455 Regex!679) (tag!633 String!3465) (isSeparator!455 Bool) (transformation!455 TokenValueInjection!726)) )
))
(declare-datatypes ((Token!654 0))(
  ( (Token!655 (value!17283 TokenValue!477) (rule!962 Rule!710) (size!2237 Int) (originalCharacters!498 List!2631)) )
))
(declare-fun separatorToken!170 () Token!654)

(declare-datatypes ((List!2633 0))(
  ( (Nil!2623) (Cons!2623 (h!8020 Token!654) (t!24769 List!2633)) )
))
(declare-datatypes ((IArray!1467 0))(
  ( (IArray!1468 (innerList!791 List!2633)) )
))
(declare-datatypes ((Conc!733 0))(
  ( (Node!733 (left!1979 Conc!733) (right!2309 Conc!733) (csize!1696 Int) (cheight!944 Int)) (Leaf!1300 (xs!3328 IArray!1467) (csize!1697 Int)) (Empty!733) )
))
(declare-datatypes ((BalanceConc!1474 0))(
  ( (BalanceConc!1475 (c!30495 Conc!733)) )
))
(declare-fun lt!43920 () BalanceConc!1474)

(declare-datatypes ((LexerInterface!341 0))(
  ( (LexerInterfaceExt!338 (__x!2442 Int)) (Lexer!339) )
))
(declare-fun thiss!17480 () LexerInterface!341)

(declare-datatypes ((List!2634 0))(
  ( (Nil!2624) (Cons!2624 (h!8021 Rule!710) (t!24770 List!2634)) )
))
(declare-fun rules!1920 () List!2634)

(declare-fun list!917 (BalanceConc!1472) List!2631)

(declare-fun printWithSeparatorTokenWhenNeededRec!24 (LexerInterface!341 List!2634 BalanceConc!1474 Token!654 Int) BalanceConc!1472)

(assert (=> b!150755 (= lt!43921 (list!917 (printWithSeparatorTokenWhenNeededRec!24 thiss!17480 rules!1920 lt!43920 separatorToken!170 0)))))

(declare-fun tokens!465 () List!2633)

(declare-fun printWithSeparatorTokenWhenNeededList!34 (LexerInterface!341 List!2634 List!2633 Token!654) List!2631)

(assert (=> b!150755 (= lt!43919 (printWithSeparatorTokenWhenNeededList!34 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun tp!78676 () Bool)

(declare-fun b!150756 () Bool)

(declare-fun e!90035 () Bool)

(declare-fun e!90030 () Bool)

(declare-fun inv!3415 (Token!654) Bool)

(assert (=> b!150756 (= e!90035 (and (inv!3415 (h!8020 tokens!465)) e!90030 tp!78676))))

(declare-fun res!69142 () Bool)

(declare-fun e!90025 () Bool)

(assert (=> start!16074 (=> (not res!69142) (not e!90025))))

(get-info :version)

(assert (=> start!16074 (= res!69142 ((_ is Lexer!339) thiss!17480))))

(assert (=> start!16074 e!90025))

(assert (=> start!16074 true))

(declare-fun e!90024 () Bool)

(assert (=> start!16074 e!90024))

(declare-fun e!90028 () Bool)

(assert (=> start!16074 (and (inv!3415 separatorToken!170) e!90028)))

(assert (=> start!16074 e!90035))

(declare-fun e!90033 () Bool)

(assert (=> b!150757 (= e!90033 (and tp!78675 tp!78677))))

(declare-fun b!150758 () Bool)

(declare-fun res!69146 () Bool)

(assert (=> b!150758 (=> (not res!69146) (not e!90025))))

(declare-fun rulesInvariant!307 (LexerInterface!341 List!2634) Bool)

(assert (=> b!150758 (= res!69146 (rulesInvariant!307 thiss!17480 rules!1920))))

(declare-fun e!90034 () Bool)

(declare-fun tp!78672 () Bool)

(declare-fun b!150759 () Bool)

(declare-fun inv!21 (TokenValue!477) Bool)

(assert (=> b!150759 (= e!90028 (and (inv!21 (value!17283 separatorToken!170)) e!90034 tp!78672))))

(declare-fun e!90039 () Bool)

(declare-fun tp!78679 () Bool)

(declare-fun b!150760 () Bool)

(declare-fun inv!3412 (String!3465) Bool)

(declare-fun inv!3416 (TokenValueInjection!726) Bool)

(assert (=> b!150760 (= e!90034 (and tp!78679 (inv!3412 (tag!633 (rule!962 separatorToken!170))) (inv!3416 (transformation!455 (rule!962 separatorToken!170))) e!90039))))

(assert (=> b!150761 (= e!90039 (and tp!78667 tp!78674))))

(declare-fun b!150762 () Bool)

(declare-fun res!69143 () Bool)

(assert (=> b!150762 (=> (not res!69143) (not e!90031))))

(declare-fun seqFromList!287 (List!2631) BalanceConc!1472)

(assert (=> b!150762 (= res!69143 (= (list!917 (seqFromList!287 lt!43919)) lt!43921))))

(declare-fun tp!78669 () Bool)

(declare-fun e!90037 () Bool)

(declare-fun b!150763 () Bool)

(assert (=> b!150763 (= e!90037 (and tp!78669 (inv!3412 (tag!633 (h!8021 rules!1920))) (inv!3416 (transformation!455 (h!8021 rules!1920))) e!90029))))

(declare-fun b!150764 () Bool)

(assert (=> b!150764 (= e!90025 e!90026)))

(declare-fun res!69148 () Bool)

(assert (=> b!150764 (=> (not res!69148) (not e!90026))))

(declare-fun rulesProduceEachTokenIndividually!133 (LexerInterface!341 List!2634 BalanceConc!1474) Bool)

(assert (=> b!150764 (= res!69148 (rulesProduceEachTokenIndividually!133 thiss!17480 rules!1920 lt!43920))))

(declare-fun seqFromList!288 (List!2633) BalanceConc!1474)

(assert (=> b!150764 (= lt!43920 (seqFromList!288 tokens!465))))

(declare-fun b!150765 () Bool)

(declare-fun res!69145 () Bool)

(assert (=> b!150765 (=> (not res!69145) (not e!90026))))

(declare-fun sepAndNonSepRulesDisjointChars!44 (List!2634 List!2634) Bool)

(assert (=> b!150765 (= res!69145 (sepAndNonSepRulesDisjointChars!44 rules!1920 rules!1920))))

(declare-fun b!150766 () Bool)

(declare-fun res!69144 () Bool)

(assert (=> b!150766 (=> (not res!69144) (not e!90026))))

(declare-fun rulesProduceIndividualToken!90 (LexerInterface!341 List!2634 Token!654) Bool)

(assert (=> b!150766 (= res!69144 (rulesProduceIndividualToken!90 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!150767 () Bool)

(declare-fun res!69139 () Bool)

(assert (=> b!150767 (=> (not res!69139) (not e!90025))))

(declare-fun isEmpty!1032 (List!2634) Bool)

(assert (=> b!150767 (= res!69139 (not (isEmpty!1032 rules!1920)))))

(declare-fun b!150768 () Bool)

(declare-fun res!69140 () Bool)

(assert (=> b!150768 (=> (not res!69140) (not e!90026))))

(assert (=> b!150768 (= res!69140 ((_ is Cons!2623) tokens!465))))

(declare-fun e!90038 () Bool)

(declare-fun b!150769 () Bool)

(declare-fun tp!78671 () Bool)

(assert (=> b!150769 (= e!90030 (and (inv!21 (value!17283 (h!8020 tokens!465))) e!90038 tp!78671))))

(declare-fun b!150770 () Bool)

(declare-fun tp!78670 () Bool)

(assert (=> b!150770 (= e!90038 (and tp!78670 (inv!3412 (tag!633 (rule!962 (h!8020 tokens!465)))) (inv!3416 (transformation!455 (rule!962 (h!8020 tokens!465)))) e!90033))))

(declare-fun b!150771 () Bool)

(declare-fun tp!78678 () Bool)

(assert (=> b!150771 (= e!90024 (and e!90037 tp!78678))))

(declare-fun b!150772 () Bool)

(declare-fun res!69149 () Bool)

(assert (=> b!150772 (=> (not res!69149) (not e!90026))))

(declare-fun lambda!3862 () Int)

(declare-fun forall!443 (List!2633 Int) Bool)

(assert (=> b!150772 (= res!69149 (forall!443 tokens!465 lambda!3862))))

(declare-fun b!150773 () Bool)

(declare-fun res!69141 () Bool)

(assert (=> b!150773 (=> (not res!69141) (not e!90026))))

(assert (=> b!150773 (= res!69141 (isSeparator!455 (rule!962 separatorToken!170)))))

(declare-fun b!150774 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!81 (LexerInterface!341 List!2634 List!2633) Bool)

(assert (=> b!150774 (= e!90031 (not (rulesProduceEachTokenIndividuallyList!81 thiss!17480 rules!1920 (t!24769 tokens!465))))))

(declare-fun lt!43918 () List!2631)

(declare-fun charsOf!110 (Token!654) BalanceConc!1472)

(assert (=> b!150774 (= lt!43918 (list!917 (charsOf!110 (h!8020 tokens!465))))))

(declare-fun lt!43922 () List!2631)

(declare-fun ++!560 (List!2631 List!2631) List!2631)

(assert (=> b!150774 (= lt!43922 (++!560 (list!917 (charsOf!110 separatorToken!170)) (printWithSeparatorTokenWhenNeededList!34 thiss!17480 rules!1920 (t!24769 tokens!465) separatorToken!170)))))

(assert (= (and start!16074 res!69142) b!150767))

(assert (= (and b!150767 res!69139) b!150758))

(assert (= (and b!150758 res!69146) b!150764))

(assert (= (and b!150764 res!69148) b!150766))

(assert (= (and b!150766 res!69144) b!150773))

(assert (= (and b!150773 res!69141) b!150772))

(assert (= (and b!150772 res!69149) b!150765))

(assert (= (and b!150765 res!69145) b!150768))

(assert (= (and b!150768 res!69140) b!150755))

(assert (= (and b!150755 res!69147) b!150762))

(assert (= (and b!150762 res!69143) b!150774))

(assert (= b!150763 b!150754))

(assert (= b!150771 b!150763))

(assert (= (and start!16074 ((_ is Cons!2624) rules!1920)) b!150771))

(assert (= b!150760 b!150761))

(assert (= b!150759 b!150760))

(assert (= start!16074 b!150759))

(assert (= b!150770 b!150757))

(assert (= b!150769 b!150770))

(assert (= b!150756 b!150769))

(assert (= (and start!16074 ((_ is Cons!2623) tokens!465)) b!150756))

(declare-fun m!134605 () Bool)

(assert (=> start!16074 m!134605))

(declare-fun m!134607 () Bool)

(assert (=> b!150770 m!134607))

(declare-fun m!134609 () Bool)

(assert (=> b!150770 m!134609))

(declare-fun m!134611 () Bool)

(assert (=> b!150772 m!134611))

(declare-fun m!134613 () Bool)

(assert (=> b!150760 m!134613))

(declare-fun m!134615 () Bool)

(assert (=> b!150760 m!134615))

(declare-fun m!134617 () Bool)

(assert (=> b!150767 m!134617))

(declare-fun m!134619 () Bool)

(assert (=> b!150755 m!134619))

(assert (=> b!150755 m!134619))

(declare-fun m!134621 () Bool)

(assert (=> b!150755 m!134621))

(declare-fun m!134623 () Bool)

(assert (=> b!150755 m!134623))

(declare-fun m!134625 () Bool)

(assert (=> b!150756 m!134625))

(declare-fun m!134627 () Bool)

(assert (=> b!150769 m!134627))

(declare-fun m!134629 () Bool)

(assert (=> b!150764 m!134629))

(declare-fun m!134631 () Bool)

(assert (=> b!150764 m!134631))

(declare-fun m!134633 () Bool)

(assert (=> b!150765 m!134633))

(declare-fun m!134635 () Bool)

(assert (=> b!150759 m!134635))

(declare-fun m!134637 () Bool)

(assert (=> b!150763 m!134637))

(declare-fun m!134639 () Bool)

(assert (=> b!150763 m!134639))

(declare-fun m!134641 () Bool)

(assert (=> b!150758 m!134641))

(declare-fun m!134643 () Bool)

(assert (=> b!150762 m!134643))

(assert (=> b!150762 m!134643))

(declare-fun m!134645 () Bool)

(assert (=> b!150762 m!134645))

(declare-fun m!134647 () Bool)

(assert (=> b!150774 m!134647))

(declare-fun m!134649 () Bool)

(assert (=> b!150774 m!134649))

(declare-fun m!134651 () Bool)

(assert (=> b!150774 m!134651))

(declare-fun m!134653 () Bool)

(assert (=> b!150774 m!134653))

(assert (=> b!150774 m!134651))

(assert (=> b!150774 m!134653))

(assert (=> b!150774 m!134647))

(declare-fun m!134655 () Bool)

(assert (=> b!150774 m!134655))

(declare-fun m!134657 () Bool)

(assert (=> b!150774 m!134657))

(declare-fun m!134659 () Bool)

(assert (=> b!150774 m!134659))

(assert (=> b!150774 m!134657))

(declare-fun m!134661 () Bool)

(assert (=> b!150766 m!134661))

(check-sat b_and!8645 (not b_next!5495) (not b_next!5497) (not b_next!5489) (not b!150755) (not b!150760) (not b_next!5493) (not b!150774) (not start!16074) (not b!150772) (not b!150764) (not b!150762) b_and!8639 (not b!150763) (not b!150756) (not b!150767) (not b!150770) (not b!150771) b_and!8641 b_and!8637 b_and!8643 (not b!150765) b_and!8647 (not b!150759) (not b!150769) (not b!150766) (not b_next!5491) (not b!150758) (not b_next!5499))
(check-sat b_and!8645 (not b_next!5495) (not b_next!5497) (not b_next!5489) b_and!8643 b_and!8647 (not b_next!5493) b_and!8639 b_and!8641 b_and!8637 (not b_next!5491) (not b_next!5499))
(get-model)

(declare-fun bs!13740 () Bool)

(declare-fun d!36045 () Bool)

(assert (= bs!13740 (and d!36045 b!150772)))

(declare-fun lambda!3869 () Int)

(assert (=> bs!13740 (not (= lambda!3869 lambda!3862))))

(declare-fun b!150849 () Bool)

(declare-fun e!90097 () Bool)

(assert (=> b!150849 (= e!90097 true)))

(declare-fun b!150848 () Bool)

(declare-fun e!90096 () Bool)

(assert (=> b!150848 (= e!90096 e!90097)))

(declare-fun b!150847 () Bool)

(declare-fun e!90095 () Bool)

(assert (=> b!150847 (= e!90095 e!90096)))

(assert (=> d!36045 e!90095))

(assert (= b!150848 b!150849))

(assert (= b!150847 b!150848))

(assert (= (and d!36045 ((_ is Cons!2624) rules!1920)) b!150847))

(declare-fun order!1297 () Int)

(declare-fun order!1295 () Int)

(declare-fun dynLambda!911 (Int Int) Int)

(declare-fun dynLambda!912 (Int Int) Int)

(assert (=> b!150849 (< (dynLambda!911 order!1295 (toValue!1090 (transformation!455 (h!8021 rules!1920)))) (dynLambda!912 order!1297 lambda!3869))))

(declare-fun order!1299 () Int)

(declare-fun dynLambda!913 (Int Int) Int)

(assert (=> b!150849 (< (dynLambda!913 order!1299 (toChars!949 (transformation!455 (h!8021 rules!1920)))) (dynLambda!912 order!1297 lambda!3869))))

(assert (=> d!36045 true))

(declare-fun e!90088 () Bool)

(assert (=> d!36045 e!90088))

(declare-fun res!69199 () Bool)

(assert (=> d!36045 (=> (not res!69199) (not e!90088))))

(declare-fun lt!43949 () Bool)

(declare-fun list!920 (BalanceConc!1474) List!2633)

(assert (=> d!36045 (= res!69199 (= lt!43949 (forall!443 (list!920 lt!43920) lambda!3869)))))

(declare-fun forall!444 (BalanceConc!1474 Int) Bool)

(assert (=> d!36045 (= lt!43949 (forall!444 lt!43920 lambda!3869))))

(assert (=> d!36045 (not (isEmpty!1032 rules!1920))))

(assert (=> d!36045 (= (rulesProduceEachTokenIndividually!133 thiss!17480 rules!1920 lt!43920) lt!43949)))

(declare-fun b!150838 () Bool)

(assert (=> b!150838 (= e!90088 (= lt!43949 (rulesProduceEachTokenIndividuallyList!81 thiss!17480 rules!1920 (list!920 lt!43920))))))

(assert (= (and d!36045 res!69199) b!150838))

(declare-fun m!134737 () Bool)

(assert (=> d!36045 m!134737))

(assert (=> d!36045 m!134737))

(declare-fun m!134739 () Bool)

(assert (=> d!36045 m!134739))

(declare-fun m!134741 () Bool)

(assert (=> d!36045 m!134741))

(assert (=> d!36045 m!134617))

(assert (=> b!150838 m!134737))

(assert (=> b!150838 m!134737))

(declare-fun m!134743 () Bool)

(assert (=> b!150838 m!134743))

(assert (=> b!150764 d!36045))

(declare-fun d!36073 () Bool)

(declare-fun fromListB!119 (List!2633) BalanceConc!1474)

(assert (=> d!36073 (= (seqFromList!288 tokens!465) (fromListB!119 tokens!465))))

(declare-fun bs!13741 () Bool)

(assert (= bs!13741 d!36073))

(declare-fun m!134745 () Bool)

(assert (=> bs!13741 m!134745))

(assert (=> b!150764 d!36073))

(declare-fun d!36075 () Bool)

(declare-fun res!69204 () Bool)

(declare-fun e!90100 () Bool)

(assert (=> d!36075 (=> (not res!69204) (not e!90100))))

(declare-fun isEmpty!1035 (List!2631) Bool)

(assert (=> d!36075 (= res!69204 (not (isEmpty!1035 (originalCharacters!498 separatorToken!170))))))

(assert (=> d!36075 (= (inv!3415 separatorToken!170) e!90100)))

(declare-fun b!150856 () Bool)

(declare-fun res!69205 () Bool)

(assert (=> b!150856 (=> (not res!69205) (not e!90100))))

(declare-fun dynLambda!914 (Int TokenValue!477) BalanceConc!1472)

(assert (=> b!150856 (= res!69205 (= (originalCharacters!498 separatorToken!170) (list!917 (dynLambda!914 (toChars!949 (transformation!455 (rule!962 separatorToken!170))) (value!17283 separatorToken!170)))))))

(declare-fun b!150857 () Bool)

(declare-fun size!2240 (List!2631) Int)

(assert (=> b!150857 (= e!90100 (= (size!2237 separatorToken!170) (size!2240 (originalCharacters!498 separatorToken!170))))))

(assert (= (and d!36075 res!69204) b!150856))

(assert (= (and b!150856 res!69205) b!150857))

(declare-fun b_lambda!2725 () Bool)

(assert (=> (not b_lambda!2725) (not b!150856)))

(declare-fun t!24793 () Bool)

(declare-fun tb!5057 () Bool)

(assert (=> (and b!150754 (= (toChars!949 (transformation!455 (h!8021 rules!1920))) (toChars!949 (transformation!455 (rule!962 separatorToken!170)))) t!24793) tb!5057))

(declare-fun b!150862 () Bool)

(declare-fun e!90103 () Bool)

(declare-fun tp!78686 () Bool)

(declare-fun inv!3419 (Conc!732) Bool)

(assert (=> b!150862 (= e!90103 (and (inv!3419 (c!30493 (dynLambda!914 (toChars!949 (transformation!455 (rule!962 separatorToken!170))) (value!17283 separatorToken!170)))) tp!78686))))

(declare-fun result!7494 () Bool)

(declare-fun inv!3420 (BalanceConc!1472) Bool)

(assert (=> tb!5057 (= result!7494 (and (inv!3420 (dynLambda!914 (toChars!949 (transformation!455 (rule!962 separatorToken!170))) (value!17283 separatorToken!170))) e!90103))))

(assert (= tb!5057 b!150862))

(declare-fun m!134747 () Bool)

(assert (=> b!150862 m!134747))

(declare-fun m!134749 () Bool)

(assert (=> tb!5057 m!134749))

(assert (=> b!150856 t!24793))

(declare-fun b_and!8661 () Bool)

(assert (= b_and!8639 (and (=> t!24793 result!7494) b_and!8661)))

(declare-fun t!24795 () Bool)

(declare-fun tb!5059 () Bool)

(assert (=> (and b!150761 (= (toChars!949 (transformation!455 (rule!962 separatorToken!170))) (toChars!949 (transformation!455 (rule!962 separatorToken!170)))) t!24795) tb!5059))

(declare-fun result!7498 () Bool)

(assert (= result!7498 result!7494))

(assert (=> b!150856 t!24795))

(declare-fun b_and!8663 () Bool)

(assert (= b_and!8643 (and (=> t!24795 result!7498) b_and!8663)))

(declare-fun tb!5061 () Bool)

(declare-fun t!24797 () Bool)

(assert (=> (and b!150757 (= (toChars!949 (transformation!455 (rule!962 (h!8020 tokens!465)))) (toChars!949 (transformation!455 (rule!962 separatorToken!170)))) t!24797) tb!5061))

(declare-fun result!7500 () Bool)

(assert (= result!7500 result!7494))

(assert (=> b!150856 t!24797))

(declare-fun b_and!8665 () Bool)

(assert (= b_and!8647 (and (=> t!24797 result!7500) b_and!8665)))

(declare-fun m!134751 () Bool)

(assert (=> d!36075 m!134751))

(declare-fun m!134753 () Bool)

(assert (=> b!150856 m!134753))

(assert (=> b!150856 m!134753))

(declare-fun m!134755 () Bool)

(assert (=> b!150856 m!134755))

(declare-fun m!134757 () Bool)

(assert (=> b!150857 m!134757))

(assert (=> start!16074 d!36075))

(declare-fun d!36077 () Bool)

(declare-fun list!921 (Conc!732) List!2631)

(assert (=> d!36077 (= (list!917 (charsOf!110 separatorToken!170)) (list!921 (c!30493 (charsOf!110 separatorToken!170))))))

(declare-fun bs!13742 () Bool)

(assert (= bs!13742 d!36077))

(declare-fun m!134759 () Bool)

(assert (=> bs!13742 m!134759))

(assert (=> b!150774 d!36077))

(declare-fun bs!13746 () Bool)

(declare-fun d!36079 () Bool)

(assert (= bs!13746 (and d!36079 b!150772)))

(declare-fun lambda!3876 () Int)

(assert (=> bs!13746 (not (= lambda!3876 lambda!3862))))

(declare-fun bs!13747 () Bool)

(assert (= bs!13747 (and d!36079 d!36045)))

(assert (=> bs!13747 (= lambda!3876 lambda!3869)))

(declare-fun b!150905 () Bool)

(declare-fun e!90135 () Bool)

(assert (=> b!150905 (= e!90135 true)))

(declare-fun b!150904 () Bool)

(declare-fun e!90134 () Bool)

(assert (=> b!150904 (= e!90134 e!90135)))

(declare-fun b!150903 () Bool)

(declare-fun e!90133 () Bool)

(assert (=> b!150903 (= e!90133 e!90134)))

(assert (=> d!36079 e!90133))

(assert (= b!150904 b!150905))

(assert (= b!150903 b!150904))

(assert (= (and d!36079 ((_ is Cons!2624) rules!1920)) b!150903))

(assert (=> b!150905 (< (dynLambda!911 order!1295 (toValue!1090 (transformation!455 (h!8021 rules!1920)))) (dynLambda!912 order!1297 lambda!3876))))

(assert (=> b!150905 (< (dynLambda!913 order!1299 (toChars!949 (transformation!455 (h!8021 rules!1920)))) (dynLambda!912 order!1297 lambda!3876))))

(assert (=> d!36079 true))

(declare-fun lt!43976 () Bool)

(assert (=> d!36079 (= lt!43976 (forall!443 (t!24769 tokens!465) lambda!3876))))

(declare-fun e!90131 () Bool)

(assert (=> d!36079 (= lt!43976 e!90131)))

(declare-fun res!69217 () Bool)

(assert (=> d!36079 (=> res!69217 e!90131)))

(assert (=> d!36079 (= res!69217 (not ((_ is Cons!2623) (t!24769 tokens!465))))))

(assert (=> d!36079 (not (isEmpty!1032 rules!1920))))

(assert (=> d!36079 (= (rulesProduceEachTokenIndividuallyList!81 thiss!17480 rules!1920 (t!24769 tokens!465)) lt!43976)))

(declare-fun b!150901 () Bool)

(declare-fun e!90132 () Bool)

(assert (=> b!150901 (= e!90131 e!90132)))

(declare-fun res!69218 () Bool)

(assert (=> b!150901 (=> (not res!69218) (not e!90132))))

(assert (=> b!150901 (= res!69218 (rulesProduceIndividualToken!90 thiss!17480 rules!1920 (h!8020 (t!24769 tokens!465))))))

(declare-fun b!150902 () Bool)

(assert (=> b!150902 (= e!90132 (rulesProduceEachTokenIndividuallyList!81 thiss!17480 rules!1920 (t!24769 (t!24769 tokens!465))))))

(assert (= (and d!36079 (not res!69217)) b!150901))

(assert (= (and b!150901 res!69218) b!150902))

(declare-fun m!134821 () Bool)

(assert (=> d!36079 m!134821))

(assert (=> d!36079 m!134617))

(declare-fun m!134823 () Bool)

(assert (=> b!150901 m!134823))

(declare-fun m!134825 () Bool)

(assert (=> b!150902 m!134825))

(assert (=> b!150774 d!36079))

(declare-fun d!36083 () Bool)

(declare-fun e!90141 () Bool)

(assert (=> d!36083 e!90141))

(declare-fun res!69224 () Bool)

(assert (=> d!36083 (=> (not res!69224) (not e!90141))))

(declare-fun lt!43979 () List!2631)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!362 (List!2631) (InoxSet C!2280))

(assert (=> d!36083 (= res!69224 (= (content!362 lt!43979) ((_ map or) (content!362 (list!917 (charsOf!110 separatorToken!170))) (content!362 (printWithSeparatorTokenWhenNeededList!34 thiss!17480 rules!1920 (t!24769 tokens!465) separatorToken!170)))))))

(declare-fun e!90140 () List!2631)

(assert (=> d!36083 (= lt!43979 e!90140)))

(declare-fun c!30513 () Bool)

(assert (=> d!36083 (= c!30513 ((_ is Nil!2621) (list!917 (charsOf!110 separatorToken!170))))))

(assert (=> d!36083 (= (++!560 (list!917 (charsOf!110 separatorToken!170)) (printWithSeparatorTokenWhenNeededList!34 thiss!17480 rules!1920 (t!24769 tokens!465) separatorToken!170)) lt!43979)))

(declare-fun b!150915 () Bool)

(assert (=> b!150915 (= e!90140 (Cons!2621 (h!8018 (list!917 (charsOf!110 separatorToken!170))) (++!560 (t!24767 (list!917 (charsOf!110 separatorToken!170))) (printWithSeparatorTokenWhenNeededList!34 thiss!17480 rules!1920 (t!24769 tokens!465) separatorToken!170))))))

(declare-fun b!150914 () Bool)

(assert (=> b!150914 (= e!90140 (printWithSeparatorTokenWhenNeededList!34 thiss!17480 rules!1920 (t!24769 tokens!465) separatorToken!170))))

(declare-fun b!150916 () Bool)

(declare-fun res!69223 () Bool)

(assert (=> b!150916 (=> (not res!69223) (not e!90141))))

(assert (=> b!150916 (= res!69223 (= (size!2240 lt!43979) (+ (size!2240 (list!917 (charsOf!110 separatorToken!170))) (size!2240 (printWithSeparatorTokenWhenNeededList!34 thiss!17480 rules!1920 (t!24769 tokens!465) separatorToken!170)))))))

(declare-fun b!150917 () Bool)

(assert (=> b!150917 (= e!90141 (or (not (= (printWithSeparatorTokenWhenNeededList!34 thiss!17480 rules!1920 (t!24769 tokens!465) separatorToken!170) Nil!2621)) (= lt!43979 (list!917 (charsOf!110 separatorToken!170)))))))

(assert (= (and d!36083 c!30513) b!150914))

(assert (= (and d!36083 (not c!30513)) b!150915))

(assert (= (and d!36083 res!69224) b!150916))

(assert (= (and b!150916 res!69223) b!150917))

(declare-fun m!134827 () Bool)

(assert (=> d!36083 m!134827))

(assert (=> d!36083 m!134653))

(declare-fun m!134829 () Bool)

(assert (=> d!36083 m!134829))

(assert (=> d!36083 m!134647))

(declare-fun m!134831 () Bool)

(assert (=> d!36083 m!134831))

(assert (=> b!150915 m!134647))

(declare-fun m!134833 () Bool)

(assert (=> b!150915 m!134833))

(declare-fun m!134835 () Bool)

(assert (=> b!150916 m!134835))

(assert (=> b!150916 m!134653))

(declare-fun m!134837 () Bool)

(assert (=> b!150916 m!134837))

(assert (=> b!150916 m!134647))

(declare-fun m!134839 () Bool)

(assert (=> b!150916 m!134839))

(assert (=> b!150774 d!36083))

(declare-fun bs!13751 () Bool)

(declare-fun b!150972 () Bool)

(assert (= bs!13751 (and b!150972 b!150772)))

(declare-fun lambda!3882 () Int)

(assert (=> bs!13751 (not (= lambda!3882 lambda!3862))))

(declare-fun bs!13752 () Bool)

(assert (= bs!13752 (and b!150972 d!36045)))

(assert (=> bs!13752 (= lambda!3882 lambda!3869)))

(declare-fun bs!13753 () Bool)

(assert (= bs!13753 (and b!150972 d!36079)))

(assert (=> bs!13753 (= lambda!3882 lambda!3876)))

(declare-fun b!150977 () Bool)

(declare-fun e!90174 () Bool)

(assert (=> b!150977 (= e!90174 true)))

(declare-fun b!150976 () Bool)

(declare-fun e!90173 () Bool)

(assert (=> b!150976 (= e!90173 e!90174)))

(declare-fun b!150975 () Bool)

(declare-fun e!90172 () Bool)

(assert (=> b!150975 (= e!90172 e!90173)))

(assert (=> b!150972 e!90172))

(assert (= b!150976 b!150977))

(assert (= b!150975 b!150976))

(assert (= (and b!150972 ((_ is Cons!2624) rules!1920)) b!150975))

(assert (=> b!150977 (< (dynLambda!911 order!1295 (toValue!1090 (transformation!455 (h!8021 rules!1920)))) (dynLambda!912 order!1297 lambda!3882))))

(assert (=> b!150977 (< (dynLambda!913 order!1299 (toChars!949 (transformation!455 (h!8021 rules!1920)))) (dynLambda!912 order!1297 lambda!3882))))

(assert (=> b!150972 true))

(declare-fun b!150965 () Bool)

(declare-fun c!30537 () Bool)

(declare-datatypes ((tuple2!2566 0))(
  ( (tuple2!2567 (_1!1499 Token!654) (_2!1499 List!2631)) )
))
(declare-datatypes ((Option!238 0))(
  ( (None!237) (Some!237 (v!13614 tuple2!2566)) )
))
(declare-fun lt!44010 () Option!238)

(assert (=> b!150965 (= c!30537 (and ((_ is Some!237) lt!44010) (not (= (_1!1499 (v!13614 lt!44010)) (h!8020 (t!24769 tokens!465))))))))

(declare-fun e!90168 () List!2631)

(declare-fun e!90170 () List!2631)

(assert (=> b!150965 (= e!90168 e!90170)))

(declare-fun bm!6082 () Bool)

(declare-fun call!6090 () List!2631)

(declare-fun call!6091 () List!2631)

(assert (=> bm!6082 (= call!6090 call!6091)))

(declare-fun c!30538 () Bool)

(assert (=> bm!6082 (= c!30538 c!30537)))

(declare-fun b!150966 () Bool)

(declare-fun e!90169 () List!2631)

(declare-fun call!6087 () BalanceConc!1472)

(assert (=> b!150966 (= e!90169 (list!917 call!6087))))

(declare-fun b!150967 () Bool)

(assert (=> b!150967 (= e!90170 Nil!2621)))

(declare-fun print!92 (LexerInterface!341 BalanceConc!1474) BalanceConc!1472)

(declare-fun singletonSeq!25 (Token!654) BalanceConc!1474)

(declare-fun printTailRec!55 (LexerInterface!341 BalanceConc!1474 Int BalanceConc!1472) BalanceConc!1472)

(assert (=> b!150967 (= (print!92 thiss!17480 (singletonSeq!25 (h!8020 (t!24769 tokens!465)))) (printTailRec!55 thiss!17480 (singletonSeq!25 (h!8020 (t!24769 tokens!465))) 0 (BalanceConc!1473 Empty!732)))))

(declare-datatypes ((Unit!1992 0))(
  ( (Unit!1993) )
))
(declare-fun lt!44011 () Unit!1992)

(declare-fun Unit!1994 () Unit!1992)

(assert (=> b!150967 (= lt!44011 Unit!1994)))

(declare-fun lt!44013 () Unit!1992)

(declare-fun lt!44015 () List!2631)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!14 (LexerInterface!341 List!2634 List!2631 List!2631) Unit!1992)

(assert (=> b!150967 (= lt!44013 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!14 thiss!17480 rules!1920 call!6090 lt!44015))))

(assert (=> b!150967 false))

(declare-fun lt!44014 () Unit!1992)

(declare-fun Unit!1995 () Unit!1992)

(assert (=> b!150967 (= lt!44014 Unit!1995)))

(declare-fun c!30540 () Bool)

(declare-fun e!90167 () BalanceConc!1472)

(declare-fun call!6088 () BalanceConc!1472)

(declare-fun bm!6083 () Bool)

(assert (=> bm!6083 (= call!6091 (list!917 (ite c!30540 call!6088 e!90167)))))

(declare-fun b!150968 () Bool)

(assert (=> b!150968 (= e!90169 call!6091)))

(declare-fun b!150969 () Bool)

(assert (=> b!150969 (= e!90167 call!6087)))

(declare-fun b!150970 () Bool)

(declare-fun call!6089 () List!2631)

(assert (=> b!150970 (= e!90168 call!6089)))

(declare-fun bm!6085 () Bool)

(assert (=> bm!6085 (= call!6088 (charsOf!110 (h!8020 (t!24769 tokens!465))))))

(declare-fun b!150971 () Bool)

(assert (=> b!150971 (= e!90170 (++!560 call!6089 lt!44015))))

(declare-fun bm!6086 () Bool)

(assert (=> bm!6086 (= call!6087 call!6088)))

(declare-fun e!90171 () List!2631)

(assert (=> b!150972 (= e!90171 e!90168)))

(declare-fun lt!44012 () Unit!1992)

(declare-fun forallContained!50 (List!2633 Int Token!654) Unit!1992)

(assert (=> b!150972 (= lt!44012 (forallContained!50 (t!24769 tokens!465) lambda!3882 (h!8020 (t!24769 tokens!465))))))

(assert (=> b!150972 (= lt!44015 (printWithSeparatorTokenWhenNeededList!34 thiss!17480 rules!1920 (t!24769 (t!24769 tokens!465)) separatorToken!170))))

(declare-fun maxPrefix!107 (LexerInterface!341 List!2634 List!2631) Option!238)

(assert (=> b!150972 (= lt!44010 (maxPrefix!107 thiss!17480 rules!1920 (++!560 (list!917 (charsOf!110 (h!8020 (t!24769 tokens!465)))) lt!44015)))))

(assert (=> b!150972 (= c!30540 (and ((_ is Some!237) lt!44010) (= (_1!1499 (v!13614 lt!44010)) (h!8020 (t!24769 tokens!465)))))))

(declare-fun b!150973 () Bool)

(assert (=> b!150973 (= e!90167 (charsOf!110 separatorToken!170))))

(declare-fun b!150974 () Bool)

(assert (=> b!150974 (= e!90171 Nil!2621)))

(declare-fun d!36085 () Bool)

(declare-fun c!30539 () Bool)

(assert (=> d!36085 (= c!30539 ((_ is Cons!2623) (t!24769 tokens!465)))))

(assert (=> d!36085 (= (printWithSeparatorTokenWhenNeededList!34 thiss!17480 rules!1920 (t!24769 tokens!465) separatorToken!170) e!90171)))

(declare-fun bm!6084 () Bool)

(declare-fun c!30536 () Bool)

(assert (=> bm!6084 (= c!30536 c!30540)))

(assert (=> bm!6084 (= call!6089 (++!560 e!90169 (ite c!30540 lt!44015 call!6090)))))

(assert (= (and d!36085 c!30539) b!150972))

(assert (= (and d!36085 (not c!30539)) b!150974))

(assert (= (and b!150972 c!30540) b!150970))

(assert (= (and b!150972 (not c!30540)) b!150965))

(assert (= (and b!150965 c!30537) b!150971))

(assert (= (and b!150965 (not c!30537)) b!150967))

(assert (= (or b!150971 b!150967) bm!6086))

(assert (= (or b!150971 b!150967) bm!6082))

(assert (= (and bm!6082 c!30538) b!150973))

(assert (= (and bm!6082 (not c!30538)) b!150969))

(assert (= (or b!150970 bm!6086) bm!6085))

(assert (= (or b!150970 bm!6082) bm!6083))

(assert (= (or b!150970 b!150971) bm!6084))

(assert (= (and bm!6084 c!30536) b!150968))

(assert (= (and bm!6084 (not c!30536)) b!150966))

(declare-fun m!134863 () Bool)

(assert (=> b!150972 m!134863))

(declare-fun m!134865 () Bool)

(assert (=> b!150972 m!134865))

(declare-fun m!134867 () Bool)

(assert (=> b!150972 m!134867))

(assert (=> b!150972 m!134867))

(declare-fun m!134869 () Bool)

(assert (=> b!150972 m!134869))

(declare-fun m!134871 () Bool)

(assert (=> b!150972 m!134871))

(assert (=> b!150972 m!134871))

(assert (=> b!150972 m!134865))

(declare-fun m!134873 () Bool)

(assert (=> b!150972 m!134873))

(declare-fun m!134875 () Bool)

(assert (=> bm!6084 m!134875))

(declare-fun m!134877 () Bool)

(assert (=> b!150967 m!134877))

(assert (=> b!150967 m!134877))

(declare-fun m!134879 () Bool)

(assert (=> b!150967 m!134879))

(assert (=> b!150967 m!134877))

(declare-fun m!134881 () Bool)

(assert (=> b!150967 m!134881))

(declare-fun m!134883 () Bool)

(assert (=> b!150967 m!134883))

(declare-fun m!134885 () Bool)

(assert (=> bm!6083 m!134885))

(assert (=> b!150973 m!134651))

(declare-fun m!134887 () Bool)

(assert (=> b!150966 m!134887))

(assert (=> bm!6085 m!134871))

(declare-fun m!134889 () Bool)

(assert (=> b!150971 m!134889))

(assert (=> b!150774 d!36085))

(declare-fun d!36089 () Bool)

(declare-fun lt!44018 () BalanceConc!1472)

(assert (=> d!36089 (= (list!917 lt!44018) (originalCharacters!498 separatorToken!170))))

(assert (=> d!36089 (= lt!44018 (dynLambda!914 (toChars!949 (transformation!455 (rule!962 separatorToken!170))) (value!17283 separatorToken!170)))))

(assert (=> d!36089 (= (charsOf!110 separatorToken!170) lt!44018)))

(declare-fun b_lambda!2727 () Bool)

(assert (=> (not b_lambda!2727) (not d!36089)))

(assert (=> d!36089 t!24793))

(declare-fun b_and!8667 () Bool)

(assert (= b_and!8661 (and (=> t!24793 result!7494) b_and!8667)))

(assert (=> d!36089 t!24795))

(declare-fun b_and!8669 () Bool)

(assert (= b_and!8663 (and (=> t!24795 result!7498) b_and!8669)))

(assert (=> d!36089 t!24797))

(declare-fun b_and!8671 () Bool)

(assert (= b_and!8665 (and (=> t!24797 result!7500) b_and!8671)))

(declare-fun m!134891 () Bool)

(assert (=> d!36089 m!134891))

(assert (=> d!36089 m!134753))

(assert (=> b!150774 d!36089))

(declare-fun d!36091 () Bool)

(assert (=> d!36091 (= (list!917 (charsOf!110 (h!8020 tokens!465))) (list!921 (c!30493 (charsOf!110 (h!8020 tokens!465)))))))

(declare-fun bs!13754 () Bool)

(assert (= bs!13754 d!36091))

(declare-fun m!134893 () Bool)

(assert (=> bs!13754 m!134893))

(assert (=> b!150774 d!36091))

(declare-fun d!36093 () Bool)

(declare-fun lt!44019 () BalanceConc!1472)

(assert (=> d!36093 (= (list!917 lt!44019) (originalCharacters!498 (h!8020 tokens!465)))))

(assert (=> d!36093 (= lt!44019 (dynLambda!914 (toChars!949 (transformation!455 (rule!962 (h!8020 tokens!465)))) (value!17283 (h!8020 tokens!465))))))

(assert (=> d!36093 (= (charsOf!110 (h!8020 tokens!465)) lt!44019)))

(declare-fun b_lambda!2729 () Bool)

(assert (=> (not b_lambda!2729) (not d!36093)))

(declare-fun t!24805 () Bool)

(declare-fun tb!5063 () Bool)

(assert (=> (and b!150754 (= (toChars!949 (transformation!455 (h!8021 rules!1920))) (toChars!949 (transformation!455 (rule!962 (h!8020 tokens!465))))) t!24805) tb!5063))

(declare-fun b!150978 () Bool)

(declare-fun e!90175 () Bool)

(declare-fun tp!78687 () Bool)

(assert (=> b!150978 (= e!90175 (and (inv!3419 (c!30493 (dynLambda!914 (toChars!949 (transformation!455 (rule!962 (h!8020 tokens!465)))) (value!17283 (h!8020 tokens!465))))) tp!78687))))

(declare-fun result!7502 () Bool)

(assert (=> tb!5063 (= result!7502 (and (inv!3420 (dynLambda!914 (toChars!949 (transformation!455 (rule!962 (h!8020 tokens!465)))) (value!17283 (h!8020 tokens!465)))) e!90175))))

(assert (= tb!5063 b!150978))

(declare-fun m!134895 () Bool)

(assert (=> b!150978 m!134895))

(declare-fun m!134897 () Bool)

(assert (=> tb!5063 m!134897))

(assert (=> d!36093 t!24805))

(declare-fun b_and!8673 () Bool)

(assert (= b_and!8667 (and (=> t!24805 result!7502) b_and!8673)))

(declare-fun t!24807 () Bool)

(declare-fun tb!5065 () Bool)

(assert (=> (and b!150761 (= (toChars!949 (transformation!455 (rule!962 separatorToken!170))) (toChars!949 (transformation!455 (rule!962 (h!8020 tokens!465))))) t!24807) tb!5065))

(declare-fun result!7504 () Bool)

(assert (= result!7504 result!7502))

(assert (=> d!36093 t!24807))

(declare-fun b_and!8675 () Bool)

(assert (= b_and!8669 (and (=> t!24807 result!7504) b_and!8675)))

(declare-fun t!24809 () Bool)

(declare-fun tb!5067 () Bool)

(assert (=> (and b!150757 (= (toChars!949 (transformation!455 (rule!962 (h!8020 tokens!465)))) (toChars!949 (transformation!455 (rule!962 (h!8020 tokens!465))))) t!24809) tb!5067))

(declare-fun result!7506 () Bool)

(assert (= result!7506 result!7502))

(assert (=> d!36093 t!24809))

(declare-fun b_and!8677 () Bool)

(assert (= b_and!8671 (and (=> t!24809 result!7506) b_and!8677)))

(declare-fun m!134899 () Bool)

(assert (=> d!36093 m!134899))

(declare-fun m!134901 () Bool)

(assert (=> d!36093 m!134901))

(assert (=> b!150774 d!36093))

(declare-fun d!36095 () Bool)

(assert (=> d!36095 (= (inv!3412 (tag!633 (h!8021 rules!1920))) (= (mod (str.len (value!17282 (tag!633 (h!8021 rules!1920)))) 2) 0))))

(assert (=> b!150763 d!36095))

(declare-fun d!36097 () Bool)

(declare-fun res!69227 () Bool)

(declare-fun e!90178 () Bool)

(assert (=> d!36097 (=> (not res!69227) (not e!90178))))

(declare-fun semiInverseModEq!157 (Int Int) Bool)

(assert (=> d!36097 (= res!69227 (semiInverseModEq!157 (toChars!949 (transformation!455 (h!8021 rules!1920))) (toValue!1090 (transformation!455 (h!8021 rules!1920)))))))

(assert (=> d!36097 (= (inv!3416 (transformation!455 (h!8021 rules!1920))) e!90178)))

(declare-fun b!150981 () Bool)

(declare-fun equivClasses!140 (Int Int) Bool)

(assert (=> b!150981 (= e!90178 (equivClasses!140 (toChars!949 (transformation!455 (h!8021 rules!1920))) (toValue!1090 (transformation!455 (h!8021 rules!1920)))))))

(assert (= (and d!36097 res!69227) b!150981))

(declare-fun m!134903 () Bool)

(assert (=> d!36097 m!134903))

(declare-fun m!134905 () Bool)

(assert (=> b!150981 m!134905))

(assert (=> b!150763 d!36097))

(declare-fun d!36099 () Bool)

(assert (=> d!36099 (= (list!917 (seqFromList!287 lt!43919)) (list!921 (c!30493 (seqFromList!287 lt!43919))))))

(declare-fun bs!13755 () Bool)

(assert (= bs!13755 d!36099))

(declare-fun m!134907 () Bool)

(assert (=> bs!13755 m!134907))

(assert (=> b!150762 d!36099))

(declare-fun d!36101 () Bool)

(declare-fun fromListB!121 (List!2631) BalanceConc!1472)

(assert (=> d!36101 (= (seqFromList!287 lt!43919) (fromListB!121 lt!43919))))

(declare-fun bs!13756 () Bool)

(assert (= bs!13756 d!36101))

(declare-fun m!134909 () Bool)

(assert (=> bs!13756 m!134909))

(assert (=> b!150762 d!36101))

(declare-fun d!36103 () Bool)

(declare-fun res!69232 () Bool)

(declare-fun e!90183 () Bool)

(assert (=> d!36103 (=> res!69232 e!90183)))

(assert (=> d!36103 (= res!69232 ((_ is Nil!2623) tokens!465))))

(assert (=> d!36103 (= (forall!443 tokens!465 lambda!3862) e!90183)))

(declare-fun b!150986 () Bool)

(declare-fun e!90184 () Bool)

(assert (=> b!150986 (= e!90183 e!90184)))

(declare-fun res!69233 () Bool)

(assert (=> b!150986 (=> (not res!69233) (not e!90184))))

(declare-fun dynLambda!915 (Int Token!654) Bool)

(assert (=> b!150986 (= res!69233 (dynLambda!915 lambda!3862 (h!8020 tokens!465)))))

(declare-fun b!150987 () Bool)

(assert (=> b!150987 (= e!90184 (forall!443 (t!24769 tokens!465) lambda!3862))))

(assert (= (and d!36103 (not res!69232)) b!150986))

(assert (= (and b!150986 res!69233) b!150987))

(declare-fun b_lambda!2731 () Bool)

(assert (=> (not b_lambda!2731) (not b!150986)))

(declare-fun m!134911 () Bool)

(assert (=> b!150986 m!134911))

(declare-fun m!134913 () Bool)

(assert (=> b!150987 m!134913))

(assert (=> b!150772 d!36103))

(declare-fun d!36105 () Bool)

(assert (=> d!36105 (= (inv!3412 (tag!633 (rule!962 separatorToken!170))) (= (mod (str.len (value!17282 (tag!633 (rule!962 separatorToken!170)))) 2) 0))))

(assert (=> b!150760 d!36105))

(declare-fun d!36107 () Bool)

(declare-fun res!69234 () Bool)

(declare-fun e!90185 () Bool)

(assert (=> d!36107 (=> (not res!69234) (not e!90185))))

(assert (=> d!36107 (= res!69234 (semiInverseModEq!157 (toChars!949 (transformation!455 (rule!962 separatorToken!170))) (toValue!1090 (transformation!455 (rule!962 separatorToken!170)))))))

(assert (=> d!36107 (= (inv!3416 (transformation!455 (rule!962 separatorToken!170))) e!90185)))

(declare-fun b!150988 () Bool)

(assert (=> b!150988 (= e!90185 (equivClasses!140 (toChars!949 (transformation!455 (rule!962 separatorToken!170))) (toValue!1090 (transformation!455 (rule!962 separatorToken!170)))))))

(assert (= (and d!36107 res!69234) b!150988))

(declare-fun m!134915 () Bool)

(assert (=> d!36107 m!134915))

(declare-fun m!134917 () Bool)

(assert (=> b!150988 m!134917))

(assert (=> b!150760 d!36107))

(declare-fun d!36109 () Bool)

(assert (=> d!36109 (= (inv!3412 (tag!633 (rule!962 (h!8020 tokens!465)))) (= (mod (str.len (value!17282 (tag!633 (rule!962 (h!8020 tokens!465))))) 2) 0))))

(assert (=> b!150770 d!36109))

(declare-fun d!36111 () Bool)

(declare-fun res!69235 () Bool)

(declare-fun e!90186 () Bool)

(assert (=> d!36111 (=> (not res!69235) (not e!90186))))

(assert (=> d!36111 (= res!69235 (semiInverseModEq!157 (toChars!949 (transformation!455 (rule!962 (h!8020 tokens!465)))) (toValue!1090 (transformation!455 (rule!962 (h!8020 tokens!465))))))))

(assert (=> d!36111 (= (inv!3416 (transformation!455 (rule!962 (h!8020 tokens!465)))) e!90186)))

(declare-fun b!150989 () Bool)

(assert (=> b!150989 (= e!90186 (equivClasses!140 (toChars!949 (transformation!455 (rule!962 (h!8020 tokens!465)))) (toValue!1090 (transformation!455 (rule!962 (h!8020 tokens!465))))))))

(assert (= (and d!36111 res!69235) b!150989))

(declare-fun m!134919 () Bool)

(assert (=> d!36111 m!134919))

(declare-fun m!134921 () Bool)

(assert (=> b!150989 m!134921))

(assert (=> b!150770 d!36111))

(declare-fun b!151000 () Bool)

(declare-fun e!90194 () Bool)

(declare-fun e!90195 () Bool)

(assert (=> b!151000 (= e!90194 e!90195)))

(declare-fun c!30545 () Bool)

(assert (=> b!151000 (= c!30545 ((_ is IntegerValue!1432) (value!17283 separatorToken!170)))))

(declare-fun d!36113 () Bool)

(declare-fun c!30546 () Bool)

(assert (=> d!36113 (= c!30546 ((_ is IntegerValue!1431) (value!17283 separatorToken!170)))))

(assert (=> d!36113 (= (inv!21 (value!17283 separatorToken!170)) e!90194)))

(declare-fun b!151001 () Bool)

(declare-fun inv!16 (TokenValue!477) Bool)

(assert (=> b!151001 (= e!90194 (inv!16 (value!17283 separatorToken!170)))))

(declare-fun b!151002 () Bool)

(declare-fun res!69238 () Bool)

(declare-fun e!90193 () Bool)

(assert (=> b!151002 (=> res!69238 e!90193)))

(assert (=> b!151002 (= res!69238 (not ((_ is IntegerValue!1433) (value!17283 separatorToken!170))))))

(assert (=> b!151002 (= e!90195 e!90193)))

(declare-fun b!151003 () Bool)

(declare-fun inv!15 (TokenValue!477) Bool)

(assert (=> b!151003 (= e!90193 (inv!15 (value!17283 separatorToken!170)))))

(declare-fun b!151004 () Bool)

(declare-fun inv!17 (TokenValue!477) Bool)

(assert (=> b!151004 (= e!90195 (inv!17 (value!17283 separatorToken!170)))))

(assert (= (and d!36113 c!30546) b!151001))

(assert (= (and d!36113 (not c!30546)) b!151000))

(assert (= (and b!151000 c!30545) b!151004))

(assert (= (and b!151000 (not c!30545)) b!151002))

(assert (= (and b!151002 (not res!69238)) b!151003))

(declare-fun m!134923 () Bool)

(assert (=> b!151001 m!134923))

(declare-fun m!134925 () Bool)

(assert (=> b!151003 m!134925))

(declare-fun m!134927 () Bool)

(assert (=> b!151004 m!134927))

(assert (=> b!150759 d!36113))

(declare-fun b!151005 () Bool)

(declare-fun e!90197 () Bool)

(declare-fun e!90198 () Bool)

(assert (=> b!151005 (= e!90197 e!90198)))

(declare-fun c!30547 () Bool)

(assert (=> b!151005 (= c!30547 ((_ is IntegerValue!1432) (value!17283 (h!8020 tokens!465))))))

(declare-fun d!36115 () Bool)

(declare-fun c!30548 () Bool)

(assert (=> d!36115 (= c!30548 ((_ is IntegerValue!1431) (value!17283 (h!8020 tokens!465))))))

(assert (=> d!36115 (= (inv!21 (value!17283 (h!8020 tokens!465))) e!90197)))

(declare-fun b!151006 () Bool)

(assert (=> b!151006 (= e!90197 (inv!16 (value!17283 (h!8020 tokens!465))))))

(declare-fun b!151007 () Bool)

(declare-fun res!69239 () Bool)

(declare-fun e!90196 () Bool)

(assert (=> b!151007 (=> res!69239 e!90196)))

(assert (=> b!151007 (= res!69239 (not ((_ is IntegerValue!1433) (value!17283 (h!8020 tokens!465)))))))

(assert (=> b!151007 (= e!90198 e!90196)))

(declare-fun b!151008 () Bool)

(assert (=> b!151008 (= e!90196 (inv!15 (value!17283 (h!8020 tokens!465))))))

(declare-fun b!151009 () Bool)

(assert (=> b!151009 (= e!90198 (inv!17 (value!17283 (h!8020 tokens!465))))))

(assert (= (and d!36115 c!30548) b!151006))

(assert (= (and d!36115 (not c!30548)) b!151005))

(assert (= (and b!151005 c!30547) b!151009))

(assert (= (and b!151005 (not c!30547)) b!151007))

(assert (= (and b!151007 (not res!69239)) b!151008))

(declare-fun m!134929 () Bool)

(assert (=> b!151006 m!134929))

(declare-fun m!134931 () Bool)

(assert (=> b!151008 m!134931))

(declare-fun m!134933 () Bool)

(assert (=> b!151009 m!134933))

(assert (=> b!150769 d!36115))

(declare-fun d!36117 () Bool)

(declare-fun res!69244 () Bool)

(declare-fun e!90203 () Bool)

(assert (=> d!36117 (=> (not res!69244) (not e!90203))))

(declare-fun rulesValid!123 (LexerInterface!341 List!2634) Bool)

(assert (=> d!36117 (= res!69244 (rulesValid!123 thiss!17480 rules!1920))))

(assert (=> d!36117 (= (rulesInvariant!307 thiss!17480 rules!1920) e!90203)))

(declare-fun b!151012 () Bool)

(declare-datatypes ((List!2636 0))(
  ( (Nil!2626) (Cons!2626 (h!8023 String!3465) (t!24838 List!2636)) )
))
(declare-fun noDuplicateTag!123 (LexerInterface!341 List!2634 List!2636) Bool)

(assert (=> b!151012 (= e!90203 (noDuplicateTag!123 thiss!17480 rules!1920 Nil!2626))))

(assert (= (and d!36117 res!69244) b!151012))

(declare-fun m!134935 () Bool)

(assert (=> d!36117 m!134935))

(declare-fun m!134937 () Bool)

(assert (=> b!151012 m!134937))

(assert (=> b!150758 d!36117))

(declare-fun d!36119 () Bool)

(assert (=> d!36119 (= (isEmpty!1032 rules!1920) ((_ is Nil!2624) rules!1920))))

(assert (=> b!150767 d!36119))

(declare-fun d!36121 () Bool)

(declare-fun res!69245 () Bool)

(declare-fun e!90204 () Bool)

(assert (=> d!36121 (=> (not res!69245) (not e!90204))))

(assert (=> d!36121 (= res!69245 (not (isEmpty!1035 (originalCharacters!498 (h!8020 tokens!465)))))))

(assert (=> d!36121 (= (inv!3415 (h!8020 tokens!465)) e!90204)))

(declare-fun b!151013 () Bool)

(declare-fun res!69246 () Bool)

(assert (=> b!151013 (=> (not res!69246) (not e!90204))))

(assert (=> b!151013 (= res!69246 (= (originalCharacters!498 (h!8020 tokens!465)) (list!917 (dynLambda!914 (toChars!949 (transformation!455 (rule!962 (h!8020 tokens!465)))) (value!17283 (h!8020 tokens!465))))))))

(declare-fun b!151014 () Bool)

(assert (=> b!151014 (= e!90204 (= (size!2237 (h!8020 tokens!465)) (size!2240 (originalCharacters!498 (h!8020 tokens!465)))))))

(assert (= (and d!36121 res!69245) b!151013))

(assert (= (and b!151013 res!69246) b!151014))

(declare-fun b_lambda!2733 () Bool)

(assert (=> (not b_lambda!2733) (not b!151013)))

(assert (=> b!151013 t!24805))

(declare-fun b_and!8679 () Bool)

(assert (= b_and!8673 (and (=> t!24805 result!7502) b_and!8679)))

(assert (=> b!151013 t!24807))

(declare-fun b_and!8681 () Bool)

(assert (= b_and!8675 (and (=> t!24807 result!7504) b_and!8681)))

(assert (=> b!151013 t!24809))

(declare-fun b_and!8683 () Bool)

(assert (= b_and!8677 (and (=> t!24809 result!7506) b_and!8683)))

(declare-fun m!134939 () Bool)

(assert (=> d!36121 m!134939))

(assert (=> b!151013 m!134901))

(assert (=> b!151013 m!134901))

(declare-fun m!134941 () Bool)

(assert (=> b!151013 m!134941))

(declare-fun m!134943 () Bool)

(assert (=> b!151014 m!134943))

(assert (=> b!150756 d!36121))

(declare-fun d!36123 () Bool)

(declare-fun lt!44027 () Bool)

(declare-fun e!90217 () Bool)

(assert (=> d!36123 (= lt!44027 e!90217)))

(declare-fun res!69255 () Bool)

(assert (=> d!36123 (=> (not res!69255) (not e!90217))))

(declare-datatypes ((tuple2!2568 0))(
  ( (tuple2!2569 (_1!1500 BalanceConc!1474) (_2!1500 BalanceConc!1472)) )
))
(declare-fun lex!167 (LexerInterface!341 List!2634 BalanceConc!1472) tuple2!2568)

(assert (=> d!36123 (= res!69255 (= (list!920 (_1!1500 (lex!167 thiss!17480 rules!1920 (print!92 thiss!17480 (singletonSeq!25 separatorToken!170))))) (list!920 (singletonSeq!25 separatorToken!170))))))

(declare-fun e!90216 () Bool)

(assert (=> d!36123 (= lt!44027 e!90216)))

(declare-fun res!69257 () Bool)

(assert (=> d!36123 (=> (not res!69257) (not e!90216))))

(declare-fun lt!44028 () tuple2!2568)

(declare-fun size!2241 (BalanceConc!1474) Int)

(assert (=> d!36123 (= res!69257 (= (size!2241 (_1!1500 lt!44028)) 1))))

(assert (=> d!36123 (= lt!44028 (lex!167 thiss!17480 rules!1920 (print!92 thiss!17480 (singletonSeq!25 separatorToken!170))))))

(assert (=> d!36123 (not (isEmpty!1032 rules!1920))))

(assert (=> d!36123 (= (rulesProduceIndividualToken!90 thiss!17480 rules!1920 separatorToken!170) lt!44027)))

(declare-fun b!151032 () Bool)

(declare-fun res!69256 () Bool)

(assert (=> b!151032 (=> (not res!69256) (not e!90216))))

(declare-fun apply!341 (BalanceConc!1474 Int) Token!654)

(assert (=> b!151032 (= res!69256 (= (apply!341 (_1!1500 lt!44028) 0) separatorToken!170))))

(declare-fun b!151033 () Bool)

(declare-fun isEmpty!1036 (BalanceConc!1472) Bool)

(assert (=> b!151033 (= e!90216 (isEmpty!1036 (_2!1500 lt!44028)))))

(declare-fun b!151034 () Bool)

(assert (=> b!151034 (= e!90217 (isEmpty!1036 (_2!1500 (lex!167 thiss!17480 rules!1920 (print!92 thiss!17480 (singletonSeq!25 separatorToken!170))))))))

(assert (= (and d!36123 res!69257) b!151032))

(assert (= (and b!151032 res!69256) b!151033))

(assert (= (and d!36123 res!69255) b!151034))

(declare-fun m!134961 () Bool)

(assert (=> d!36123 m!134961))

(declare-fun m!134963 () Bool)

(assert (=> d!36123 m!134963))

(declare-fun m!134965 () Bool)

(assert (=> d!36123 m!134965))

(declare-fun m!134967 () Bool)

(assert (=> d!36123 m!134967))

(assert (=> d!36123 m!134961))

(assert (=> d!36123 m!134963))

(declare-fun m!134969 () Bool)

(assert (=> d!36123 m!134969))

(assert (=> d!36123 m!134617))

(assert (=> d!36123 m!134961))

(declare-fun m!134971 () Bool)

(assert (=> d!36123 m!134971))

(declare-fun m!134973 () Bool)

(assert (=> b!151032 m!134973))

(declare-fun m!134975 () Bool)

(assert (=> b!151033 m!134975))

(assert (=> b!151034 m!134961))

(assert (=> b!151034 m!134961))

(assert (=> b!151034 m!134963))

(assert (=> b!151034 m!134963))

(assert (=> b!151034 m!134965))

(declare-fun m!134977 () Bool)

(assert (=> b!151034 m!134977))

(assert (=> b!150766 d!36123))

(declare-fun d!36133 () Bool)

(assert (=> d!36133 (= (list!917 (printWithSeparatorTokenWhenNeededRec!24 thiss!17480 rules!1920 lt!43920 separatorToken!170 0)) (list!921 (c!30493 (printWithSeparatorTokenWhenNeededRec!24 thiss!17480 rules!1920 lt!43920 separatorToken!170 0))))))

(declare-fun bs!13763 () Bool)

(assert (= bs!13763 d!36133))

(declare-fun m!134979 () Bool)

(assert (=> bs!13763 m!134979))

(assert (=> b!150755 d!36133))

(declare-fun bs!13777 () Bool)

(declare-fun d!36135 () Bool)

(assert (= bs!13777 (and d!36135 b!150772)))

(declare-fun lambda!3896 () Int)

(assert (=> bs!13777 (= lambda!3896 lambda!3862)))

(declare-fun bs!13778 () Bool)

(assert (= bs!13778 (and d!36135 d!36045)))

(assert (=> bs!13778 (not (= lambda!3896 lambda!3869))))

(declare-fun bs!13779 () Bool)

(assert (= bs!13779 (and d!36135 d!36079)))

(assert (=> bs!13779 (not (= lambda!3896 lambda!3876))))

(declare-fun bs!13780 () Bool)

(assert (= bs!13780 (and d!36135 b!150972)))

(assert (=> bs!13780 (not (= lambda!3896 lambda!3882))))

(declare-fun bs!13781 () Bool)

(declare-fun b!151155 () Bool)

(assert (= bs!13781 (and b!151155 d!36079)))

(declare-fun lambda!3897 () Int)

(assert (=> bs!13781 (= lambda!3897 lambda!3876)))

(declare-fun bs!13782 () Bool)

(assert (= bs!13782 (and b!151155 d!36045)))

(assert (=> bs!13782 (= lambda!3897 lambda!3869)))

(declare-fun bs!13783 () Bool)

(assert (= bs!13783 (and b!151155 d!36135)))

(assert (=> bs!13783 (not (= lambda!3897 lambda!3896))))

(declare-fun bs!13784 () Bool)

(assert (= bs!13784 (and b!151155 b!150972)))

(assert (=> bs!13784 (= lambda!3897 lambda!3882)))

(declare-fun bs!13785 () Bool)

(assert (= bs!13785 (and b!151155 b!150772)))

(assert (=> bs!13785 (not (= lambda!3897 lambda!3862))))

(declare-fun b!151158 () Bool)

(declare-fun e!90305 () Bool)

(assert (=> b!151158 (= e!90305 true)))

(declare-fun b!151157 () Bool)

(declare-fun e!90304 () Bool)

(assert (=> b!151157 (= e!90304 e!90305)))

(declare-fun b!151156 () Bool)

(declare-fun e!90303 () Bool)

(assert (=> b!151156 (= e!90303 e!90304)))

(assert (=> b!151155 e!90303))

(assert (= b!151157 b!151158))

(assert (= b!151156 b!151157))

(assert (= (and b!151155 ((_ is Cons!2624) rules!1920)) b!151156))

(assert (=> b!151158 (< (dynLambda!911 order!1295 (toValue!1090 (transformation!455 (h!8021 rules!1920)))) (dynLambda!912 order!1297 lambda!3897))))

(assert (=> b!151158 (< (dynLambda!913 order!1299 (toChars!949 (transformation!455 (h!8021 rules!1920)))) (dynLambda!912 order!1297 lambda!3897))))

(assert (=> b!151155 true))

(declare-fun b!151145 () Bool)

(declare-fun e!90299 () Bool)

(assert (=> b!151145 (= e!90299 (<= 0 (size!2241 lt!43920)))))

(declare-fun bm!6102 () Bool)

(declare-fun call!6111 () Token!654)

(assert (=> bm!6102 (= call!6111 (apply!341 lt!43920 0))))

(declare-fun b!151146 () Bool)

(declare-fun e!90301 () BalanceConc!1472)

(assert (=> b!151146 (= e!90301 (BalanceConc!1473 Empty!732))))

(declare-fun b!151147 () Bool)

(declare-fun c!30568 () Bool)

(declare-fun e!90302 () Bool)

(assert (=> b!151147 (= c!30568 e!90302)))

(declare-fun res!69279 () Bool)

(assert (=> b!151147 (=> (not res!69279) (not e!90302))))

(declare-datatypes ((tuple2!2570 0))(
  ( (tuple2!2571 (_1!1501 Token!654) (_2!1501 BalanceConc!1472)) )
))
(declare-datatypes ((Option!239 0))(
  ( (None!238) (Some!238 (v!13615 tuple2!2570)) )
))
(declare-fun lt!44082 () Option!239)

(assert (=> b!151147 (= res!69279 ((_ is Some!238) lt!44082))))

(declare-fun e!90296 () BalanceConc!1472)

(declare-fun e!90298 () BalanceConc!1472)

(assert (=> b!151147 (= e!90296 e!90298)))

(declare-fun b!151148 () Bool)

(declare-fun e!90297 () Bool)

(assert (=> b!151148 (= e!90297 (= (_1!1501 (v!13615 lt!44082)) (apply!341 lt!43920 0)))))

(declare-fun b!151149 () Bool)

(declare-fun call!6108 () BalanceConc!1472)

(assert (=> b!151149 (= e!90296 call!6108)))

(declare-fun b!151150 () Bool)

(declare-fun e!90300 () BalanceConc!1472)

(declare-fun call!6107 () Token!654)

(assert (=> b!151150 (= e!90300 (charsOf!110 call!6107))))

(declare-fun bm!6103 () Bool)

(declare-fun call!6110 () BalanceConc!1472)

(declare-fun call!6109 () BalanceConc!1472)

(assert (=> bm!6103 (= call!6110 call!6109)))

(declare-fun bm!6104 () Bool)

(declare-fun c!30567 () Bool)

(assert (=> bm!6104 (= call!6109 (charsOf!110 (ite c!30567 call!6111 (ite c!30568 separatorToken!170 call!6107))))))

(declare-fun lt!44084 () BalanceConc!1472)

(declare-fun dropList!66 (BalanceConc!1474 Int) List!2633)

(assert (=> d!36135 (= (list!917 lt!44084) (printWithSeparatorTokenWhenNeededList!34 thiss!17480 rules!1920 (dropList!66 lt!43920 0) separatorToken!170))))

(assert (=> d!36135 (= lt!44084 e!90301)))

(declare-fun c!30569 () Bool)

(assert (=> d!36135 (= c!30569 (>= 0 (size!2241 lt!43920)))))

(declare-fun lt!44081 () Unit!1992)

(declare-fun lemmaContentSubsetPreservesForall!10 (List!2633 List!2633 Int) Unit!1992)

(assert (=> d!36135 (= lt!44081 (lemmaContentSubsetPreservesForall!10 (list!920 lt!43920) (dropList!66 lt!43920 0) lambda!3896))))

(assert (=> d!36135 e!90299))

(declare-fun res!69281 () Bool)

(assert (=> d!36135 (=> (not res!69281) (not e!90299))))

(assert (=> d!36135 (= res!69281 (>= 0 0))))

(assert (=> d!36135 (= (printWithSeparatorTokenWhenNeededRec!24 thiss!17480 rules!1920 lt!43920 separatorToken!170 0) lt!44084)))

(declare-fun b!151151 () Bool)

(assert (=> b!151151 (= e!90300 call!6109)))

(declare-fun b!151152 () Bool)

(assert (=> b!151152 (= e!90302 (not (= (_1!1501 (v!13615 lt!44082)) call!6111)))))

(declare-fun b!151153 () Bool)

(assert (=> b!151153 (= e!90298 (BalanceConc!1473 Empty!732))))

(assert (=> b!151153 (= (print!92 thiss!17480 (singletonSeq!25 call!6107)) (printTailRec!55 thiss!17480 (singletonSeq!25 call!6107) 0 (BalanceConc!1473 Empty!732)))))

(declare-fun lt!44074 () Unit!1992)

(declare-fun Unit!1998 () Unit!1992)

(assert (=> b!151153 (= lt!44074 Unit!1998)))

(declare-fun lt!44079 () Unit!1992)

(declare-fun lt!44080 () BalanceConc!1472)

(assert (=> b!151153 (= lt!44079 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!14 thiss!17480 rules!1920 (list!917 call!6110) (list!917 lt!44080)))))

(assert (=> b!151153 false))

(declare-fun lt!44078 () Unit!1992)

(declare-fun Unit!1999 () Unit!1992)

(assert (=> b!151153 (= lt!44078 Unit!1999)))

(declare-fun bm!6105 () Bool)

(assert (=> bm!6105 (= call!6107 call!6111)))

(declare-fun b!151154 () Bool)

(declare-fun ++!562 (BalanceConc!1472 BalanceConc!1472) BalanceConc!1472)

(assert (=> b!151154 (= e!90298 (++!562 call!6108 lt!44080))))

(declare-fun bm!6106 () Bool)

(declare-fun c!30566 () Bool)

(assert (=> bm!6106 (= c!30566 c!30567)))

(assert (=> bm!6106 (= call!6108 (++!562 e!90300 (ite c!30567 lt!44080 call!6110)))))

(assert (=> b!151155 (= e!90301 e!90296)))

(declare-fun lt!44083 () List!2633)

(assert (=> b!151155 (= lt!44083 (list!920 lt!43920))))

(declare-fun lt!44073 () Unit!1992)

(declare-fun lemmaDropApply!106 (List!2633 Int) Unit!1992)

(assert (=> b!151155 (= lt!44073 (lemmaDropApply!106 lt!44083 0))))

(declare-fun head!580 (List!2633) Token!654)

(declare-fun drop!119 (List!2633 Int) List!2633)

(declare-fun apply!342 (List!2633 Int) Token!654)

(assert (=> b!151155 (= (head!580 (drop!119 lt!44083 0)) (apply!342 lt!44083 0))))

(declare-fun lt!44085 () Unit!1992)

(assert (=> b!151155 (= lt!44085 lt!44073)))

(declare-fun lt!44086 () List!2633)

(assert (=> b!151155 (= lt!44086 (list!920 lt!43920))))

(declare-fun lt!44076 () Unit!1992)

(declare-fun lemmaDropTail!98 (List!2633 Int) Unit!1992)

(assert (=> b!151155 (= lt!44076 (lemmaDropTail!98 lt!44086 0))))

(declare-fun tail!320 (List!2633) List!2633)

(assert (=> b!151155 (= (tail!320 (drop!119 lt!44086 0)) (drop!119 lt!44086 (+ 0 1)))))

(declare-fun lt!44077 () Unit!1992)

(assert (=> b!151155 (= lt!44077 lt!44076)))

(declare-fun lt!44075 () Unit!1992)

(assert (=> b!151155 (= lt!44075 (forallContained!50 (list!920 lt!43920) lambda!3897 (apply!341 lt!43920 0)))))

(assert (=> b!151155 (= lt!44080 (printWithSeparatorTokenWhenNeededRec!24 thiss!17480 rules!1920 lt!43920 separatorToken!170 (+ 0 1)))))

(declare-fun maxPrefixZipperSequence!66 (LexerInterface!341 List!2634 BalanceConc!1472) Option!239)

(assert (=> b!151155 (= lt!44082 (maxPrefixZipperSequence!66 thiss!17480 rules!1920 (++!562 (charsOf!110 (apply!341 lt!43920 0)) lt!44080)))))

(declare-fun res!69280 () Bool)

(assert (=> b!151155 (= res!69280 ((_ is Some!238) lt!44082))))

(assert (=> b!151155 (=> (not res!69280) (not e!90297))))

(assert (=> b!151155 (= c!30567 e!90297)))

(assert (= (and d!36135 res!69281) b!151145))

(assert (= (and d!36135 c!30569) b!151146))

(assert (= (and d!36135 (not c!30569)) b!151155))

(assert (= (and b!151155 res!69280) b!151148))

(assert (= (and b!151155 c!30567) b!151149))

(assert (= (and b!151155 (not c!30567)) b!151147))

(assert (= (and b!151147 res!69279) b!151152))

(assert (= (and b!151147 c!30568) b!151154))

(assert (= (and b!151147 (not c!30568)) b!151153))

(assert (= (or b!151154 b!151153) bm!6105))

(assert (= (or b!151154 b!151153) bm!6103))

(assert (= (or b!151149 b!151152 bm!6105) bm!6102))

(assert (= (or b!151149 bm!6103) bm!6104))

(assert (= (or b!151149 b!151154) bm!6106))

(assert (= (and bm!6106 c!30566) b!151151))

(assert (= (and bm!6106 (not c!30566)) b!151150))

(declare-fun m!135051 () Bool)

(assert (=> b!151155 m!135051))

(declare-fun m!135053 () Bool)

(assert (=> b!151155 m!135053))

(declare-fun m!135055 () Bool)

(assert (=> b!151155 m!135055))

(assert (=> b!151155 m!134737))

(assert (=> b!151155 m!135051))

(declare-fun m!135057 () Bool)

(assert (=> b!151155 m!135057))

(assert (=> b!151155 m!135051))

(declare-fun m!135059 () Bool)

(assert (=> b!151155 m!135059))

(assert (=> b!151155 m!134737))

(declare-fun m!135061 () Bool)

(assert (=> b!151155 m!135061))

(declare-fun m!135063 () Bool)

(assert (=> b!151155 m!135063))

(declare-fun m!135065 () Bool)

(assert (=> b!151155 m!135065))

(assert (=> b!151155 m!135053))

(declare-fun m!135067 () Bool)

(assert (=> b!151155 m!135067))

(declare-fun m!135069 () Bool)

(assert (=> b!151155 m!135069))

(declare-fun m!135071 () Bool)

(assert (=> b!151155 m!135071))

(assert (=> b!151155 m!135059))

(declare-fun m!135073 () Bool)

(assert (=> b!151155 m!135073))

(assert (=> b!151155 m!135067))

(declare-fun m!135075 () Bool)

(assert (=> b!151155 m!135075))

(assert (=> b!151155 m!135063))

(declare-fun m!135077 () Bool)

(assert (=> b!151155 m!135077))

(assert (=> bm!6102 m!135051))

(declare-fun m!135079 () Bool)

(assert (=> d!36135 m!135079))

(declare-fun m!135081 () Bool)

(assert (=> d!36135 m!135081))

(assert (=> d!36135 m!134737))

(assert (=> d!36135 m!134737))

(assert (=> d!36135 m!135079))

(declare-fun m!135083 () Bool)

(assert (=> d!36135 m!135083))

(assert (=> d!36135 m!135079))

(declare-fun m!135085 () Bool)

(assert (=> d!36135 m!135085))

(declare-fun m!135087 () Bool)

(assert (=> d!36135 m!135087))

(declare-fun m!135089 () Bool)

(assert (=> b!151154 m!135089))

(declare-fun m!135091 () Bool)

(assert (=> bm!6104 m!135091))

(declare-fun m!135093 () Bool)

(assert (=> b!151150 m!135093))

(assert (=> b!151145 m!135085))

(declare-fun m!135095 () Bool)

(assert (=> bm!6106 m!135095))

(declare-fun m!135097 () Bool)

(assert (=> b!151153 m!135097))

(declare-fun m!135099 () Bool)

(assert (=> b!151153 m!135099))

(declare-fun m!135101 () Bool)

(assert (=> b!151153 m!135101))

(declare-fun m!135103 () Bool)

(assert (=> b!151153 m!135103))

(assert (=> b!151153 m!135097))

(assert (=> b!151153 m!135103))

(declare-fun m!135105 () Bool)

(assert (=> b!151153 m!135105))

(assert (=> b!151153 m!135099))

(declare-fun m!135107 () Bool)

(assert (=> b!151153 m!135107))

(assert (=> b!151153 m!135099))

(assert (=> b!151148 m!135051))

(assert (=> b!150755 d!36135))

(declare-fun bs!13786 () Bool)

(declare-fun b!151166 () Bool)

(assert (= bs!13786 (and b!151166 d!36079)))

(declare-fun lambda!3898 () Int)

(assert (=> bs!13786 (= lambda!3898 lambda!3876)))

(declare-fun bs!13787 () Bool)

(assert (= bs!13787 (and b!151166 d!36045)))

(assert (=> bs!13787 (= lambda!3898 lambda!3869)))

(declare-fun bs!13788 () Bool)

(assert (= bs!13788 (and b!151166 d!36135)))

(assert (=> bs!13788 (not (= lambda!3898 lambda!3896))))

(declare-fun bs!13789 () Bool)

(assert (= bs!13789 (and b!151166 b!150972)))

(assert (=> bs!13789 (= lambda!3898 lambda!3882)))

(declare-fun bs!13790 () Bool)

(assert (= bs!13790 (and b!151166 b!151155)))

(assert (=> bs!13790 (= lambda!3898 lambda!3897)))

(declare-fun bs!13791 () Bool)

(assert (= bs!13791 (and b!151166 b!150772)))

(assert (=> bs!13791 (not (= lambda!3898 lambda!3862))))

(declare-fun b!151171 () Bool)

(declare-fun e!90313 () Bool)

(assert (=> b!151171 (= e!90313 true)))

(declare-fun b!151170 () Bool)

(declare-fun e!90312 () Bool)

(assert (=> b!151170 (= e!90312 e!90313)))

(declare-fun b!151169 () Bool)

(declare-fun e!90311 () Bool)

(assert (=> b!151169 (= e!90311 e!90312)))

(assert (=> b!151166 e!90311))

(assert (= b!151170 b!151171))

(assert (= b!151169 b!151170))

(assert (= (and b!151166 ((_ is Cons!2624) rules!1920)) b!151169))

(assert (=> b!151171 (< (dynLambda!911 order!1295 (toValue!1090 (transformation!455 (h!8021 rules!1920)))) (dynLambda!912 order!1297 lambda!3898))))

(assert (=> b!151171 (< (dynLambda!913 order!1299 (toChars!949 (transformation!455 (h!8021 rules!1920)))) (dynLambda!912 order!1297 lambda!3898))))

(assert (=> b!151166 true))

(declare-fun b!151159 () Bool)

(declare-fun c!30571 () Bool)

(declare-fun lt!44087 () Option!238)

(assert (=> b!151159 (= c!30571 (and ((_ is Some!237) lt!44087) (not (= (_1!1499 (v!13614 lt!44087)) (h!8020 tokens!465)))))))

(declare-fun e!90307 () List!2631)

(declare-fun e!90309 () List!2631)

(assert (=> b!151159 (= e!90307 e!90309)))

(declare-fun bm!6107 () Bool)

(declare-fun call!6115 () List!2631)

(declare-fun call!6116 () List!2631)

(assert (=> bm!6107 (= call!6115 call!6116)))

(declare-fun c!30572 () Bool)

(assert (=> bm!6107 (= c!30572 c!30571)))

(declare-fun b!151160 () Bool)

(declare-fun e!90308 () List!2631)

(declare-fun call!6112 () BalanceConc!1472)

(assert (=> b!151160 (= e!90308 (list!917 call!6112))))

(declare-fun b!151161 () Bool)

(assert (=> b!151161 (= e!90309 Nil!2621)))

(assert (=> b!151161 (= (print!92 thiss!17480 (singletonSeq!25 (h!8020 tokens!465))) (printTailRec!55 thiss!17480 (singletonSeq!25 (h!8020 tokens!465)) 0 (BalanceConc!1473 Empty!732)))))

(declare-fun lt!44088 () Unit!1992)

(declare-fun Unit!2000 () Unit!1992)

(assert (=> b!151161 (= lt!44088 Unit!2000)))

(declare-fun lt!44090 () Unit!1992)

(declare-fun lt!44092 () List!2631)

(assert (=> b!151161 (= lt!44090 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!14 thiss!17480 rules!1920 call!6115 lt!44092))))

(assert (=> b!151161 false))

(declare-fun lt!44091 () Unit!1992)

(declare-fun Unit!2001 () Unit!1992)

(assert (=> b!151161 (= lt!44091 Unit!2001)))

(declare-fun c!30574 () Bool)

(declare-fun e!90306 () BalanceConc!1472)

(declare-fun call!6113 () BalanceConc!1472)

(declare-fun bm!6108 () Bool)

(assert (=> bm!6108 (= call!6116 (list!917 (ite c!30574 call!6113 e!90306)))))

(declare-fun b!151162 () Bool)

(assert (=> b!151162 (= e!90308 call!6116)))

(declare-fun b!151163 () Bool)

(assert (=> b!151163 (= e!90306 call!6112)))

(declare-fun b!151164 () Bool)

(declare-fun call!6114 () List!2631)

(assert (=> b!151164 (= e!90307 call!6114)))

(declare-fun bm!6110 () Bool)

(assert (=> bm!6110 (= call!6113 (charsOf!110 (h!8020 tokens!465)))))

(declare-fun b!151165 () Bool)

(assert (=> b!151165 (= e!90309 (++!560 call!6114 lt!44092))))

(declare-fun bm!6111 () Bool)

(assert (=> bm!6111 (= call!6112 call!6113)))

(declare-fun e!90310 () List!2631)

(assert (=> b!151166 (= e!90310 e!90307)))

(declare-fun lt!44089 () Unit!1992)

(assert (=> b!151166 (= lt!44089 (forallContained!50 tokens!465 lambda!3898 (h!8020 tokens!465)))))

(assert (=> b!151166 (= lt!44092 (printWithSeparatorTokenWhenNeededList!34 thiss!17480 rules!1920 (t!24769 tokens!465) separatorToken!170))))

(assert (=> b!151166 (= lt!44087 (maxPrefix!107 thiss!17480 rules!1920 (++!560 (list!917 (charsOf!110 (h!8020 tokens!465))) lt!44092)))))

(assert (=> b!151166 (= c!30574 (and ((_ is Some!237) lt!44087) (= (_1!1499 (v!13614 lt!44087)) (h!8020 tokens!465))))))

(declare-fun b!151167 () Bool)

(assert (=> b!151167 (= e!90306 (charsOf!110 separatorToken!170))))

(declare-fun b!151168 () Bool)

(assert (=> b!151168 (= e!90310 Nil!2621)))

(declare-fun d!36153 () Bool)

(declare-fun c!30573 () Bool)

(assert (=> d!36153 (= c!30573 ((_ is Cons!2623) tokens!465))))

(assert (=> d!36153 (= (printWithSeparatorTokenWhenNeededList!34 thiss!17480 rules!1920 tokens!465 separatorToken!170) e!90310)))

(declare-fun bm!6109 () Bool)

(declare-fun c!30570 () Bool)

(assert (=> bm!6109 (= c!30570 c!30574)))

(assert (=> bm!6109 (= call!6114 (++!560 e!90308 (ite c!30574 lt!44092 call!6115)))))

(assert (= (and d!36153 c!30573) b!151166))

(assert (= (and d!36153 (not c!30573)) b!151168))

(assert (= (and b!151166 c!30574) b!151164))

(assert (= (and b!151166 (not c!30574)) b!151159))

(assert (= (and b!151159 c!30571) b!151165))

(assert (= (and b!151159 (not c!30571)) b!151161))

(assert (= (or b!151165 b!151161) bm!6111))

(assert (= (or b!151165 b!151161) bm!6107))

(assert (= (and bm!6107 c!30572) b!151167))

(assert (= (and bm!6107 (not c!30572)) b!151163))

(assert (= (or b!151164 bm!6111) bm!6110))

(assert (= (or b!151164 bm!6107) bm!6108))

(assert (= (or b!151164 b!151165) bm!6109))

(assert (= (and bm!6109 c!30570) b!151162))

(assert (= (and bm!6109 (not c!30570)) b!151160))

(assert (=> b!151166 m!134647))

(assert (=> b!151166 m!134659))

(declare-fun m!135109 () Bool)

(assert (=> b!151166 m!135109))

(assert (=> b!151166 m!135109))

(declare-fun m!135111 () Bool)

(assert (=> b!151166 m!135111))

(assert (=> b!151166 m!134657))

(assert (=> b!151166 m!134657))

(assert (=> b!151166 m!134659))

(declare-fun m!135113 () Bool)

(assert (=> b!151166 m!135113))

(declare-fun m!135115 () Bool)

(assert (=> bm!6109 m!135115))

(declare-fun m!135117 () Bool)

(assert (=> b!151161 m!135117))

(assert (=> b!151161 m!135117))

(declare-fun m!135119 () Bool)

(assert (=> b!151161 m!135119))

(assert (=> b!151161 m!135117))

(declare-fun m!135121 () Bool)

(assert (=> b!151161 m!135121))

(declare-fun m!135123 () Bool)

(assert (=> b!151161 m!135123))

(declare-fun m!135125 () Bool)

(assert (=> bm!6108 m!135125))

(assert (=> b!151167 m!134651))

(declare-fun m!135127 () Bool)

(assert (=> b!151160 m!135127))

(assert (=> bm!6110 m!134657))

(declare-fun m!135129 () Bool)

(assert (=> b!151165 m!135129))

(assert (=> b!150755 d!36153))

(declare-fun d!36155 () Bool)

(declare-fun res!69286 () Bool)

(declare-fun e!90318 () Bool)

(assert (=> d!36155 (=> res!69286 e!90318)))

(assert (=> d!36155 (= res!69286 (not ((_ is Cons!2624) rules!1920)))))

(assert (=> d!36155 (= (sepAndNonSepRulesDisjointChars!44 rules!1920 rules!1920) e!90318)))

(declare-fun b!151176 () Bool)

(declare-fun e!90319 () Bool)

(assert (=> b!151176 (= e!90318 e!90319)))

(declare-fun res!69287 () Bool)

(assert (=> b!151176 (=> (not res!69287) (not e!90319))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!16 (Rule!710 List!2634) Bool)

(assert (=> b!151176 (= res!69287 (ruleDisjointCharsFromAllFromOtherType!16 (h!8021 rules!1920) rules!1920))))

(declare-fun b!151177 () Bool)

(assert (=> b!151177 (= e!90319 (sepAndNonSepRulesDisjointChars!44 rules!1920 (t!24770 rules!1920)))))

(assert (= (and d!36155 (not res!69286)) b!151176))

(assert (= (and b!151176 res!69287) b!151177))

(declare-fun m!135131 () Bool)

(assert (=> b!151176 m!135131))

(declare-fun m!135133 () Bool)

(assert (=> b!151177 m!135133))

(assert (=> b!150765 d!36155))

(declare-fun b!151188 () Bool)

(declare-fun e!90322 () Bool)

(declare-fun tp_is_empty!1611 () Bool)

(assert (=> b!151188 (= e!90322 tp_is_empty!1611)))

(declare-fun b!151190 () Bool)

(declare-fun tp!78757 () Bool)

(assert (=> b!151190 (= e!90322 tp!78757)))

(declare-fun b!151189 () Bool)

(declare-fun tp!78758 () Bool)

(declare-fun tp!78754 () Bool)

(assert (=> b!151189 (= e!90322 (and tp!78758 tp!78754))))

(declare-fun b!151191 () Bool)

(declare-fun tp!78756 () Bool)

(declare-fun tp!78755 () Bool)

(assert (=> b!151191 (= e!90322 (and tp!78756 tp!78755))))

(assert (=> b!150763 (= tp!78669 e!90322)))

(assert (= (and b!150763 ((_ is ElementMatch!679) (regex!455 (h!8021 rules!1920)))) b!151188))

(assert (= (and b!150763 ((_ is Concat!1157) (regex!455 (h!8021 rules!1920)))) b!151189))

(assert (= (and b!150763 ((_ is Star!679) (regex!455 (h!8021 rules!1920)))) b!151190))

(assert (= (and b!150763 ((_ is Union!679) (regex!455 (h!8021 rules!1920)))) b!151191))

(declare-fun b!151202 () Bool)

(declare-fun b_free!5509 () Bool)

(declare-fun b_next!5509 () Bool)

(assert (=> b!151202 (= b_free!5509 (not b_next!5509))))

(declare-fun tp!78770 () Bool)

(declare-fun b_and!8705 () Bool)

(assert (=> b!151202 (= tp!78770 b_and!8705)))

(declare-fun b_free!5511 () Bool)

(declare-fun b_next!5511 () Bool)

(assert (=> b!151202 (= b_free!5511 (not b_next!5511))))

(declare-fun t!24830 () Bool)

(declare-fun tb!5077 () Bool)

(assert (=> (and b!151202 (= (toChars!949 (transformation!455 (h!8021 (t!24770 rules!1920)))) (toChars!949 (transformation!455 (rule!962 separatorToken!170)))) t!24830) tb!5077))

(declare-fun result!7528 () Bool)

(assert (= result!7528 result!7494))

(assert (=> b!150856 t!24830))

(assert (=> d!36089 t!24830))

(declare-fun t!24832 () Bool)

(declare-fun tb!5079 () Bool)

(assert (=> (and b!151202 (= (toChars!949 (transformation!455 (h!8021 (t!24770 rules!1920)))) (toChars!949 (transformation!455 (rule!962 (h!8020 tokens!465))))) t!24832) tb!5079))

(declare-fun result!7530 () Bool)

(assert (= result!7530 result!7502))

(assert (=> d!36093 t!24832))

(assert (=> b!151013 t!24832))

(declare-fun b_and!8707 () Bool)

(declare-fun tp!78767 () Bool)

(assert (=> b!151202 (= tp!78767 (and (=> t!24830 result!7528) (=> t!24832 result!7530) b_and!8707))))

(declare-fun e!90334 () Bool)

(assert (=> b!151202 (= e!90334 (and tp!78770 tp!78767))))

(declare-fun b!151201 () Bool)

(declare-fun tp!78768 () Bool)

(declare-fun e!90333 () Bool)

(assert (=> b!151201 (= e!90333 (and tp!78768 (inv!3412 (tag!633 (h!8021 (t!24770 rules!1920)))) (inv!3416 (transformation!455 (h!8021 (t!24770 rules!1920)))) e!90334))))

(declare-fun b!151200 () Bool)

(declare-fun e!90332 () Bool)

(declare-fun tp!78769 () Bool)

(assert (=> b!151200 (= e!90332 (and e!90333 tp!78769))))

(assert (=> b!150771 (= tp!78678 e!90332)))

(assert (= b!151201 b!151202))

(assert (= b!151200 b!151201))

(assert (= (and b!150771 ((_ is Cons!2624) (t!24770 rules!1920))) b!151200))

(declare-fun m!135135 () Bool)

(assert (=> b!151201 m!135135))

(declare-fun m!135137 () Bool)

(assert (=> b!151201 m!135137))

(declare-fun b!151203 () Bool)

(declare-fun e!90335 () Bool)

(assert (=> b!151203 (= e!90335 tp_is_empty!1611)))

(declare-fun b!151205 () Bool)

(declare-fun tp!78774 () Bool)

(assert (=> b!151205 (= e!90335 tp!78774)))

(declare-fun b!151204 () Bool)

(declare-fun tp!78775 () Bool)

(declare-fun tp!78771 () Bool)

(assert (=> b!151204 (= e!90335 (and tp!78775 tp!78771))))

(declare-fun b!151206 () Bool)

(declare-fun tp!78773 () Bool)

(declare-fun tp!78772 () Bool)

(assert (=> b!151206 (= e!90335 (and tp!78773 tp!78772))))

(assert (=> b!150760 (= tp!78679 e!90335)))

(assert (= (and b!150760 ((_ is ElementMatch!679) (regex!455 (rule!962 separatorToken!170)))) b!151203))

(assert (= (and b!150760 ((_ is Concat!1157) (regex!455 (rule!962 separatorToken!170)))) b!151204))

(assert (= (and b!150760 ((_ is Star!679) (regex!455 (rule!962 separatorToken!170)))) b!151205))

(assert (= (and b!150760 ((_ is Union!679) (regex!455 (rule!962 separatorToken!170)))) b!151206))

(declare-fun b!151207 () Bool)

(declare-fun e!90336 () Bool)

(assert (=> b!151207 (= e!90336 tp_is_empty!1611)))

(declare-fun b!151209 () Bool)

(declare-fun tp!78779 () Bool)

(assert (=> b!151209 (= e!90336 tp!78779)))

(declare-fun b!151208 () Bool)

(declare-fun tp!78780 () Bool)

(declare-fun tp!78776 () Bool)

(assert (=> b!151208 (= e!90336 (and tp!78780 tp!78776))))

(declare-fun b!151210 () Bool)

(declare-fun tp!78778 () Bool)

(declare-fun tp!78777 () Bool)

(assert (=> b!151210 (= e!90336 (and tp!78778 tp!78777))))

(assert (=> b!150770 (= tp!78670 e!90336)))

(assert (= (and b!150770 ((_ is ElementMatch!679) (regex!455 (rule!962 (h!8020 tokens!465))))) b!151207))

(assert (= (and b!150770 ((_ is Concat!1157) (regex!455 (rule!962 (h!8020 tokens!465))))) b!151208))

(assert (= (and b!150770 ((_ is Star!679) (regex!455 (rule!962 (h!8020 tokens!465))))) b!151209))

(assert (= (and b!150770 ((_ is Union!679) (regex!455 (rule!962 (h!8020 tokens!465))))) b!151210))

(declare-fun b!151215 () Bool)

(declare-fun e!90339 () Bool)

(declare-fun tp!78783 () Bool)

(assert (=> b!151215 (= e!90339 (and tp_is_empty!1611 tp!78783))))

(assert (=> b!150759 (= tp!78672 e!90339)))

(assert (= (and b!150759 ((_ is Cons!2621) (originalCharacters!498 separatorToken!170))) b!151215))

(declare-fun b!151216 () Bool)

(declare-fun e!90340 () Bool)

(declare-fun tp!78784 () Bool)

(assert (=> b!151216 (= e!90340 (and tp_is_empty!1611 tp!78784))))

(assert (=> b!150769 (= tp!78671 e!90340)))

(assert (= (and b!150769 ((_ is Cons!2621) (originalCharacters!498 (h!8020 tokens!465)))) b!151216))

(declare-fun b!151230 () Bool)

(declare-fun b_free!5513 () Bool)

(declare-fun b_next!5513 () Bool)

(assert (=> b!151230 (= b_free!5513 (not b_next!5513))))

(declare-fun tp!78796 () Bool)

(declare-fun b_and!8709 () Bool)

(assert (=> b!151230 (= tp!78796 b_and!8709)))

(declare-fun b_free!5515 () Bool)

(declare-fun b_next!5515 () Bool)

(assert (=> b!151230 (= b_free!5515 (not b_next!5515))))

(declare-fun tb!5081 () Bool)

(declare-fun t!24834 () Bool)

(assert (=> (and b!151230 (= (toChars!949 (transformation!455 (rule!962 (h!8020 (t!24769 tokens!465))))) (toChars!949 (transformation!455 (rule!962 separatorToken!170)))) t!24834) tb!5081))

(declare-fun result!7536 () Bool)

(assert (= result!7536 result!7494))

(assert (=> b!150856 t!24834))

(assert (=> d!36089 t!24834))

(declare-fun t!24836 () Bool)

(declare-fun tb!5083 () Bool)

(assert (=> (and b!151230 (= (toChars!949 (transformation!455 (rule!962 (h!8020 (t!24769 tokens!465))))) (toChars!949 (transformation!455 (rule!962 (h!8020 tokens!465))))) t!24836) tb!5083))

(declare-fun result!7538 () Bool)

(assert (= result!7538 result!7502))

(assert (=> d!36093 t!24836))

(assert (=> b!151013 t!24836))

(declare-fun tp!78798 () Bool)

(declare-fun b_and!8711 () Bool)

(assert (=> b!151230 (= tp!78798 (and (=> t!24834 result!7536) (=> t!24836 result!7538) b_and!8711))))

(declare-fun e!90356 () Bool)

(assert (=> b!150756 (= tp!78676 e!90356)))

(declare-fun e!90354 () Bool)

(declare-fun b!151227 () Bool)

(declare-fun tp!78799 () Bool)

(assert (=> b!151227 (= e!90356 (and (inv!3415 (h!8020 (t!24769 tokens!465))) e!90354 tp!78799))))

(declare-fun e!90353 () Bool)

(assert (=> b!151230 (= e!90353 (and tp!78796 tp!78798))))

(declare-fun tp!78795 () Bool)

(declare-fun e!90355 () Bool)

(declare-fun b!151229 () Bool)

(assert (=> b!151229 (= e!90355 (and tp!78795 (inv!3412 (tag!633 (rule!962 (h!8020 (t!24769 tokens!465))))) (inv!3416 (transformation!455 (rule!962 (h!8020 (t!24769 tokens!465))))) e!90353))))

(declare-fun b!151228 () Bool)

(declare-fun tp!78797 () Bool)

(assert (=> b!151228 (= e!90354 (and (inv!21 (value!17283 (h!8020 (t!24769 tokens!465)))) e!90355 tp!78797))))

(assert (= b!151229 b!151230))

(assert (= b!151228 b!151229))

(assert (= b!151227 b!151228))

(assert (= (and b!150756 ((_ is Cons!2623) (t!24769 tokens!465))) b!151227))

(declare-fun m!135139 () Bool)

(assert (=> b!151227 m!135139))

(declare-fun m!135141 () Bool)

(assert (=> b!151229 m!135141))

(declare-fun m!135143 () Bool)

(assert (=> b!151229 m!135143))

(declare-fun m!135145 () Bool)

(assert (=> b!151228 m!135145))

(declare-fun b_lambda!2749 () Bool)

(assert (= b_lambda!2729 (or (and b!151202 b_free!5511 (= (toChars!949 (transformation!455 (h!8021 (t!24770 rules!1920)))) (toChars!949 (transformation!455 (rule!962 (h!8020 tokens!465)))))) (and b!150761 b_free!5495 (= (toChars!949 (transformation!455 (rule!962 separatorToken!170))) (toChars!949 (transformation!455 (rule!962 (h!8020 tokens!465)))))) (and b!150754 b_free!5491 (= (toChars!949 (transformation!455 (h!8021 rules!1920))) (toChars!949 (transformation!455 (rule!962 (h!8020 tokens!465)))))) (and b!150757 b_free!5499) (and b!151230 b_free!5515 (= (toChars!949 (transformation!455 (rule!962 (h!8020 (t!24769 tokens!465))))) (toChars!949 (transformation!455 (rule!962 (h!8020 tokens!465)))))) b_lambda!2749)))

(declare-fun b_lambda!2751 () Bool)

(assert (= b_lambda!2727 (or (and b!150757 b_free!5499 (= (toChars!949 (transformation!455 (rule!962 (h!8020 tokens!465)))) (toChars!949 (transformation!455 (rule!962 separatorToken!170))))) (and b!151230 b_free!5515 (= (toChars!949 (transformation!455 (rule!962 (h!8020 (t!24769 tokens!465))))) (toChars!949 (transformation!455 (rule!962 separatorToken!170))))) (and b!151202 b_free!5511 (= (toChars!949 (transformation!455 (h!8021 (t!24770 rules!1920)))) (toChars!949 (transformation!455 (rule!962 separatorToken!170))))) (and b!150754 b_free!5491 (= (toChars!949 (transformation!455 (h!8021 rules!1920))) (toChars!949 (transformation!455 (rule!962 separatorToken!170))))) (and b!150761 b_free!5495) b_lambda!2751)))

(declare-fun b_lambda!2753 () Bool)

(assert (= b_lambda!2731 (or b!150772 b_lambda!2753)))

(declare-fun bs!13792 () Bool)

(declare-fun d!36157 () Bool)

(assert (= bs!13792 (and d!36157 b!150772)))

(assert (=> bs!13792 (= (dynLambda!915 lambda!3862 (h!8020 tokens!465)) (not (isSeparator!455 (rule!962 (h!8020 tokens!465)))))))

(assert (=> b!150986 d!36157))

(declare-fun b_lambda!2755 () Bool)

(assert (= b_lambda!2725 (or (and b!150757 b_free!5499 (= (toChars!949 (transformation!455 (rule!962 (h!8020 tokens!465)))) (toChars!949 (transformation!455 (rule!962 separatorToken!170))))) (and b!151230 b_free!5515 (= (toChars!949 (transformation!455 (rule!962 (h!8020 (t!24769 tokens!465))))) (toChars!949 (transformation!455 (rule!962 separatorToken!170))))) (and b!151202 b_free!5511 (= (toChars!949 (transformation!455 (h!8021 (t!24770 rules!1920)))) (toChars!949 (transformation!455 (rule!962 separatorToken!170))))) (and b!150754 b_free!5491 (= (toChars!949 (transformation!455 (h!8021 rules!1920))) (toChars!949 (transformation!455 (rule!962 separatorToken!170))))) (and b!150761 b_free!5495) b_lambda!2755)))

(declare-fun b_lambda!2757 () Bool)

(assert (= b_lambda!2733 (or (and b!151202 b_free!5511 (= (toChars!949 (transformation!455 (h!8021 (t!24770 rules!1920)))) (toChars!949 (transformation!455 (rule!962 (h!8020 tokens!465)))))) (and b!150761 b_free!5495 (= (toChars!949 (transformation!455 (rule!962 separatorToken!170))) (toChars!949 (transformation!455 (rule!962 (h!8020 tokens!465)))))) (and b!150754 b_free!5491 (= (toChars!949 (transformation!455 (h!8021 rules!1920))) (toChars!949 (transformation!455 (rule!962 (h!8020 tokens!465)))))) (and b!150757 b_free!5499) (and b!151230 b_free!5515 (= (toChars!949 (transformation!455 (rule!962 (h!8020 (t!24769 tokens!465))))) (toChars!949 (transformation!455 (rule!962 (h!8020 tokens!465)))))) b_lambda!2757)))

(check-sat (not b!151150) (not b!151153) (not b!151166) (not d!36079) (not b!150901) (not b_lambda!2753) b_and!8645 (not b_next!5495) (not b!151206) (not tb!5057) (not b!151001) (not b!150975) (not b!151190) (not b!151209) (not b_next!5497) (not b!151155) (not bm!6084) (not b_next!5489) (not bm!6102) (not b!151145) (not b!151169) (not b!151167) b_and!8705 b_and!8681 (not b!151228) (not b!151216) (not b!151165) (not b!150978) (not d!36083) (not b!151210) (not b!150989) (not b!150838) (not b!151004) (not d!36121) b_and!8679 (not d!36093) (not d!36045) (not b!151012) b_and!8641 (not d!36075) (not b!150988) b_and!8637 (not b_lambda!2751) (not b!150916) (not b!151204) (not b!151215) (not b!151229) (not b!151191) (not b!151032) (not b!151177) (not b!151189) (not b!151034) (not b!151201) (not b_lambda!2757) b_and!8707 (not b!150862) (not bm!6104) (not b_next!5513) (not b!151200) (not d!36101) (not b!150847) (not b_next!5509) (not b!151009) (not b!151205) (not b!150967) (not b_next!5493) (not b_next!5511) (not b_lambda!2749) (not b!150966) (not b!151156) (not d!36133) (not b!150903) (not b!151161) (not bm!6083) b_and!8711 (not b_lambda!2755) (not d!36117) (not bm!6108) (not b!151008) (not b_next!5515) (not b!150971) (not d!36097) (not b!150856) (not b!150972) (not d!36077) (not b!151148) (not bm!6106) (not d!36135) tp_is_empty!1611 (not b!150902) (not b!150987) (not b!150857) (not d!36089) (not b!151154) (not b!151208) (not bm!6110) (not b!150973) (not bm!6085) (not b_next!5491) (not b!151033) (not b_next!5499) (not d!36123) (not bm!6109) b_and!8683 (not d!36099) b_and!8709 (not d!36111) (not b!151176) (not b!151006) (not b!151003) (not tb!5063) (not b!151013) (not b!151014) (not b!151160) (not b!150981) (not d!36073) (not b!151227) (not d!36091) (not b!150915) (not d!36107))
(check-sat b_and!8645 (not b_next!5495) (not b_next!5497) (not b_next!5489) b_and!8679 (not b_next!5509) b_and!8711 (not b_next!5515) b_and!8683 b_and!8709 b_and!8705 b_and!8681 b_and!8641 b_and!8637 b_and!8707 (not b_next!5513) (not b_next!5493) (not b_next!5511) (not b_next!5491) (not b_next!5499))
(get-model)

(declare-fun lt!44100 () Bool)

(declare-fun d!36179 () Bool)

(assert (=> d!36179 (= lt!44100 (isEmpty!1035 (list!917 (_2!1500 (lex!167 thiss!17480 rules!1920 (print!92 thiss!17480 (singletonSeq!25 separatorToken!170)))))))))

(declare-fun isEmpty!1037 (Conc!732) Bool)

(assert (=> d!36179 (= lt!44100 (isEmpty!1037 (c!30493 (_2!1500 (lex!167 thiss!17480 rules!1920 (print!92 thiss!17480 (singletonSeq!25 separatorToken!170)))))))))

(assert (=> d!36179 (= (isEmpty!1036 (_2!1500 (lex!167 thiss!17480 rules!1920 (print!92 thiss!17480 (singletonSeq!25 separatorToken!170))))) lt!44100)))

(declare-fun bs!13796 () Bool)

(assert (= bs!13796 d!36179))

(declare-fun m!135179 () Bool)

(assert (=> bs!13796 m!135179))

(assert (=> bs!13796 m!135179))

(declare-fun m!135181 () Bool)

(assert (=> bs!13796 m!135181))

(declare-fun m!135183 () Bool)

(assert (=> bs!13796 m!135183))

(assert (=> b!151034 d!36179))

(declare-fun d!36181 () Bool)

(declare-fun e!90385 () Bool)

(assert (=> d!36181 e!90385))

(declare-fun res!69316 () Bool)

(assert (=> d!36181 (=> (not res!69316) (not e!90385))))

(declare-fun e!90383 () Bool)

(assert (=> d!36181 (= res!69316 e!90383)))

(declare-fun c!30581 () Bool)

(declare-fun lt!44130 () tuple2!2568)

(assert (=> d!36181 (= c!30581 (> (size!2241 (_1!1500 lt!44130)) 0))))

(declare-fun lexTailRecV2!81 (LexerInterface!341 List!2634 BalanceConc!1472 BalanceConc!1472 BalanceConc!1472 BalanceConc!1474) tuple2!2568)

(assert (=> d!36181 (= lt!44130 (lexTailRecV2!81 thiss!17480 rules!1920 (print!92 thiss!17480 (singletonSeq!25 separatorToken!170)) (BalanceConc!1473 Empty!732) (print!92 thiss!17480 (singletonSeq!25 separatorToken!170)) (BalanceConc!1475 Empty!733)))))

(assert (=> d!36181 (= (lex!167 thiss!17480 rules!1920 (print!92 thiss!17480 (singletonSeq!25 separatorToken!170))) lt!44130)))

(declare-fun b!151266 () Bool)

(declare-fun e!90384 () Bool)

(declare-fun isEmpty!1038 (BalanceConc!1474) Bool)

(assert (=> b!151266 (= e!90384 (not (isEmpty!1038 (_1!1500 lt!44130))))))

(declare-fun b!151267 () Bool)

(declare-datatypes ((tuple2!2572 0))(
  ( (tuple2!2573 (_1!1502 List!2633) (_2!1502 List!2631)) )
))
(declare-fun lexList!94 (LexerInterface!341 List!2634 List!2631) tuple2!2572)

(assert (=> b!151267 (= e!90385 (= (list!917 (_2!1500 lt!44130)) (_2!1502 (lexList!94 thiss!17480 rules!1920 (list!917 (print!92 thiss!17480 (singletonSeq!25 separatorToken!170)))))))))

(declare-fun b!151268 () Bool)

(assert (=> b!151268 (= e!90383 (= (_2!1500 lt!44130) (print!92 thiss!17480 (singletonSeq!25 separatorToken!170))))))

(declare-fun b!151269 () Bool)

(declare-fun res!69318 () Bool)

(assert (=> b!151269 (=> (not res!69318) (not e!90385))))

(assert (=> b!151269 (= res!69318 (= (list!920 (_1!1500 lt!44130)) (_1!1502 (lexList!94 thiss!17480 rules!1920 (list!917 (print!92 thiss!17480 (singletonSeq!25 separatorToken!170)))))))))

(declare-fun b!151270 () Bool)

(assert (=> b!151270 (= e!90383 e!90384)))

(declare-fun res!69317 () Bool)

(declare-fun size!2242 (BalanceConc!1472) Int)

(assert (=> b!151270 (= res!69317 (< (size!2242 (_2!1500 lt!44130)) (size!2242 (print!92 thiss!17480 (singletonSeq!25 separatorToken!170)))))))

(assert (=> b!151270 (=> (not res!69317) (not e!90384))))

(assert (= (and d!36181 c!30581) b!151270))

(assert (= (and d!36181 (not c!30581)) b!151268))

(assert (= (and b!151270 res!69317) b!151266))

(assert (= (and d!36181 res!69316) b!151269))

(assert (= (and b!151269 res!69318) b!151267))

(declare-fun m!135231 () Bool)

(assert (=> b!151270 m!135231))

(assert (=> b!151270 m!134963))

(declare-fun m!135233 () Bool)

(assert (=> b!151270 m!135233))

(declare-fun m!135235 () Bool)

(assert (=> b!151267 m!135235))

(assert (=> b!151267 m!134963))

(declare-fun m!135237 () Bool)

(assert (=> b!151267 m!135237))

(assert (=> b!151267 m!135237))

(declare-fun m!135239 () Bool)

(assert (=> b!151267 m!135239))

(declare-fun m!135241 () Bool)

(assert (=> b!151266 m!135241))

(declare-fun m!135243 () Bool)

(assert (=> d!36181 m!135243))

(assert (=> d!36181 m!134963))

(assert (=> d!36181 m!134963))

(declare-fun m!135245 () Bool)

(assert (=> d!36181 m!135245))

(declare-fun m!135247 () Bool)

(assert (=> b!151269 m!135247))

(assert (=> b!151269 m!134963))

(assert (=> b!151269 m!135237))

(assert (=> b!151269 m!135237))

(assert (=> b!151269 m!135239))

(assert (=> b!151034 d!36181))

(declare-fun d!36189 () Bool)

(declare-fun lt!44133 () BalanceConc!1472)

(declare-fun printList!50 (LexerInterface!341 List!2633) List!2631)

(assert (=> d!36189 (= (list!917 lt!44133) (printList!50 thiss!17480 (list!920 (singletonSeq!25 separatorToken!170))))))

(assert (=> d!36189 (= lt!44133 (printTailRec!55 thiss!17480 (singletonSeq!25 separatorToken!170) 0 (BalanceConc!1473 Empty!732)))))

(assert (=> d!36189 (= (print!92 thiss!17480 (singletonSeq!25 separatorToken!170)) lt!44133)))

(declare-fun bs!13798 () Bool)

(assert (= bs!13798 d!36189))

(declare-fun m!135249 () Bool)

(assert (=> bs!13798 m!135249))

(assert (=> bs!13798 m!134961))

(assert (=> bs!13798 m!134971))

(assert (=> bs!13798 m!134971))

(declare-fun m!135251 () Bool)

(assert (=> bs!13798 m!135251))

(assert (=> bs!13798 m!134961))

(declare-fun m!135253 () Bool)

(assert (=> bs!13798 m!135253))

(assert (=> b!151034 d!36189))

(declare-fun d!36191 () Bool)

(declare-fun e!90388 () Bool)

(assert (=> d!36191 e!90388))

(declare-fun res!69321 () Bool)

(assert (=> d!36191 (=> (not res!69321) (not e!90388))))

(declare-fun lt!44136 () BalanceConc!1474)

(assert (=> d!36191 (= res!69321 (= (list!920 lt!44136) (Cons!2623 separatorToken!170 Nil!2623)))))

(declare-fun singleton!18 (Token!654) BalanceConc!1474)

(assert (=> d!36191 (= lt!44136 (singleton!18 separatorToken!170))))

(assert (=> d!36191 (= (singletonSeq!25 separatorToken!170) lt!44136)))

(declare-fun b!151273 () Bool)

(declare-fun isBalanced!205 (Conc!733) Bool)

(assert (=> b!151273 (= e!90388 (isBalanced!205 (c!30495 lt!44136)))))

(assert (= (and d!36191 res!69321) b!151273))

(declare-fun m!135255 () Bool)

(assert (=> d!36191 m!135255))

(declare-fun m!135257 () Bool)

(assert (=> d!36191 m!135257))

(declare-fun m!135259 () Bool)

(assert (=> b!151273 m!135259))

(assert (=> b!151034 d!36191))

(declare-fun d!36193 () Bool)

(declare-fun res!69326 () Bool)

(declare-fun e!90393 () Bool)

(assert (=> d!36193 (=> res!69326 e!90393)))

(assert (=> d!36193 (= res!69326 ((_ is Nil!2624) rules!1920))))

(assert (=> d!36193 (= (noDuplicateTag!123 thiss!17480 rules!1920 Nil!2626) e!90393)))

(declare-fun b!151278 () Bool)

(declare-fun e!90394 () Bool)

(assert (=> b!151278 (= e!90393 e!90394)))

(declare-fun res!69327 () Bool)

(assert (=> b!151278 (=> (not res!69327) (not e!90394))))

(declare-fun contains!415 (List!2636 String!3465) Bool)

(assert (=> b!151278 (= res!69327 (not (contains!415 Nil!2626 (tag!633 (h!8021 rules!1920)))))))

(declare-fun b!151279 () Bool)

(assert (=> b!151279 (= e!90394 (noDuplicateTag!123 thiss!17480 (t!24770 rules!1920) (Cons!2626 (tag!633 (h!8021 rules!1920)) Nil!2626)))))

(assert (= (and d!36193 (not res!69326)) b!151278))

(assert (= (and b!151278 res!69327) b!151279))

(declare-fun m!135261 () Bool)

(assert (=> b!151278 m!135261))

(declare-fun m!135263 () Bool)

(assert (=> b!151279 m!135263))

(assert (=> b!151012 d!36193))

(declare-fun d!36195 () Bool)

(assert (=> d!36195 (= (list!917 call!6087) (list!921 (c!30493 call!6087)))))

(declare-fun bs!13799 () Bool)

(assert (= bs!13799 d!36195))

(declare-fun m!135265 () Bool)

(assert (=> bs!13799 m!135265))

(assert (=> b!150966 d!36195))

(declare-fun d!36197 () Bool)

(declare-fun lt!44139 () Token!654)

(assert (=> d!36197 (= lt!44139 (apply!342 (list!920 lt!43920) 0))))

(declare-fun apply!344 (Conc!733 Int) Token!654)

(assert (=> d!36197 (= lt!44139 (apply!344 (c!30495 lt!43920) 0))))

(declare-fun e!90397 () Bool)

(assert (=> d!36197 e!90397))

(declare-fun res!69330 () Bool)

(assert (=> d!36197 (=> (not res!69330) (not e!90397))))

(assert (=> d!36197 (= res!69330 (<= 0 0))))

(assert (=> d!36197 (= (apply!341 lt!43920 0) lt!44139)))

(declare-fun b!151282 () Bool)

(assert (=> b!151282 (= e!90397 (< 0 (size!2241 lt!43920)))))

(assert (= (and d!36197 res!69330) b!151282))

(assert (=> d!36197 m!134737))

(assert (=> d!36197 m!134737))

(declare-fun m!135267 () Bool)

(assert (=> d!36197 m!135267))

(declare-fun m!135269 () Bool)

(assert (=> d!36197 m!135269))

(assert (=> b!151282 m!135085))

(assert (=> bm!6102 d!36197))

(declare-fun bs!13800 () Bool)

(declare-fun d!36199 () Bool)

(assert (= bs!13800 (and d!36199 d!36079)))

(declare-fun lambda!3902 () Int)

(assert (=> bs!13800 (= lambda!3902 lambda!3876)))

(declare-fun bs!13801 () Bool)

(assert (= bs!13801 (and d!36199 b!151166)))

(assert (=> bs!13801 (= lambda!3902 lambda!3898)))

(declare-fun bs!13802 () Bool)

(assert (= bs!13802 (and d!36199 d!36045)))

(assert (=> bs!13802 (= lambda!3902 lambda!3869)))

(declare-fun bs!13803 () Bool)

(assert (= bs!13803 (and d!36199 d!36135)))

(assert (=> bs!13803 (not (= lambda!3902 lambda!3896))))

(declare-fun bs!13804 () Bool)

(assert (= bs!13804 (and d!36199 b!150972)))

(assert (=> bs!13804 (= lambda!3902 lambda!3882)))

(declare-fun bs!13805 () Bool)

(assert (= bs!13805 (and d!36199 b!151155)))

(assert (=> bs!13805 (= lambda!3902 lambda!3897)))

(declare-fun bs!13806 () Bool)

(assert (= bs!13806 (and d!36199 b!150772)))

(assert (=> bs!13806 (not (= lambda!3902 lambda!3862))))

(declare-fun b!151287 () Bool)

(declare-fun e!90402 () Bool)

(assert (=> b!151287 (= e!90402 true)))

(declare-fun b!151286 () Bool)

(declare-fun e!90401 () Bool)

(assert (=> b!151286 (= e!90401 e!90402)))

(declare-fun b!151285 () Bool)

(declare-fun e!90400 () Bool)

(assert (=> b!151285 (= e!90400 e!90401)))

(assert (=> d!36199 e!90400))

(assert (= b!151286 b!151287))

(assert (= b!151285 b!151286))

(assert (= (and d!36199 ((_ is Cons!2624) rules!1920)) b!151285))

(assert (=> b!151287 (< (dynLambda!911 order!1295 (toValue!1090 (transformation!455 (h!8021 rules!1920)))) (dynLambda!912 order!1297 lambda!3902))))

(assert (=> b!151287 (< (dynLambda!913 order!1299 (toChars!949 (transformation!455 (h!8021 rules!1920)))) (dynLambda!912 order!1297 lambda!3902))))

(assert (=> d!36199 true))

(declare-fun lt!44140 () Bool)

(assert (=> d!36199 (= lt!44140 (forall!443 (t!24769 (t!24769 tokens!465)) lambda!3902))))

(declare-fun e!90398 () Bool)

(assert (=> d!36199 (= lt!44140 e!90398)))

(declare-fun res!69331 () Bool)

(assert (=> d!36199 (=> res!69331 e!90398)))

(assert (=> d!36199 (= res!69331 (not ((_ is Cons!2623) (t!24769 (t!24769 tokens!465)))))))

(assert (=> d!36199 (not (isEmpty!1032 rules!1920))))

(assert (=> d!36199 (= (rulesProduceEachTokenIndividuallyList!81 thiss!17480 rules!1920 (t!24769 (t!24769 tokens!465))) lt!44140)))

(declare-fun b!151283 () Bool)

(declare-fun e!90399 () Bool)

(assert (=> b!151283 (= e!90398 e!90399)))

(declare-fun res!69332 () Bool)

(assert (=> b!151283 (=> (not res!69332) (not e!90399))))

(assert (=> b!151283 (= res!69332 (rulesProduceIndividualToken!90 thiss!17480 rules!1920 (h!8020 (t!24769 (t!24769 tokens!465)))))))

(declare-fun b!151284 () Bool)

(assert (=> b!151284 (= e!90399 (rulesProduceEachTokenIndividuallyList!81 thiss!17480 rules!1920 (t!24769 (t!24769 (t!24769 tokens!465)))))))

(assert (= (and d!36199 (not res!69331)) b!151283))

(assert (= (and b!151283 res!69332) b!151284))

(declare-fun m!135271 () Bool)

(assert (=> d!36199 m!135271))

(assert (=> d!36199 m!134617))

(declare-fun m!135273 () Bool)

(assert (=> b!151283 m!135273))

(declare-fun m!135275 () Bool)

(assert (=> b!151284 m!135275))

(assert (=> b!150902 d!36199))

(assert (=> b!151167 d!36089))

(declare-fun d!36201 () Bool)

(declare-fun isBalanced!207 (Conc!732) Bool)

(assert (=> d!36201 (= (inv!3420 (dynLambda!914 (toChars!949 (transformation!455 (rule!962 (h!8020 tokens!465)))) (value!17283 (h!8020 tokens!465)))) (isBalanced!207 (c!30493 (dynLambda!914 (toChars!949 (transformation!455 (rule!962 (h!8020 tokens!465)))) (value!17283 (h!8020 tokens!465))))))))

(declare-fun bs!13807 () Bool)

(assert (= bs!13807 d!36201))

(declare-fun m!135277 () Bool)

(assert (=> bs!13807 m!135277))

(assert (=> tb!5063 d!36201))

(declare-fun d!36203 () Bool)

(assert (=> d!36203 true))

(declare-fun lt!44143 () Bool)

(declare-fun rulesValidInductive!95 (LexerInterface!341 List!2634) Bool)

(assert (=> d!36203 (= lt!44143 (rulesValidInductive!95 thiss!17480 rules!1920))))

(declare-fun lambda!3905 () Int)

(declare-fun forall!446 (List!2634 Int) Bool)

(assert (=> d!36203 (= lt!44143 (forall!446 rules!1920 lambda!3905))))

(assert (=> d!36203 (= (rulesValid!123 thiss!17480 rules!1920) lt!44143)))

(declare-fun bs!13808 () Bool)

(assert (= bs!13808 d!36203))

(declare-fun m!135279 () Bool)

(assert (=> bs!13808 m!135279))

(declare-fun m!135281 () Bool)

(assert (=> bs!13808 m!135281))

(assert (=> d!36117 d!36203))

(declare-fun d!36205 () Bool)

(declare-fun lt!44144 () Token!654)

(assert (=> d!36205 (= lt!44144 (apply!342 (list!920 (_1!1500 lt!44028)) 0))))

(assert (=> d!36205 (= lt!44144 (apply!344 (c!30495 (_1!1500 lt!44028)) 0))))

(declare-fun e!90403 () Bool)

(assert (=> d!36205 e!90403))

(declare-fun res!69333 () Bool)

(assert (=> d!36205 (=> (not res!69333) (not e!90403))))

(assert (=> d!36205 (= res!69333 (<= 0 0))))

(assert (=> d!36205 (= (apply!341 (_1!1500 lt!44028) 0) lt!44144)))

(declare-fun b!151290 () Bool)

(assert (=> b!151290 (= e!90403 (< 0 (size!2241 (_1!1500 lt!44028))))))

(assert (= (and d!36205 res!69333) b!151290))

(declare-fun m!135283 () Bool)

(assert (=> d!36205 m!135283))

(assert (=> d!36205 m!135283))

(declare-fun m!135285 () Bool)

(assert (=> d!36205 m!135285))

(declare-fun m!135287 () Bool)

(assert (=> d!36205 m!135287))

(assert (=> b!151290 m!134969))

(assert (=> b!151032 d!36205))

(declare-fun d!36207 () Bool)

(declare-fun lt!44147 () Int)

(assert (=> d!36207 (>= lt!44147 0)))

(declare-fun e!90406 () Int)

(assert (=> d!36207 (= lt!44147 e!90406)))

(declare-fun c!30584 () Bool)

(assert (=> d!36207 (= c!30584 ((_ is Nil!2621) lt!43979))))

(assert (=> d!36207 (= (size!2240 lt!43979) lt!44147)))

(declare-fun b!151295 () Bool)

(assert (=> b!151295 (= e!90406 0)))

(declare-fun b!151296 () Bool)

(assert (=> b!151296 (= e!90406 (+ 1 (size!2240 (t!24767 lt!43979))))))

(assert (= (and d!36207 c!30584) b!151295))

(assert (= (and d!36207 (not c!30584)) b!151296))

(declare-fun m!135289 () Bool)

(assert (=> b!151296 m!135289))

(assert (=> b!150916 d!36207))

(declare-fun d!36209 () Bool)

(declare-fun lt!44148 () Int)

(assert (=> d!36209 (>= lt!44148 0)))

(declare-fun e!90407 () Int)

(assert (=> d!36209 (= lt!44148 e!90407)))

(declare-fun c!30585 () Bool)

(assert (=> d!36209 (= c!30585 ((_ is Nil!2621) (list!917 (charsOf!110 separatorToken!170))))))

(assert (=> d!36209 (= (size!2240 (list!917 (charsOf!110 separatorToken!170))) lt!44148)))

(declare-fun b!151297 () Bool)

(assert (=> b!151297 (= e!90407 0)))

(declare-fun b!151298 () Bool)

(assert (=> b!151298 (= e!90407 (+ 1 (size!2240 (t!24767 (list!917 (charsOf!110 separatorToken!170))))))))

(assert (= (and d!36209 c!30585) b!151297))

(assert (= (and d!36209 (not c!30585)) b!151298))

(declare-fun m!135291 () Bool)

(assert (=> b!151298 m!135291))

(assert (=> b!150916 d!36209))

(declare-fun d!36211 () Bool)

(declare-fun lt!44149 () Int)

(assert (=> d!36211 (>= lt!44149 0)))

(declare-fun e!90408 () Int)

(assert (=> d!36211 (= lt!44149 e!90408)))

(declare-fun c!30586 () Bool)

(assert (=> d!36211 (= c!30586 ((_ is Nil!2621) (printWithSeparatorTokenWhenNeededList!34 thiss!17480 rules!1920 (t!24769 tokens!465) separatorToken!170)))))

(assert (=> d!36211 (= (size!2240 (printWithSeparatorTokenWhenNeededList!34 thiss!17480 rules!1920 (t!24769 tokens!465) separatorToken!170)) lt!44149)))

(declare-fun b!151299 () Bool)

(assert (=> b!151299 (= e!90408 0)))

(declare-fun b!151300 () Bool)

(assert (=> b!151300 (= e!90408 (+ 1 (size!2240 (t!24767 (printWithSeparatorTokenWhenNeededList!34 thiss!17480 rules!1920 (t!24769 tokens!465) separatorToken!170)))))))

(assert (= (and d!36211 c!30586) b!151299))

(assert (= (and d!36211 (not c!30586)) b!151300))

(declare-fun m!135293 () Bool)

(assert (=> b!151300 m!135293))

(assert (=> b!150916 d!36211))

(declare-fun bs!13809 () Bool)

(declare-fun d!36213 () Bool)

(assert (= bs!13809 (and d!36213 d!36079)))

(declare-fun lambda!3906 () Int)

(assert (=> bs!13809 (= lambda!3906 lambda!3876)))

(declare-fun bs!13810 () Bool)

(assert (= bs!13810 (and d!36213 b!151166)))

(assert (=> bs!13810 (= lambda!3906 lambda!3898)))

(declare-fun bs!13811 () Bool)

(assert (= bs!13811 (and d!36213 d!36045)))

(assert (=> bs!13811 (= lambda!3906 lambda!3869)))

(declare-fun bs!13812 () Bool)

(assert (= bs!13812 (and d!36213 d!36199)))

(assert (=> bs!13812 (= lambda!3906 lambda!3902)))

(declare-fun bs!13813 () Bool)

(assert (= bs!13813 (and d!36213 d!36135)))

(assert (=> bs!13813 (not (= lambda!3906 lambda!3896))))

(declare-fun bs!13814 () Bool)

(assert (= bs!13814 (and d!36213 b!150972)))

(assert (=> bs!13814 (= lambda!3906 lambda!3882)))

(declare-fun bs!13815 () Bool)

(assert (= bs!13815 (and d!36213 b!151155)))

(assert (=> bs!13815 (= lambda!3906 lambda!3897)))

(declare-fun bs!13816 () Bool)

(assert (= bs!13816 (and d!36213 b!150772)))

(assert (=> bs!13816 (not (= lambda!3906 lambda!3862))))

(declare-fun b!151305 () Bool)

(declare-fun e!90413 () Bool)

(assert (=> b!151305 (= e!90413 true)))

(declare-fun b!151304 () Bool)

(declare-fun e!90412 () Bool)

(assert (=> b!151304 (= e!90412 e!90413)))

(declare-fun b!151303 () Bool)

(declare-fun e!90411 () Bool)

(assert (=> b!151303 (= e!90411 e!90412)))

(assert (=> d!36213 e!90411))

(assert (= b!151304 b!151305))

(assert (= b!151303 b!151304))

(assert (= (and d!36213 ((_ is Cons!2624) rules!1920)) b!151303))

(assert (=> b!151305 (< (dynLambda!911 order!1295 (toValue!1090 (transformation!455 (h!8021 rules!1920)))) (dynLambda!912 order!1297 lambda!3906))))

(assert (=> b!151305 (< (dynLambda!913 order!1299 (toChars!949 (transformation!455 (h!8021 rules!1920)))) (dynLambda!912 order!1297 lambda!3906))))

(assert (=> d!36213 true))

(declare-fun lt!44150 () Bool)

(assert (=> d!36213 (= lt!44150 (forall!443 (list!920 lt!43920) lambda!3906))))

(declare-fun e!90409 () Bool)

(assert (=> d!36213 (= lt!44150 e!90409)))

(declare-fun res!69334 () Bool)

(assert (=> d!36213 (=> res!69334 e!90409)))

(assert (=> d!36213 (= res!69334 (not ((_ is Cons!2623) (list!920 lt!43920))))))

(assert (=> d!36213 (not (isEmpty!1032 rules!1920))))

(assert (=> d!36213 (= (rulesProduceEachTokenIndividuallyList!81 thiss!17480 rules!1920 (list!920 lt!43920)) lt!44150)))

(declare-fun b!151301 () Bool)

(declare-fun e!90410 () Bool)

(assert (=> b!151301 (= e!90409 e!90410)))

(declare-fun res!69335 () Bool)

(assert (=> b!151301 (=> (not res!69335) (not e!90410))))

(assert (=> b!151301 (= res!69335 (rulesProduceIndividualToken!90 thiss!17480 rules!1920 (h!8020 (list!920 lt!43920))))))

(declare-fun b!151302 () Bool)

(assert (=> b!151302 (= e!90410 (rulesProduceEachTokenIndividuallyList!81 thiss!17480 rules!1920 (t!24769 (list!920 lt!43920))))))

(assert (= (and d!36213 (not res!69334)) b!151301))

(assert (= (and b!151301 res!69335) b!151302))

(assert (=> d!36213 m!134737))

(declare-fun m!135295 () Bool)

(assert (=> d!36213 m!135295))

(assert (=> d!36213 m!134617))

(declare-fun m!135297 () Bool)

(assert (=> b!151301 m!135297))

(declare-fun m!135299 () Bool)

(assert (=> b!151302 m!135299))

(assert (=> b!150838 d!36213))

(declare-fun d!36215 () Bool)

(declare-fun list!922 (Conc!733) List!2633)

(assert (=> d!36215 (= (list!920 lt!43920) (list!922 (c!30495 lt!43920)))))

(declare-fun bs!13817 () Bool)

(assert (= bs!13817 d!36215))

(declare-fun m!135301 () Bool)

(assert (=> bs!13817 m!135301))

(assert (=> b!150838 d!36215))

(declare-fun d!36217 () Bool)

(assert (=> d!36217 true))

(declare-fun order!1309 () Int)

(declare-fun lambda!3909 () Int)

(declare-fun dynLambda!917 (Int Int) Int)

(assert (=> d!36217 (< (dynLambda!911 order!1295 (toValue!1090 (transformation!455 (rule!962 (h!8020 tokens!465))))) (dynLambda!917 order!1309 lambda!3909))))

(declare-fun Forall2!98 (Int) Bool)

(assert (=> d!36217 (= (equivClasses!140 (toChars!949 (transformation!455 (rule!962 (h!8020 tokens!465)))) (toValue!1090 (transformation!455 (rule!962 (h!8020 tokens!465))))) (Forall2!98 lambda!3909))))

(declare-fun bs!13818 () Bool)

(assert (= bs!13818 d!36217))

(declare-fun m!135303 () Bool)

(assert (=> bs!13818 m!135303))

(assert (=> b!150989 d!36217))

(declare-fun d!36219 () Bool)

(declare-fun c!30589 () Bool)

(assert (=> d!36219 (= c!30589 ((_ is Node!732) (c!30493 (dynLambda!914 (toChars!949 (transformation!455 (rule!962 separatorToken!170))) (value!17283 separatorToken!170)))))))

(declare-fun e!90420 () Bool)

(assert (=> d!36219 (= (inv!3419 (c!30493 (dynLambda!914 (toChars!949 (transformation!455 (rule!962 separatorToken!170))) (value!17283 separatorToken!170)))) e!90420)))

(declare-fun b!151316 () Bool)

(declare-fun inv!3421 (Conc!732) Bool)

(assert (=> b!151316 (= e!90420 (inv!3421 (c!30493 (dynLambda!914 (toChars!949 (transformation!455 (rule!962 separatorToken!170))) (value!17283 separatorToken!170)))))))

(declare-fun b!151317 () Bool)

(declare-fun e!90421 () Bool)

(assert (=> b!151317 (= e!90420 e!90421)))

(declare-fun res!69340 () Bool)

(assert (=> b!151317 (= res!69340 (not ((_ is Leaf!1299) (c!30493 (dynLambda!914 (toChars!949 (transformation!455 (rule!962 separatorToken!170))) (value!17283 separatorToken!170))))))))

(assert (=> b!151317 (=> res!69340 e!90421)))

(declare-fun b!151318 () Bool)

(declare-fun inv!3422 (Conc!732) Bool)

(assert (=> b!151318 (= e!90421 (inv!3422 (c!30493 (dynLambda!914 (toChars!949 (transformation!455 (rule!962 separatorToken!170))) (value!17283 separatorToken!170)))))))

(assert (= (and d!36219 c!30589) b!151316))

(assert (= (and d!36219 (not c!30589)) b!151317))

(assert (= (and b!151317 (not res!69340)) b!151318))

(declare-fun m!135305 () Bool)

(assert (=> b!151316 m!135305))

(declare-fun m!135307 () Bool)

(assert (=> b!151318 m!135307))

(assert (=> b!150862 d!36219))

(declare-fun d!36221 () Bool)

(declare-fun lt!44151 () Int)

(assert (=> d!36221 (>= lt!44151 0)))

(declare-fun e!90422 () Int)

(assert (=> d!36221 (= lt!44151 e!90422)))

(declare-fun c!30590 () Bool)

(assert (=> d!36221 (= c!30590 ((_ is Nil!2621) (originalCharacters!498 separatorToken!170)))))

(assert (=> d!36221 (= (size!2240 (originalCharacters!498 separatorToken!170)) lt!44151)))

(declare-fun b!151319 () Bool)

(assert (=> b!151319 (= e!90422 0)))

(declare-fun b!151320 () Bool)

(assert (=> b!151320 (= e!90422 (+ 1 (size!2240 (t!24767 (originalCharacters!498 separatorToken!170)))))))

(assert (= (and d!36221 c!30590) b!151319))

(assert (= (and d!36221 (not c!30590)) b!151320))

(declare-fun m!135309 () Bool)

(assert (=> b!151320 m!135309))

(assert (=> b!150857 d!36221))

(declare-fun bs!13819 () Bool)

(declare-fun d!36223 () Bool)

(assert (= bs!13819 (and d!36223 d!36217)))

(declare-fun lambda!3910 () Int)

(assert (=> bs!13819 (= (= (toValue!1090 (transformation!455 (h!8021 rules!1920))) (toValue!1090 (transformation!455 (rule!962 (h!8020 tokens!465))))) (= lambda!3910 lambda!3909))))

(assert (=> d!36223 true))

(assert (=> d!36223 (< (dynLambda!911 order!1295 (toValue!1090 (transformation!455 (h!8021 rules!1920)))) (dynLambda!917 order!1309 lambda!3910))))

(assert (=> d!36223 (= (equivClasses!140 (toChars!949 (transformation!455 (h!8021 rules!1920))) (toValue!1090 (transformation!455 (h!8021 rules!1920)))) (Forall2!98 lambda!3910))))

(declare-fun bs!13820 () Bool)

(assert (= bs!13820 d!36223))

(declare-fun m!135311 () Bool)

(assert (=> bs!13820 m!135311))

(assert (=> b!150981 d!36223))

(declare-fun b!151321 () Bool)

(declare-fun e!90424 () Bool)

(declare-fun e!90425 () Bool)

(assert (=> b!151321 (= e!90424 e!90425)))

(declare-fun c!30591 () Bool)

(assert (=> b!151321 (= c!30591 ((_ is IntegerValue!1432) (value!17283 (h!8020 (t!24769 tokens!465)))))))

(declare-fun d!36225 () Bool)

(declare-fun c!30592 () Bool)

(assert (=> d!36225 (= c!30592 ((_ is IntegerValue!1431) (value!17283 (h!8020 (t!24769 tokens!465)))))))

(assert (=> d!36225 (= (inv!21 (value!17283 (h!8020 (t!24769 tokens!465)))) e!90424)))

(declare-fun b!151322 () Bool)

(assert (=> b!151322 (= e!90424 (inv!16 (value!17283 (h!8020 (t!24769 tokens!465)))))))

(declare-fun b!151323 () Bool)

(declare-fun res!69341 () Bool)

(declare-fun e!90423 () Bool)

(assert (=> b!151323 (=> res!69341 e!90423)))

(assert (=> b!151323 (= res!69341 (not ((_ is IntegerValue!1433) (value!17283 (h!8020 (t!24769 tokens!465))))))))

(assert (=> b!151323 (= e!90425 e!90423)))

(declare-fun b!151324 () Bool)

(assert (=> b!151324 (= e!90423 (inv!15 (value!17283 (h!8020 (t!24769 tokens!465)))))))

(declare-fun b!151325 () Bool)

(assert (=> b!151325 (= e!90425 (inv!17 (value!17283 (h!8020 (t!24769 tokens!465)))))))

(assert (= (and d!36225 c!30592) b!151322))

(assert (= (and d!36225 (not c!30592)) b!151321))

(assert (= (and b!151321 c!30591) b!151325))

(assert (= (and b!151321 (not c!30591)) b!151323))

(assert (= (and b!151323 (not res!69341)) b!151324))

(declare-fun m!135313 () Bool)

(assert (=> b!151322 m!135313))

(declare-fun m!135315 () Bool)

(assert (=> b!151324 m!135315))

(declare-fun m!135317 () Bool)

(assert (=> b!151325 m!135317))

(assert (=> b!151228 d!36225))

(declare-fun d!36227 () Bool)

(declare-fun res!69342 () Bool)

(declare-fun e!90426 () Bool)

(assert (=> d!36227 (=> res!69342 e!90426)))

(assert (=> d!36227 (= res!69342 ((_ is Nil!2623) (t!24769 tokens!465)))))

(assert (=> d!36227 (= (forall!443 (t!24769 tokens!465) lambda!3876) e!90426)))

(declare-fun b!151326 () Bool)

(declare-fun e!90427 () Bool)

(assert (=> b!151326 (= e!90426 e!90427)))

(declare-fun res!69343 () Bool)

(assert (=> b!151326 (=> (not res!69343) (not e!90427))))

(assert (=> b!151326 (= res!69343 (dynLambda!915 lambda!3876 (h!8020 (t!24769 tokens!465))))))

(declare-fun b!151327 () Bool)

(assert (=> b!151327 (= e!90427 (forall!443 (t!24769 (t!24769 tokens!465)) lambda!3876))))

(assert (= (and d!36227 (not res!69342)) b!151326))

(assert (= (and b!151326 res!69343) b!151327))

(declare-fun b_lambda!2761 () Bool)

(assert (=> (not b_lambda!2761) (not b!151326)))

(declare-fun m!135319 () Bool)

(assert (=> b!151326 m!135319))

(declare-fun m!135321 () Bool)

(assert (=> b!151327 m!135321))

(assert (=> d!36079 d!36227))

(assert (=> d!36079 d!36119))

(declare-fun d!36229 () Bool)

(assert (=> d!36229 (= (list!917 (ite c!30540 call!6088 e!90167)) (list!921 (c!30493 (ite c!30540 call!6088 e!90167))))))

(declare-fun bs!13821 () Bool)

(assert (= bs!13821 d!36229))

(declare-fun m!135323 () Bool)

(assert (=> bs!13821 m!135323))

(assert (=> bm!6083 d!36229))

(declare-fun e!90430 () Bool)

(declare-fun b!151339 () Bool)

(declare-fun lt!44154 () BalanceConc!1472)

(assert (=> b!151339 (= e!90430 (= (list!917 lt!44154) (++!560 (list!917 call!6108) (list!917 lt!44080))))))

(declare-fun b!151336 () Bool)

(declare-fun res!69355 () Bool)

(assert (=> b!151336 (=> (not res!69355) (not e!90430))))

(declare-fun ++!563 (Conc!732 Conc!732) Conc!732)

(assert (=> b!151336 (= res!69355 (isBalanced!207 (++!563 (c!30493 call!6108) (c!30493 lt!44080))))))

(declare-fun b!151338 () Bool)

(declare-fun res!69352 () Bool)

(assert (=> b!151338 (=> (not res!69352) (not e!90430))))

(declare-fun height!75 (Conc!732) Int)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!151338 (= res!69352 (>= (height!75 (++!563 (c!30493 call!6108) (c!30493 lt!44080))) (max!0 (height!75 (c!30493 call!6108)) (height!75 (c!30493 lt!44080)))))))

(declare-fun b!151337 () Bool)

(declare-fun res!69353 () Bool)

(assert (=> b!151337 (=> (not res!69353) (not e!90430))))

(assert (=> b!151337 (= res!69353 (<= (height!75 (++!563 (c!30493 call!6108) (c!30493 lt!44080))) (+ (max!0 (height!75 (c!30493 call!6108)) (height!75 (c!30493 lt!44080))) 1)))))

(declare-fun d!36231 () Bool)

(assert (=> d!36231 e!90430))

(declare-fun res!69354 () Bool)

(assert (=> d!36231 (=> (not res!69354) (not e!90430))))

(declare-fun appendAssocInst!16 (Conc!732 Conc!732) Bool)

(assert (=> d!36231 (= res!69354 (appendAssocInst!16 (c!30493 call!6108) (c!30493 lt!44080)))))

(assert (=> d!36231 (= lt!44154 (BalanceConc!1473 (++!563 (c!30493 call!6108) (c!30493 lt!44080))))))

(assert (=> d!36231 (= (++!562 call!6108 lt!44080) lt!44154)))

(assert (= (and d!36231 res!69354) b!151336))

(assert (= (and b!151336 res!69355) b!151337))

(assert (= (and b!151337 res!69353) b!151338))

(assert (= (and b!151338 res!69352) b!151339))

(declare-fun m!135325 () Bool)

(assert (=> b!151337 m!135325))

(declare-fun m!135327 () Bool)

(assert (=> b!151337 m!135327))

(declare-fun m!135329 () Bool)

(assert (=> b!151337 m!135329))

(declare-fun m!135331 () Bool)

(assert (=> b!151337 m!135331))

(declare-fun m!135333 () Bool)

(assert (=> b!151337 m!135333))

(assert (=> b!151337 m!135331))

(assert (=> b!151337 m!135329))

(assert (=> b!151337 m!135325))

(assert (=> b!151338 m!135325))

(assert (=> b!151338 m!135327))

(assert (=> b!151338 m!135329))

(assert (=> b!151338 m!135331))

(assert (=> b!151338 m!135333))

(assert (=> b!151338 m!135331))

(assert (=> b!151338 m!135329))

(assert (=> b!151338 m!135325))

(assert (=> b!151336 m!135325))

(assert (=> b!151336 m!135325))

(declare-fun m!135335 () Bool)

(assert (=> b!151336 m!135335))

(declare-fun m!135337 () Bool)

(assert (=> b!151339 m!135337))

(declare-fun m!135339 () Bool)

(assert (=> b!151339 m!135339))

(assert (=> b!151339 m!135103))

(assert (=> b!151339 m!135339))

(assert (=> b!151339 m!135103))

(declare-fun m!135341 () Bool)

(assert (=> b!151339 m!135341))

(declare-fun m!135343 () Bool)

(assert (=> d!36231 m!135343))

(assert (=> d!36231 m!135325))

(assert (=> b!151154 d!36231))

(declare-fun d!36233 () Bool)

(declare-fun charsToBigInt!0 (List!2632 Int) Int)

(assert (=> d!36233 (= (inv!15 (value!17283 (h!8020 tokens!465))) (= (charsToBigInt!0 (text!3788 (value!17283 (h!8020 tokens!465))) 0) (value!17278 (value!17283 (h!8020 tokens!465)))))))

(declare-fun bs!13822 () Bool)

(assert (= bs!13822 d!36233))

(declare-fun m!135345 () Bool)

(assert (=> bs!13822 m!135345))

(assert (=> b!151008 d!36233))

(declare-fun d!36235 () Bool)

(declare-fun c!30600 () Bool)

(assert (=> d!36235 (= c!30600 ((_ is Empty!732) (c!30493 (seqFromList!287 lt!43919))))))

(declare-fun e!90435 () List!2631)

(assert (=> d!36235 (= (list!921 (c!30493 (seqFromList!287 lt!43919))) e!90435)))

(declare-fun b!151348 () Bool)

(assert (=> b!151348 (= e!90435 Nil!2621)))

(declare-fun b!151350 () Bool)

(declare-fun e!90436 () List!2631)

(declare-fun list!924 (IArray!1465) List!2631)

(assert (=> b!151350 (= e!90436 (list!924 (xs!3327 (c!30493 (seqFromList!287 lt!43919)))))))

(declare-fun b!151351 () Bool)

(assert (=> b!151351 (= e!90436 (++!560 (list!921 (left!1978 (c!30493 (seqFromList!287 lt!43919)))) (list!921 (right!2308 (c!30493 (seqFromList!287 lt!43919))))))))

(declare-fun b!151349 () Bool)

(assert (=> b!151349 (= e!90435 e!90436)))

(declare-fun c!30601 () Bool)

(assert (=> b!151349 (= c!30601 ((_ is Leaf!1299) (c!30493 (seqFromList!287 lt!43919))))))

(assert (= (and d!36235 c!30600) b!151348))

(assert (= (and d!36235 (not c!30600)) b!151349))

(assert (= (and b!151349 c!30601) b!151350))

(assert (= (and b!151349 (not c!30601)) b!151351))

(declare-fun m!135347 () Bool)

(assert (=> b!151350 m!135347))

(declare-fun m!135349 () Bool)

(assert (=> b!151351 m!135349))

(declare-fun m!135351 () Bool)

(assert (=> b!151351 m!135351))

(assert (=> b!151351 m!135349))

(assert (=> b!151351 m!135351))

(declare-fun m!135353 () Bool)

(assert (=> b!151351 m!135353))

(assert (=> d!36099 d!36235))

(declare-fun d!36237 () Bool)

(declare-fun e!90438 () Bool)

(assert (=> d!36237 e!90438))

(declare-fun res!69357 () Bool)

(assert (=> d!36237 (=> (not res!69357) (not e!90438))))

(declare-fun lt!44155 () List!2631)

(assert (=> d!36237 (= res!69357 (= (content!362 lt!44155) ((_ map or) (content!362 (list!917 (charsOf!110 (h!8020 (t!24769 tokens!465))))) (content!362 lt!44015))))))

(declare-fun e!90437 () List!2631)

(assert (=> d!36237 (= lt!44155 e!90437)))

(declare-fun c!30602 () Bool)

(assert (=> d!36237 (= c!30602 ((_ is Nil!2621) (list!917 (charsOf!110 (h!8020 (t!24769 tokens!465))))))))

(assert (=> d!36237 (= (++!560 (list!917 (charsOf!110 (h!8020 (t!24769 tokens!465)))) lt!44015) lt!44155)))

(declare-fun b!151353 () Bool)

(assert (=> b!151353 (= e!90437 (Cons!2621 (h!8018 (list!917 (charsOf!110 (h!8020 (t!24769 tokens!465))))) (++!560 (t!24767 (list!917 (charsOf!110 (h!8020 (t!24769 tokens!465))))) lt!44015)))))

(declare-fun b!151352 () Bool)

(assert (=> b!151352 (= e!90437 lt!44015)))

(declare-fun b!151354 () Bool)

(declare-fun res!69356 () Bool)

(assert (=> b!151354 (=> (not res!69356) (not e!90438))))

(assert (=> b!151354 (= res!69356 (= (size!2240 lt!44155) (+ (size!2240 (list!917 (charsOf!110 (h!8020 (t!24769 tokens!465))))) (size!2240 lt!44015))))))

(declare-fun b!151355 () Bool)

(assert (=> b!151355 (= e!90438 (or (not (= lt!44015 Nil!2621)) (= lt!44155 (list!917 (charsOf!110 (h!8020 (t!24769 tokens!465)))))))))

(assert (= (and d!36237 c!30602) b!151352))

(assert (= (and d!36237 (not c!30602)) b!151353))

(assert (= (and d!36237 res!69357) b!151354))

(assert (= (and b!151354 res!69356) b!151355))

(declare-fun m!135355 () Bool)

(assert (=> d!36237 m!135355))

(assert (=> d!36237 m!134865))

(declare-fun m!135357 () Bool)

(assert (=> d!36237 m!135357))

(declare-fun m!135359 () Bool)

(assert (=> d!36237 m!135359))

(declare-fun m!135361 () Bool)

(assert (=> b!151353 m!135361))

(declare-fun m!135363 () Bool)

(assert (=> b!151354 m!135363))

(assert (=> b!151354 m!134865))

(declare-fun m!135365 () Bool)

(assert (=> b!151354 m!135365))

(declare-fun m!135367 () Bool)

(assert (=> b!151354 m!135367))

(assert (=> b!150972 d!36237))

(declare-fun d!36239 () Bool)

(assert (=> d!36239 (dynLambda!915 lambda!3882 (h!8020 (t!24769 tokens!465)))))

(declare-fun lt!44158 () Unit!1992)

(declare-fun choose!1745 (List!2633 Int Token!654) Unit!1992)

(assert (=> d!36239 (= lt!44158 (choose!1745 (t!24769 tokens!465) lambda!3882 (h!8020 (t!24769 tokens!465))))))

(declare-fun e!90441 () Bool)

(assert (=> d!36239 e!90441))

(declare-fun res!69360 () Bool)

(assert (=> d!36239 (=> (not res!69360) (not e!90441))))

(assert (=> d!36239 (= res!69360 (forall!443 (t!24769 tokens!465) lambda!3882))))

(assert (=> d!36239 (= (forallContained!50 (t!24769 tokens!465) lambda!3882 (h!8020 (t!24769 tokens!465))) lt!44158)))

(declare-fun b!151358 () Bool)

(declare-fun contains!416 (List!2633 Token!654) Bool)

(assert (=> b!151358 (= e!90441 (contains!416 (t!24769 tokens!465) (h!8020 (t!24769 tokens!465))))))

(assert (= (and d!36239 res!69360) b!151358))

(declare-fun b_lambda!2763 () Bool)

(assert (=> (not b_lambda!2763) (not d!36239)))

(declare-fun m!135369 () Bool)

(assert (=> d!36239 m!135369))

(declare-fun m!135371 () Bool)

(assert (=> d!36239 m!135371))

(declare-fun m!135373 () Bool)

(assert (=> d!36239 m!135373))

(declare-fun m!135375 () Bool)

(assert (=> b!151358 m!135375))

(assert (=> b!150972 d!36239))

(declare-fun b!151399 () Bool)

(declare-fun res!69385 () Bool)

(declare-fun e!90462 () Bool)

(assert (=> b!151399 (=> (not res!69385) (not e!90462))))

(declare-fun lt!44225 () Option!238)

(declare-fun get!710 (Option!238) tuple2!2566)

(assert (=> b!151399 (= res!69385 (= (++!560 (list!917 (charsOf!110 (_1!1499 (get!710 lt!44225)))) (_2!1499 (get!710 lt!44225))) (++!560 (list!917 (charsOf!110 (h!8020 (t!24769 tokens!465)))) lt!44015)))))

(declare-fun b!151400 () Bool)

(declare-fun e!90464 () Bool)

(assert (=> b!151400 (= e!90464 e!90462)))

(declare-fun res!69386 () Bool)

(assert (=> b!151400 (=> (not res!69386) (not e!90462))))

(declare-fun isDefined!99 (Option!238) Bool)

(assert (=> b!151400 (= res!69386 (isDefined!99 lt!44225))))

(declare-fun bm!6114 () Bool)

(declare-fun call!6119 () Option!238)

(declare-fun maxPrefixOneRule!55 (LexerInterface!341 Rule!710 List!2631) Option!238)

(assert (=> bm!6114 (= call!6119 (maxPrefixOneRule!55 thiss!17480 (h!8021 rules!1920) (++!560 (list!917 (charsOf!110 (h!8020 (t!24769 tokens!465)))) lt!44015)))))

(declare-fun d!36241 () Bool)

(assert (=> d!36241 e!90464))

(declare-fun res!69391 () Bool)

(assert (=> d!36241 (=> res!69391 e!90464)))

(declare-fun isEmpty!1042 (Option!238) Bool)

(assert (=> d!36241 (= res!69391 (isEmpty!1042 lt!44225))))

(declare-fun e!90463 () Option!238)

(assert (=> d!36241 (= lt!44225 e!90463)))

(declare-fun c!30609 () Bool)

(assert (=> d!36241 (= c!30609 (and ((_ is Cons!2624) rules!1920) ((_ is Nil!2624) (t!24770 rules!1920))))))

(declare-fun lt!44227 () Unit!1992)

(declare-fun lt!44224 () Unit!1992)

(assert (=> d!36241 (= lt!44227 lt!44224)))

(declare-fun isPrefix!211 (List!2631 List!2631) Bool)

(assert (=> d!36241 (isPrefix!211 (++!560 (list!917 (charsOf!110 (h!8020 (t!24769 tokens!465)))) lt!44015) (++!560 (list!917 (charsOf!110 (h!8020 (t!24769 tokens!465)))) lt!44015))))

(declare-fun lemmaIsPrefixRefl!118 (List!2631 List!2631) Unit!1992)

(assert (=> d!36241 (= lt!44224 (lemmaIsPrefixRefl!118 (++!560 (list!917 (charsOf!110 (h!8020 (t!24769 tokens!465)))) lt!44015) (++!560 (list!917 (charsOf!110 (h!8020 (t!24769 tokens!465)))) lt!44015)))))

(assert (=> d!36241 (rulesValidInductive!95 thiss!17480 rules!1920)))

(assert (=> d!36241 (= (maxPrefix!107 thiss!17480 rules!1920 (++!560 (list!917 (charsOf!110 (h!8020 (t!24769 tokens!465)))) lt!44015)) lt!44225)))

(declare-fun b!151401 () Bool)

(assert (=> b!151401 (= e!90463 call!6119)))

(declare-fun b!151402 () Bool)

(declare-fun res!69389 () Bool)

(assert (=> b!151402 (=> (not res!69389) (not e!90462))))

(declare-fun apply!345 (TokenValueInjection!726 BalanceConc!1472) TokenValue!477)

(assert (=> b!151402 (= res!69389 (= (value!17283 (_1!1499 (get!710 lt!44225))) (apply!345 (transformation!455 (rule!962 (_1!1499 (get!710 lt!44225)))) (seqFromList!287 (originalCharacters!498 (_1!1499 (get!710 lt!44225)))))))))

(declare-fun b!151403 () Bool)

(declare-fun res!69390 () Bool)

(assert (=> b!151403 (=> (not res!69390) (not e!90462))))

(assert (=> b!151403 (= res!69390 (< (size!2240 (_2!1499 (get!710 lt!44225))) (size!2240 (++!560 (list!917 (charsOf!110 (h!8020 (t!24769 tokens!465)))) lt!44015))))))

(declare-fun b!151404 () Bool)

(declare-fun lt!44226 () Option!238)

(declare-fun lt!44223 () Option!238)

(assert (=> b!151404 (= e!90463 (ite (and ((_ is None!237) lt!44226) ((_ is None!237) lt!44223)) None!237 (ite ((_ is None!237) lt!44223) lt!44226 (ite ((_ is None!237) lt!44226) lt!44223 (ite (>= (size!2237 (_1!1499 (v!13614 lt!44226))) (size!2237 (_1!1499 (v!13614 lt!44223)))) lt!44226 lt!44223)))))))

(assert (=> b!151404 (= lt!44226 call!6119)))

(assert (=> b!151404 (= lt!44223 (maxPrefix!107 thiss!17480 (t!24770 rules!1920) (++!560 (list!917 (charsOf!110 (h!8020 (t!24769 tokens!465)))) lt!44015)))))

(declare-fun b!151405 () Bool)

(declare-fun contains!417 (List!2634 Rule!710) Bool)

(assert (=> b!151405 (= e!90462 (contains!417 rules!1920 (rule!962 (_1!1499 (get!710 lt!44225)))))))

(declare-fun b!151406 () Bool)

(declare-fun res!69387 () Bool)

(assert (=> b!151406 (=> (not res!69387) (not e!90462))))

(declare-fun matchR!67 (Regex!679 List!2631) Bool)

(assert (=> b!151406 (= res!69387 (matchR!67 (regex!455 (rule!962 (_1!1499 (get!710 lt!44225)))) (list!917 (charsOf!110 (_1!1499 (get!710 lt!44225))))))))

(declare-fun b!151407 () Bool)

(declare-fun res!69388 () Bool)

(assert (=> b!151407 (=> (not res!69388) (not e!90462))))

(assert (=> b!151407 (= res!69388 (= (list!917 (charsOf!110 (_1!1499 (get!710 lt!44225)))) (originalCharacters!498 (_1!1499 (get!710 lt!44225)))))))

(assert (= (and d!36241 c!30609) b!151401))

(assert (= (and d!36241 (not c!30609)) b!151404))

(assert (= (or b!151401 b!151404) bm!6114))

(assert (= (and d!36241 (not res!69391)) b!151400))

(assert (= (and b!151400 res!69386) b!151407))

(assert (= (and b!151407 res!69388) b!151403))

(assert (= (and b!151403 res!69390) b!151399))

(assert (= (and b!151399 res!69385) b!151402))

(assert (= (and b!151402 res!69389) b!151406))

(assert (= (and b!151406 res!69387) b!151405))

(declare-fun m!135467 () Bool)

(assert (=> b!151403 m!135467))

(declare-fun m!135469 () Bool)

(assert (=> b!151403 m!135469))

(assert (=> b!151403 m!134867))

(declare-fun m!135471 () Bool)

(assert (=> b!151403 m!135471))

(assert (=> bm!6114 m!134867))

(declare-fun m!135473 () Bool)

(assert (=> bm!6114 m!135473))

(declare-fun m!135475 () Bool)

(assert (=> b!151400 m!135475))

(assert (=> b!151402 m!135467))

(declare-fun m!135477 () Bool)

(assert (=> b!151402 m!135477))

(assert (=> b!151402 m!135477))

(declare-fun m!135479 () Bool)

(assert (=> b!151402 m!135479))

(assert (=> b!151399 m!135467))

(declare-fun m!135483 () Bool)

(assert (=> b!151399 m!135483))

(assert (=> b!151399 m!135483))

(declare-fun m!135485 () Bool)

(assert (=> b!151399 m!135485))

(assert (=> b!151399 m!135485))

(declare-fun m!135491 () Bool)

(assert (=> b!151399 m!135491))

(assert (=> b!151407 m!135467))

(assert (=> b!151407 m!135483))

(assert (=> b!151407 m!135483))

(assert (=> b!151407 m!135485))

(assert (=> b!151404 m!134867))

(declare-fun m!135493 () Bool)

(assert (=> b!151404 m!135493))

(declare-fun m!135495 () Bool)

(assert (=> d!36241 m!135495))

(assert (=> d!36241 m!134867))

(assert (=> d!36241 m!134867))

(declare-fun m!135497 () Bool)

(assert (=> d!36241 m!135497))

(assert (=> d!36241 m!134867))

(assert (=> d!36241 m!134867))

(declare-fun m!135499 () Bool)

(assert (=> d!36241 m!135499))

(assert (=> d!36241 m!135279))

(assert (=> b!151405 m!135467))

(declare-fun m!135501 () Bool)

(assert (=> b!151405 m!135501))

(assert (=> b!151406 m!135467))

(assert (=> b!151406 m!135483))

(assert (=> b!151406 m!135483))

(assert (=> b!151406 m!135485))

(assert (=> b!151406 m!135485))

(declare-fun m!135503 () Bool)

(assert (=> b!151406 m!135503))

(assert (=> b!150972 d!36241))

(declare-fun bs!13835 () Bool)

(declare-fun b!151417 () Bool)

(assert (= bs!13835 (and b!151417 d!36079)))

(declare-fun lambda!3913 () Int)

(assert (=> bs!13835 (= lambda!3913 lambda!3876)))

(declare-fun bs!13837 () Bool)

(assert (= bs!13837 (and b!151417 b!151166)))

(assert (=> bs!13837 (= lambda!3913 lambda!3898)))

(declare-fun bs!13838 () Bool)

(assert (= bs!13838 (and b!151417 d!36213)))

(assert (=> bs!13838 (= lambda!3913 lambda!3906)))

(declare-fun bs!13839 () Bool)

(assert (= bs!13839 (and b!151417 d!36045)))

(assert (=> bs!13839 (= lambda!3913 lambda!3869)))

(declare-fun bs!13840 () Bool)

(assert (= bs!13840 (and b!151417 d!36199)))

(assert (=> bs!13840 (= lambda!3913 lambda!3902)))

(declare-fun bs!13841 () Bool)

(assert (= bs!13841 (and b!151417 d!36135)))

(assert (=> bs!13841 (not (= lambda!3913 lambda!3896))))

(declare-fun bs!13842 () Bool)

(assert (= bs!13842 (and b!151417 b!150972)))

(assert (=> bs!13842 (= lambda!3913 lambda!3882)))

(declare-fun bs!13843 () Bool)

(assert (= bs!13843 (and b!151417 b!151155)))

(assert (=> bs!13843 (= lambda!3913 lambda!3897)))

(declare-fun bs!13844 () Bool)

(assert (= bs!13844 (and b!151417 b!150772)))

(assert (=> bs!13844 (not (= lambda!3913 lambda!3862))))

(declare-fun b!151422 () Bool)

(declare-fun e!90473 () Bool)

(assert (=> b!151422 (= e!90473 true)))

(declare-fun b!151421 () Bool)

(declare-fun e!90472 () Bool)

(assert (=> b!151421 (= e!90472 e!90473)))

(declare-fun b!151420 () Bool)

(declare-fun e!90471 () Bool)

(assert (=> b!151420 (= e!90471 e!90472)))

(assert (=> b!151417 e!90471))

(assert (= b!151421 b!151422))

(assert (= b!151420 b!151421))

(assert (= (and b!151417 ((_ is Cons!2624) rules!1920)) b!151420))

(assert (=> b!151422 (< (dynLambda!911 order!1295 (toValue!1090 (transformation!455 (h!8021 rules!1920)))) (dynLambda!912 order!1297 lambda!3913))))

(assert (=> b!151422 (< (dynLambda!913 order!1299 (toChars!949 (transformation!455 (h!8021 rules!1920)))) (dynLambda!912 order!1297 lambda!3913))))

(assert (=> b!151417 true))

(declare-fun b!151410 () Bool)

(declare-fun c!30611 () Bool)

(declare-fun lt!44228 () Option!238)

(assert (=> b!151410 (= c!30611 (and ((_ is Some!237) lt!44228) (not (= (_1!1499 (v!13614 lt!44228)) (h!8020 (t!24769 (t!24769 tokens!465)))))))))

(declare-fun e!90467 () List!2631)

(declare-fun e!90469 () List!2631)

(assert (=> b!151410 (= e!90467 e!90469)))

(declare-fun bm!6115 () Bool)

(declare-fun call!6123 () List!2631)

(declare-fun call!6124 () List!2631)

(assert (=> bm!6115 (= call!6123 call!6124)))

(declare-fun c!30612 () Bool)

(assert (=> bm!6115 (= c!30612 c!30611)))

(declare-fun b!151411 () Bool)

(declare-fun e!90468 () List!2631)

(declare-fun call!6120 () BalanceConc!1472)

(assert (=> b!151411 (= e!90468 (list!917 call!6120))))

(declare-fun b!151412 () Bool)

(assert (=> b!151412 (= e!90469 Nil!2621)))

(assert (=> b!151412 (= (print!92 thiss!17480 (singletonSeq!25 (h!8020 (t!24769 (t!24769 tokens!465))))) (printTailRec!55 thiss!17480 (singletonSeq!25 (h!8020 (t!24769 (t!24769 tokens!465)))) 0 (BalanceConc!1473 Empty!732)))))

(declare-fun lt!44229 () Unit!1992)

(declare-fun Unit!2004 () Unit!1992)

(assert (=> b!151412 (= lt!44229 Unit!2004)))

(declare-fun lt!44231 () Unit!1992)

(declare-fun lt!44233 () List!2631)

(assert (=> b!151412 (= lt!44231 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!14 thiss!17480 rules!1920 call!6123 lt!44233))))

(assert (=> b!151412 false))

(declare-fun lt!44232 () Unit!1992)

(declare-fun Unit!2005 () Unit!1992)

(assert (=> b!151412 (= lt!44232 Unit!2005)))

(declare-fun bm!6116 () Bool)

(declare-fun c!30614 () Bool)

(declare-fun e!90466 () BalanceConc!1472)

(declare-fun call!6121 () BalanceConc!1472)

(assert (=> bm!6116 (= call!6124 (list!917 (ite c!30614 call!6121 e!90466)))))

(declare-fun b!151413 () Bool)

(assert (=> b!151413 (= e!90468 call!6124)))

(declare-fun b!151414 () Bool)

(assert (=> b!151414 (= e!90466 call!6120)))

(declare-fun b!151415 () Bool)

(declare-fun call!6122 () List!2631)

(assert (=> b!151415 (= e!90467 call!6122)))

(declare-fun bm!6118 () Bool)

(assert (=> bm!6118 (= call!6121 (charsOf!110 (h!8020 (t!24769 (t!24769 tokens!465)))))))

(declare-fun b!151416 () Bool)

(assert (=> b!151416 (= e!90469 (++!560 call!6122 lt!44233))))

(declare-fun bm!6119 () Bool)

(assert (=> bm!6119 (= call!6120 call!6121)))

(declare-fun e!90470 () List!2631)

(assert (=> b!151417 (= e!90470 e!90467)))

(declare-fun lt!44230 () Unit!1992)

(assert (=> b!151417 (= lt!44230 (forallContained!50 (t!24769 (t!24769 tokens!465)) lambda!3913 (h!8020 (t!24769 (t!24769 tokens!465)))))))

(assert (=> b!151417 (= lt!44233 (printWithSeparatorTokenWhenNeededList!34 thiss!17480 rules!1920 (t!24769 (t!24769 (t!24769 tokens!465))) separatorToken!170))))

(assert (=> b!151417 (= lt!44228 (maxPrefix!107 thiss!17480 rules!1920 (++!560 (list!917 (charsOf!110 (h!8020 (t!24769 (t!24769 tokens!465))))) lt!44233)))))

(assert (=> b!151417 (= c!30614 (and ((_ is Some!237) lt!44228) (= (_1!1499 (v!13614 lt!44228)) (h!8020 (t!24769 (t!24769 tokens!465))))))))

(declare-fun b!151418 () Bool)

(assert (=> b!151418 (= e!90466 (charsOf!110 separatorToken!170))))

(declare-fun b!151419 () Bool)

(assert (=> b!151419 (= e!90470 Nil!2621)))

(declare-fun d!36261 () Bool)

(declare-fun c!30613 () Bool)

(assert (=> d!36261 (= c!30613 ((_ is Cons!2623) (t!24769 (t!24769 tokens!465))))))

(assert (=> d!36261 (= (printWithSeparatorTokenWhenNeededList!34 thiss!17480 rules!1920 (t!24769 (t!24769 tokens!465)) separatorToken!170) e!90470)))

(declare-fun bm!6117 () Bool)

(declare-fun c!30610 () Bool)

(assert (=> bm!6117 (= c!30610 c!30614)))

(assert (=> bm!6117 (= call!6122 (++!560 e!90468 (ite c!30614 lt!44233 call!6123)))))

(assert (= (and d!36261 c!30613) b!151417))

(assert (= (and d!36261 (not c!30613)) b!151419))

(assert (= (and b!151417 c!30614) b!151415))

(assert (= (and b!151417 (not c!30614)) b!151410))

(assert (= (and b!151410 c!30611) b!151416))

(assert (= (and b!151410 (not c!30611)) b!151412))

(assert (= (or b!151416 b!151412) bm!6119))

(assert (= (or b!151416 b!151412) bm!6115))

(assert (= (and bm!6115 c!30612) b!151418))

(assert (= (and bm!6115 (not c!30612)) b!151414))

(assert (= (or b!151415 bm!6119) bm!6118))

(assert (= (or b!151415 bm!6115) bm!6116))

(assert (= (or b!151415 b!151416) bm!6117))

(assert (= (and bm!6117 c!30610) b!151413))

(assert (= (and bm!6117 (not c!30610)) b!151411))

(declare-fun m!135511 () Bool)

(assert (=> b!151417 m!135511))

(declare-fun m!135513 () Bool)

(assert (=> b!151417 m!135513))

(declare-fun m!135515 () Bool)

(assert (=> b!151417 m!135515))

(assert (=> b!151417 m!135515))

(declare-fun m!135517 () Bool)

(assert (=> b!151417 m!135517))

(declare-fun m!135519 () Bool)

(assert (=> b!151417 m!135519))

(assert (=> b!151417 m!135519))

(assert (=> b!151417 m!135513))

(declare-fun m!135521 () Bool)

(assert (=> b!151417 m!135521))

(declare-fun m!135523 () Bool)

(assert (=> bm!6117 m!135523))

(declare-fun m!135525 () Bool)

(assert (=> b!151412 m!135525))

(assert (=> b!151412 m!135525))

(declare-fun m!135527 () Bool)

(assert (=> b!151412 m!135527))

(assert (=> b!151412 m!135525))

(declare-fun m!135529 () Bool)

(assert (=> b!151412 m!135529))

(declare-fun m!135531 () Bool)

(assert (=> b!151412 m!135531))

(declare-fun m!135533 () Bool)

(assert (=> bm!6116 m!135533))

(assert (=> b!151418 m!134651))

(declare-fun m!135535 () Bool)

(assert (=> b!151411 m!135535))

(assert (=> bm!6118 m!135519))

(declare-fun m!135537 () Bool)

(assert (=> b!151416 m!135537))

(assert (=> b!150972 d!36261))

(declare-fun d!36265 () Bool)

(assert (=> d!36265 (= (list!917 (charsOf!110 (h!8020 (t!24769 tokens!465)))) (list!921 (c!30493 (charsOf!110 (h!8020 (t!24769 tokens!465))))))))

(declare-fun bs!13845 () Bool)

(assert (= bs!13845 d!36265))

(declare-fun m!135539 () Bool)

(assert (=> bs!13845 m!135539))

(assert (=> b!150972 d!36265))

(declare-fun d!36267 () Bool)

(declare-fun lt!44237 () BalanceConc!1472)

(assert (=> d!36267 (= (list!917 lt!44237) (originalCharacters!498 (h!8020 (t!24769 tokens!465))))))

(assert (=> d!36267 (= lt!44237 (dynLambda!914 (toChars!949 (transformation!455 (rule!962 (h!8020 (t!24769 tokens!465))))) (value!17283 (h!8020 (t!24769 tokens!465)))))))

(assert (=> d!36267 (= (charsOf!110 (h!8020 (t!24769 tokens!465))) lt!44237)))

(declare-fun b_lambda!2769 () Bool)

(assert (=> (not b_lambda!2769) (not d!36267)))

(declare-fun t!24863 () Bool)

(declare-fun tb!5105 () Bool)

(assert (=> (and b!150757 (= (toChars!949 (transformation!455 (rule!962 (h!8020 tokens!465)))) (toChars!949 (transformation!455 (rule!962 (h!8020 (t!24769 tokens!465)))))) t!24863) tb!5105))

(declare-fun b!151423 () Bool)

(declare-fun e!90474 () Bool)

(declare-fun tp!78802 () Bool)

(assert (=> b!151423 (= e!90474 (and (inv!3419 (c!30493 (dynLambda!914 (toChars!949 (transformation!455 (rule!962 (h!8020 (t!24769 tokens!465))))) (value!17283 (h!8020 (t!24769 tokens!465)))))) tp!78802))))

(declare-fun result!7560 () Bool)

(assert (=> tb!5105 (= result!7560 (and (inv!3420 (dynLambda!914 (toChars!949 (transformation!455 (rule!962 (h!8020 (t!24769 tokens!465))))) (value!17283 (h!8020 (t!24769 tokens!465))))) e!90474))))

(assert (= tb!5105 b!151423))

(declare-fun m!135541 () Bool)

(assert (=> b!151423 m!135541))

(declare-fun m!135543 () Bool)

(assert (=> tb!5105 m!135543))

(assert (=> d!36267 t!24863))

(declare-fun b_and!8743 () Bool)

(assert (= b_and!8683 (and (=> t!24863 result!7560) b_and!8743)))

(declare-fun tb!5107 () Bool)

(declare-fun t!24865 () Bool)

(assert (=> (and b!150761 (= (toChars!949 (transformation!455 (rule!962 separatorToken!170))) (toChars!949 (transformation!455 (rule!962 (h!8020 (t!24769 tokens!465)))))) t!24865) tb!5107))

(declare-fun result!7562 () Bool)

(assert (= result!7562 result!7560))

(assert (=> d!36267 t!24865))

(declare-fun b_and!8745 () Bool)

(assert (= b_and!8681 (and (=> t!24865 result!7562) b_and!8745)))

(declare-fun tb!5109 () Bool)

(declare-fun t!24867 () Bool)

(assert (=> (and b!151202 (= (toChars!949 (transformation!455 (h!8021 (t!24770 rules!1920)))) (toChars!949 (transformation!455 (rule!962 (h!8020 (t!24769 tokens!465)))))) t!24867) tb!5109))

(declare-fun result!7564 () Bool)

(assert (= result!7564 result!7560))

(assert (=> d!36267 t!24867))

(declare-fun b_and!8747 () Bool)

(assert (= b_and!8707 (and (=> t!24867 result!7564) b_and!8747)))

(declare-fun t!24869 () Bool)

(declare-fun tb!5111 () Bool)

(assert (=> (and b!151230 (= (toChars!949 (transformation!455 (rule!962 (h!8020 (t!24769 tokens!465))))) (toChars!949 (transformation!455 (rule!962 (h!8020 (t!24769 tokens!465)))))) t!24869) tb!5111))

(declare-fun result!7566 () Bool)

(assert (= result!7566 result!7560))

(assert (=> d!36267 t!24869))

(declare-fun b_and!8749 () Bool)

(assert (= b_and!8711 (and (=> t!24869 result!7566) b_and!8749)))

(declare-fun tb!5113 () Bool)

(declare-fun t!24871 () Bool)

(assert (=> (and b!150754 (= (toChars!949 (transformation!455 (h!8021 rules!1920))) (toChars!949 (transformation!455 (rule!962 (h!8020 (t!24769 tokens!465)))))) t!24871) tb!5113))

(declare-fun result!7568 () Bool)

(assert (= result!7568 result!7560))

(assert (=> d!36267 t!24871))

(declare-fun b_and!8751 () Bool)

(assert (= b_and!8679 (and (=> t!24871 result!7568) b_and!8751)))

(declare-fun m!135545 () Bool)

(assert (=> d!36267 m!135545))

(declare-fun m!135547 () Bool)

(assert (=> d!36267 m!135547))

(assert (=> b!150972 d!36267))

(declare-fun d!36269 () Bool)

(assert (=> d!36269 (= (inv!3412 (tag!633 (h!8021 (t!24770 rules!1920)))) (= (mod (str.len (value!17282 (tag!633 (h!8021 (t!24770 rules!1920))))) 2) 0))))

(assert (=> b!151201 d!36269))

(declare-fun d!36271 () Bool)

(declare-fun res!69394 () Bool)

(declare-fun e!90475 () Bool)

(assert (=> d!36271 (=> (not res!69394) (not e!90475))))

(assert (=> d!36271 (= res!69394 (semiInverseModEq!157 (toChars!949 (transformation!455 (h!8021 (t!24770 rules!1920)))) (toValue!1090 (transformation!455 (h!8021 (t!24770 rules!1920))))))))

(assert (=> d!36271 (= (inv!3416 (transformation!455 (h!8021 (t!24770 rules!1920)))) e!90475)))

(declare-fun b!151424 () Bool)

(assert (=> b!151424 (= e!90475 (equivClasses!140 (toChars!949 (transformation!455 (h!8021 (t!24770 rules!1920)))) (toValue!1090 (transformation!455 (h!8021 (t!24770 rules!1920))))))))

(assert (= (and d!36271 res!69394) b!151424))

(declare-fun m!135549 () Bool)

(assert (=> d!36271 m!135549))

(declare-fun m!135551 () Bool)

(assert (=> b!151424 m!135551))

(assert (=> b!151201 d!36271))

(declare-fun d!36273 () Bool)

(assert (=> d!36273 (= (list!917 call!6110) (list!921 (c!30493 call!6110)))))

(declare-fun bs!13846 () Bool)

(assert (= bs!13846 d!36273))

(declare-fun m!135553 () Bool)

(assert (=> bs!13846 m!135553))

(assert (=> b!151153 d!36273))

(declare-fun b!151506 () Bool)

(declare-fun e!90517 () Unit!1992)

(declare-fun Unit!2008 () Unit!1992)

(assert (=> b!151506 (= e!90517 Unit!2008)))

(declare-fun b!151504 () Bool)

(declare-fun lt!44308 () Token!654)

(declare-fun e!90518 () Bool)

(declare-datatypes ((Option!241 0))(
  ( (None!240) (Some!240 (v!13621 Rule!710)) )
))
(declare-fun get!711 (Option!241) Rule!710)

(declare-fun getRuleFromTag!10 (LexerInterface!341 List!2634 String!3465) Option!241)

(assert (=> b!151504 (= e!90518 (= (rule!962 lt!44308) (get!711 (getRuleFromTag!10 thiss!17480 rules!1920 (tag!633 (rule!962 lt!44308))))))))

(declare-fun d!36275 () Bool)

(assert (=> d!36275 (isDefined!99 (maxPrefix!107 thiss!17480 rules!1920 (++!560 (list!917 call!6110) (list!917 lt!44080))))))

(declare-fun lt!44299 () Unit!1992)

(assert (=> d!36275 (= lt!44299 e!90517)))

(declare-fun c!30637 () Bool)

(assert (=> d!36275 (= c!30637 (isEmpty!1042 (maxPrefix!107 thiss!17480 rules!1920 (++!560 (list!917 call!6110) (list!917 lt!44080)))))))

(declare-fun lt!44301 () Unit!1992)

(declare-fun lt!44300 () Unit!1992)

(assert (=> d!36275 (= lt!44301 lt!44300)))

(assert (=> d!36275 e!90518))

(declare-fun res!69430 () Bool)

(assert (=> d!36275 (=> (not res!69430) (not e!90518))))

(declare-fun isDefined!100 (Option!241) Bool)

(assert (=> d!36275 (= res!69430 (isDefined!100 (getRuleFromTag!10 thiss!17480 rules!1920 (tag!633 (rule!962 lt!44308)))))))

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!10 (LexerInterface!341 List!2634 List!2631 Token!654) Unit!1992)

(assert (=> d!36275 (= lt!44300 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!10 thiss!17480 rules!1920 (list!917 call!6110) lt!44308))))

(declare-fun lt!44307 () Unit!1992)

(declare-fun lt!44295 () Unit!1992)

(assert (=> d!36275 (= lt!44307 lt!44295)))

(declare-fun lt!44306 () List!2631)

(assert (=> d!36275 (isPrefix!211 lt!44306 (++!560 (list!917 call!6110) (list!917 lt!44080)))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!10 (List!2631 List!2631 List!2631) Unit!1992)

(assert (=> d!36275 (= lt!44295 (lemmaPrefixStaysPrefixWhenAddingToSuffix!10 lt!44306 (list!917 call!6110) (list!917 lt!44080)))))

(assert (=> d!36275 (= lt!44306 (list!917 (charsOf!110 lt!44308)))))

(declare-fun lt!44298 () Unit!1992)

(declare-fun lt!44294 () Unit!1992)

(assert (=> d!36275 (= lt!44298 lt!44294)))

(declare-fun lt!44302 () List!2631)

(declare-fun lt!44305 () List!2631)

(assert (=> d!36275 (isPrefix!211 lt!44302 (++!560 lt!44302 lt!44305))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!114 (List!2631 List!2631) Unit!1992)

(assert (=> d!36275 (= lt!44294 (lemmaConcatTwoListThenFirstIsPrefix!114 lt!44302 lt!44305))))

(assert (=> d!36275 (= lt!44305 (_2!1499 (get!710 (maxPrefix!107 thiss!17480 rules!1920 (list!917 call!6110)))))))

(assert (=> d!36275 (= lt!44302 (list!917 (charsOf!110 lt!44308)))))

(assert (=> d!36275 (= lt!44308 (head!580 (list!920 (_1!1500 (lex!167 thiss!17480 rules!1920 (seqFromList!287 (list!917 call!6110)))))))))

(assert (=> d!36275 (not (isEmpty!1032 rules!1920))))

(assert (=> d!36275 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!14 thiss!17480 rules!1920 (list!917 call!6110) (list!917 lt!44080)) lt!44299)))

(declare-fun b!151503 () Bool)

(declare-fun res!69431 () Bool)

(assert (=> b!151503 (=> (not res!69431) (not e!90518))))

(assert (=> b!151503 (= res!69431 (matchR!67 (regex!455 (get!711 (getRuleFromTag!10 thiss!17480 rules!1920 (tag!633 (rule!962 lt!44308))))) (list!917 (charsOf!110 lt!44308))))))

(declare-fun b!151505 () Bool)

(declare-fun Unit!2009 () Unit!1992)

(assert (=> b!151505 (= e!90517 Unit!2009)))

(declare-fun lt!44303 () List!2631)

(assert (=> b!151505 (= lt!44303 (++!560 (list!917 call!6110) (list!917 lt!44080)))))

(declare-fun lt!44304 () Unit!1992)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!10 (LexerInterface!341 Rule!710 List!2634 List!2631) Unit!1992)

(assert (=> b!151505 (= lt!44304 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!10 thiss!17480 (rule!962 lt!44308) rules!1920 lt!44303))))

(assert (=> b!151505 (isEmpty!1042 (maxPrefixOneRule!55 thiss!17480 (rule!962 lt!44308) lt!44303))))

(declare-fun lt!44296 () Unit!1992)

(assert (=> b!151505 (= lt!44296 lt!44304)))

(declare-fun lt!44310 () List!2631)

(assert (=> b!151505 (= lt!44310 (list!917 (charsOf!110 lt!44308)))))

(declare-fun lt!44309 () Unit!1992)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!10 (LexerInterface!341 Rule!710 List!2631 List!2631) Unit!1992)

(assert (=> b!151505 (= lt!44309 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!10 thiss!17480 (rule!962 lt!44308) lt!44310 (++!560 (list!917 call!6110) (list!917 lt!44080))))))

(assert (=> b!151505 (not (matchR!67 (regex!455 (rule!962 lt!44308)) lt!44310))))

(declare-fun lt!44297 () Unit!1992)

(assert (=> b!151505 (= lt!44297 lt!44309)))

(assert (=> b!151505 false))

(assert (= (and d!36275 res!69430) b!151503))

(assert (= (and b!151503 res!69431) b!151504))

(assert (= (and d!36275 c!30637) b!151505))

(assert (= (and d!36275 (not c!30637)) b!151506))

(declare-fun m!135687 () Bool)

(assert (=> b!151504 m!135687))

(assert (=> b!151504 m!135687))

(declare-fun m!135689 () Bool)

(assert (=> b!151504 m!135689))

(declare-fun m!135691 () Bool)

(assert (=> d!36275 m!135691))

(declare-fun m!135693 () Bool)

(assert (=> d!36275 m!135693))

(declare-fun m!135695 () Bool)

(assert (=> d!36275 m!135695))

(declare-fun m!135697 () Bool)

(assert (=> d!36275 m!135697))

(declare-fun m!135699 () Bool)

(assert (=> d!36275 m!135699))

(declare-fun m!135701 () Bool)

(assert (=> d!36275 m!135701))

(assert (=> d!36275 m!135693))

(declare-fun m!135703 () Bool)

(assert (=> d!36275 m!135703))

(declare-fun m!135705 () Bool)

(assert (=> d!36275 m!135705))

(declare-fun m!135707 () Bool)

(assert (=> d!36275 m!135707))

(assert (=> d!36275 m!135097))

(assert (=> d!36275 m!135103))

(declare-fun m!135709 () Bool)

(assert (=> d!36275 m!135709))

(assert (=> d!36275 m!135699))

(declare-fun m!135711 () Bool)

(assert (=> d!36275 m!135711))

(declare-fun m!135713 () Bool)

(assert (=> d!36275 m!135713))

(assert (=> d!36275 m!135699))

(assert (=> d!36275 m!135097))

(assert (=> d!36275 m!135103))

(assert (=> d!36275 m!135713))

(assert (=> d!36275 m!135705))

(assert (=> d!36275 m!135713))

(declare-fun m!135715 () Bool)

(assert (=> d!36275 m!135715))

(assert (=> d!36275 m!135687))

(assert (=> d!36275 m!135097))

(assert (=> d!36275 m!135695))

(assert (=> d!36275 m!135687))

(declare-fun m!135717 () Bool)

(assert (=> d!36275 m!135717))

(assert (=> d!36275 m!134617))

(assert (=> d!36275 m!135097))

(declare-fun m!135719 () Bool)

(assert (=> d!36275 m!135719))

(declare-fun m!135721 () Bool)

(assert (=> d!36275 m!135721))

(declare-fun m!135723 () Bool)

(assert (=> d!36275 m!135723))

(declare-fun m!135725 () Bool)

(assert (=> d!36275 m!135725))

(assert (=> d!36275 m!135725))

(declare-fun m!135727 () Bool)

(assert (=> d!36275 m!135727))

(assert (=> d!36275 m!135097))

(assert (=> d!36275 m!135721))

(assert (=> b!151503 m!135687))

(assert (=> b!151503 m!135705))

(assert (=> b!151503 m!135707))

(assert (=> b!151503 m!135707))

(declare-fun m!135729 () Bool)

(assert (=> b!151503 m!135729))

(assert (=> b!151503 m!135687))

(assert (=> b!151503 m!135689))

(assert (=> b!151503 m!135705))

(declare-fun m!135731 () Bool)

(assert (=> b!151505 m!135731))

(declare-fun m!135733 () Bool)

(assert (=> b!151505 m!135733))

(declare-fun m!135735 () Bool)

(assert (=> b!151505 m!135735))

(assert (=> b!151505 m!135735))

(declare-fun m!135737 () Bool)

(assert (=> b!151505 m!135737))

(assert (=> b!151505 m!135097))

(assert (=> b!151505 m!135103))

(assert (=> b!151505 m!135713))

(assert (=> b!151505 m!135705))

(assert (=> b!151505 m!135713))

(declare-fun m!135739 () Bool)

(assert (=> b!151505 m!135739))

(assert (=> b!151505 m!135705))

(assert (=> b!151505 m!135707))

(assert (=> b!151153 d!36275))

(declare-fun d!36303 () Bool)

(declare-fun lt!44344 () BalanceConc!1472)

(declare-fun printListTailRec!38 (LexerInterface!341 List!2633 List!2631) List!2631)

(assert (=> d!36303 (= (list!917 lt!44344) (printListTailRec!38 thiss!17480 (dropList!66 (singletonSeq!25 call!6107) 0) (list!917 (BalanceConc!1473 Empty!732))))))

(declare-fun e!90532 () BalanceConc!1472)

(assert (=> d!36303 (= lt!44344 e!90532)))

(declare-fun c!30643 () Bool)

(assert (=> d!36303 (= c!30643 (>= 0 (size!2241 (singletonSeq!25 call!6107))))))

(declare-fun e!90533 () Bool)

(assert (=> d!36303 e!90533))

(declare-fun res!69455 () Bool)

(assert (=> d!36303 (=> (not res!69455) (not e!90533))))

(assert (=> d!36303 (= res!69455 (>= 0 0))))

(assert (=> d!36303 (= (printTailRec!55 thiss!17480 (singletonSeq!25 call!6107) 0 (BalanceConc!1473 Empty!732)) lt!44344)))

(declare-fun b!151540 () Bool)

(assert (=> b!151540 (= e!90533 (<= 0 (size!2241 (singletonSeq!25 call!6107))))))

(declare-fun b!151541 () Bool)

(assert (=> b!151541 (= e!90532 (BalanceConc!1473 Empty!732))))

(declare-fun b!151542 () Bool)

(assert (=> b!151542 (= e!90532 (printTailRec!55 thiss!17480 (singletonSeq!25 call!6107) (+ 0 1) (++!562 (BalanceConc!1473 Empty!732) (charsOf!110 (apply!341 (singletonSeq!25 call!6107) 0)))))))

(declare-fun lt!44341 () List!2633)

(assert (=> b!151542 (= lt!44341 (list!920 (singletonSeq!25 call!6107)))))

(declare-fun lt!44342 () Unit!1992)

(assert (=> b!151542 (= lt!44342 (lemmaDropApply!106 lt!44341 0))))

(assert (=> b!151542 (= (head!580 (drop!119 lt!44341 0)) (apply!342 lt!44341 0))))

(declare-fun lt!44343 () Unit!1992)

(assert (=> b!151542 (= lt!44343 lt!44342)))

(declare-fun lt!44340 () List!2633)

(assert (=> b!151542 (= lt!44340 (list!920 (singletonSeq!25 call!6107)))))

(declare-fun lt!44346 () Unit!1992)

(assert (=> b!151542 (= lt!44346 (lemmaDropTail!98 lt!44340 0))))

(assert (=> b!151542 (= (tail!320 (drop!119 lt!44340 0)) (drop!119 lt!44340 (+ 0 1)))))

(declare-fun lt!44345 () Unit!1992)

(assert (=> b!151542 (= lt!44345 lt!44346)))

(assert (= (and d!36303 res!69455) b!151540))

(assert (= (and d!36303 c!30643) b!151541))

(assert (= (and d!36303 (not c!30643)) b!151542))

(declare-fun m!135757 () Bool)

(assert (=> d!36303 m!135757))

(assert (=> d!36303 m!135099))

(declare-fun m!135765 () Bool)

(assert (=> d!36303 m!135765))

(assert (=> d!36303 m!135099))

(declare-fun m!135767 () Bool)

(assert (=> d!36303 m!135767))

(declare-fun m!135771 () Bool)

(assert (=> d!36303 m!135771))

(assert (=> d!36303 m!135765))

(assert (=> d!36303 m!135771))

(declare-fun m!135775 () Bool)

(assert (=> d!36303 m!135775))

(assert (=> b!151540 m!135099))

(assert (=> b!151540 m!135767))

(assert (=> b!151542 m!135099))

(declare-fun m!135779 () Bool)

(assert (=> b!151542 m!135779))

(declare-fun m!135781 () Bool)

(assert (=> b!151542 m!135781))

(declare-fun m!135783 () Bool)

(assert (=> b!151542 m!135783))

(assert (=> b!151542 m!135779))

(declare-fun m!135785 () Bool)

(assert (=> b!151542 m!135785))

(declare-fun m!135787 () Bool)

(assert (=> b!151542 m!135787))

(declare-fun m!135789 () Bool)

(assert (=> b!151542 m!135789))

(declare-fun m!135791 () Bool)

(assert (=> b!151542 m!135791))

(declare-fun m!135793 () Bool)

(assert (=> b!151542 m!135793))

(assert (=> b!151542 m!135099))

(declare-fun m!135797 () Bool)

(assert (=> b!151542 m!135797))

(assert (=> b!151542 m!135793))

(declare-fun m!135799 () Bool)

(assert (=> b!151542 m!135799))

(assert (=> b!151542 m!135789))

(declare-fun m!135803 () Bool)

(assert (=> b!151542 m!135803))

(assert (=> b!151542 m!135099))

(declare-fun m!135807 () Bool)

(assert (=> b!151542 m!135807))

(assert (=> b!151542 m!135797))

(assert (=> b!151542 m!135783))

(declare-fun m!135809 () Bool)

(assert (=> b!151542 m!135809))

(assert (=> b!151153 d!36303))

(declare-fun d!36307 () Bool)

(declare-fun lt!44347 () BalanceConc!1472)

(assert (=> d!36307 (= (list!917 lt!44347) (printList!50 thiss!17480 (list!920 (singletonSeq!25 call!6107))))))

(assert (=> d!36307 (= lt!44347 (printTailRec!55 thiss!17480 (singletonSeq!25 call!6107) 0 (BalanceConc!1473 Empty!732)))))

(assert (=> d!36307 (= (print!92 thiss!17480 (singletonSeq!25 call!6107)) lt!44347)))

(declare-fun bs!13859 () Bool)

(assert (= bs!13859 d!36307))

(declare-fun m!135813 () Bool)

(assert (=> bs!13859 m!135813))

(assert (=> bs!13859 m!135099))

(assert (=> bs!13859 m!135807))

(assert (=> bs!13859 m!135807))

(declare-fun m!135815 () Bool)

(assert (=> bs!13859 m!135815))

(assert (=> bs!13859 m!135099))

(assert (=> bs!13859 m!135107))

(assert (=> b!151153 d!36307))

(declare-fun d!36311 () Bool)

(assert (=> d!36311 (= (list!917 lt!44080) (list!921 (c!30493 lt!44080)))))

(declare-fun bs!13860 () Bool)

(assert (= bs!13860 d!36311))

(declare-fun m!135817 () Bool)

(assert (=> bs!13860 m!135817))

(assert (=> b!151153 d!36311))

(declare-fun d!36313 () Bool)

(declare-fun e!90536 () Bool)

(assert (=> d!36313 e!90536))

(declare-fun res!69458 () Bool)

(assert (=> d!36313 (=> (not res!69458) (not e!90536))))

(declare-fun lt!44349 () BalanceConc!1474)

(assert (=> d!36313 (= res!69458 (= (list!920 lt!44349) (Cons!2623 call!6107 Nil!2623)))))

(assert (=> d!36313 (= lt!44349 (singleton!18 call!6107))))

(assert (=> d!36313 (= (singletonSeq!25 call!6107) lt!44349)))

(declare-fun b!151547 () Bool)

(assert (=> b!151547 (= e!90536 (isBalanced!205 (c!30495 lt!44349)))))

(assert (= (and d!36313 res!69458) b!151547))

(declare-fun m!135819 () Bool)

(assert (=> d!36313 m!135819))

(declare-fun m!135823 () Bool)

(assert (=> d!36313 m!135823))

(declare-fun m!135827 () Bool)

(assert (=> b!151547 m!135827))

(assert (=> b!151153 d!36313))

(declare-fun d!36315 () Bool)

(assert (=> d!36315 (= (inv!3420 (dynLambda!914 (toChars!949 (transformation!455 (rule!962 separatorToken!170))) (value!17283 separatorToken!170))) (isBalanced!207 (c!30493 (dynLambda!914 (toChars!949 (transformation!455 (rule!962 separatorToken!170))) (value!17283 separatorToken!170)))))))

(declare-fun bs!13861 () Bool)

(assert (= bs!13861 d!36315))

(declare-fun m!135835 () Bool)

(assert (=> bs!13861 m!135835))

(assert (=> tb!5057 d!36315))

(declare-fun d!36319 () Bool)

(assert (=> d!36319 (= (list!917 lt!44019) (list!921 (c!30493 lt!44019)))))

(declare-fun bs!13862 () Bool)

(assert (= bs!13862 d!36319))

(declare-fun m!135837 () Bool)

(assert (=> bs!13862 m!135837))

(assert (=> d!36093 d!36319))

(declare-fun d!36321 () Bool)

(assert (=> d!36321 (= (list!917 (ite c!30574 call!6113 e!90306)) (list!921 (c!30493 (ite c!30574 call!6113 e!90306))))))

(declare-fun bs!13863 () Bool)

(assert (= bs!13863 d!36321))

(declare-fun m!135839 () Bool)

(assert (=> bs!13863 m!135839))

(assert (=> bm!6108 d!36321))

(declare-fun d!36323 () Bool)

(assert (=> d!36323 (= (list!917 call!6112) (list!921 (c!30493 call!6112)))))

(declare-fun bs!13864 () Bool)

(assert (= bs!13864 d!36323))

(declare-fun m!135841 () Bool)

(assert (=> bs!13864 m!135841))

(assert (=> b!151160 d!36323))

(declare-fun d!36325 () Bool)

(declare-fun res!69459 () Bool)

(declare-fun e!90537 () Bool)

(assert (=> d!36325 (=> res!69459 e!90537)))

(assert (=> d!36325 (= res!69459 ((_ is Nil!2623) (list!920 lt!43920)))))

(assert (=> d!36325 (= (forall!443 (list!920 lt!43920) lambda!3869) e!90537)))

(declare-fun b!151548 () Bool)

(declare-fun e!90538 () Bool)

(assert (=> b!151548 (= e!90537 e!90538)))

(declare-fun res!69460 () Bool)

(assert (=> b!151548 (=> (not res!69460) (not e!90538))))

(assert (=> b!151548 (= res!69460 (dynLambda!915 lambda!3869 (h!8020 (list!920 lt!43920))))))

(declare-fun b!151549 () Bool)

(assert (=> b!151549 (= e!90538 (forall!443 (t!24769 (list!920 lt!43920)) lambda!3869))))

(assert (= (and d!36325 (not res!69459)) b!151548))

(assert (= (and b!151548 res!69460) b!151549))

(declare-fun b_lambda!2773 () Bool)

(assert (=> (not b_lambda!2773) (not b!151548)))

(declare-fun m!135843 () Bool)

(assert (=> b!151548 m!135843))

(declare-fun m!135845 () Bool)

(assert (=> b!151549 m!135845))

(assert (=> d!36045 d!36325))

(assert (=> d!36045 d!36215))

(declare-fun d!36327 () Bool)

(declare-fun lt!44358 () Bool)

(assert (=> d!36327 (= lt!44358 (forall!443 (list!920 lt!43920) lambda!3869))))

(declare-fun forall!447 (Conc!733 Int) Bool)

(assert (=> d!36327 (= lt!44358 (forall!447 (c!30495 lt!43920) lambda!3869))))

(assert (=> d!36327 (= (forall!444 lt!43920 lambda!3869) lt!44358)))

(declare-fun bs!13867 () Bool)

(assert (= bs!13867 d!36327))

(assert (=> bs!13867 m!134737))

(assert (=> bs!13867 m!134737))

(assert (=> bs!13867 m!134739))

(declare-fun m!135857 () Bool)

(assert (=> bs!13867 m!135857))

(assert (=> d!36045 d!36327))

(assert (=> d!36045 d!36119))

(declare-fun d!36335 () Bool)

(assert (=> d!36335 (= (list!917 lt!44018) (list!921 (c!30493 lt!44018)))))

(declare-fun bs!13871 () Bool)

(assert (= bs!13871 d!36335))

(declare-fun m!135859 () Bool)

(assert (=> bs!13871 m!135859))

(assert (=> d!36089 d!36335))

(declare-fun d!36337 () Bool)

(declare-fun charsToInt!0 (List!2632) (_ BitVec 32))

(assert (=> d!36337 (= (inv!16 (value!17283 (h!8020 tokens!465))) (= (charsToInt!0 (text!3786 (value!17283 (h!8020 tokens!465)))) (value!17274 (value!17283 (h!8020 tokens!465)))))))

(declare-fun bs!13876 () Bool)

(assert (= bs!13876 d!36337))

(declare-fun m!135861 () Bool)

(assert (=> bs!13876 m!135861))

(assert (=> b!151006 d!36337))

(declare-fun d!36339 () Bool)

(declare-fun e!90552 () Bool)

(assert (=> d!36339 e!90552))

(declare-fun res!69462 () Bool)

(assert (=> d!36339 (=> (not res!69462) (not e!90552))))

(declare-fun lt!44359 () List!2631)

(assert (=> d!36339 (= res!69462 (= (content!362 lt!44359) ((_ map or) (content!362 call!6089) (content!362 lt!44015))))))

(declare-fun e!90551 () List!2631)

(assert (=> d!36339 (= lt!44359 e!90551)))

(declare-fun c!30654 () Bool)

(assert (=> d!36339 (= c!30654 ((_ is Nil!2621) call!6089))))

(assert (=> d!36339 (= (++!560 call!6089 lt!44015) lt!44359)))

(declare-fun b!151572 () Bool)

(assert (=> b!151572 (= e!90551 (Cons!2621 (h!8018 call!6089) (++!560 (t!24767 call!6089) lt!44015)))))

(declare-fun b!151571 () Bool)

(assert (=> b!151571 (= e!90551 lt!44015)))

(declare-fun b!151573 () Bool)

(declare-fun res!69461 () Bool)

(assert (=> b!151573 (=> (not res!69461) (not e!90552))))

(assert (=> b!151573 (= res!69461 (= (size!2240 lt!44359) (+ (size!2240 call!6089) (size!2240 lt!44015))))))

(declare-fun b!151574 () Bool)

(assert (=> b!151574 (= e!90552 (or (not (= lt!44015 Nil!2621)) (= lt!44359 call!6089)))))

(assert (= (and d!36339 c!30654) b!151571))

(assert (= (and d!36339 (not c!30654)) b!151572))

(assert (= (and d!36339 res!69462) b!151573))

(assert (= (and b!151573 res!69461) b!151574))

(declare-fun m!135873 () Bool)

(assert (=> d!36339 m!135873))

(declare-fun m!135877 () Bool)

(assert (=> d!36339 m!135877))

(assert (=> d!36339 m!135359))

(declare-fun m!135881 () Bool)

(assert (=> b!151572 m!135881))

(declare-fun m!135883 () Bool)

(assert (=> b!151573 m!135883))

(declare-fun m!135885 () Bool)

(assert (=> b!151573 m!135885))

(assert (=> b!151573 m!135367))

(assert (=> b!150971 d!36339))

(declare-fun d!36341 () Bool)

(declare-fun e!90554 () Bool)

(assert (=> d!36341 e!90554))

(declare-fun res!69464 () Bool)

(assert (=> d!36341 (=> (not res!69464) (not e!90554))))

(declare-fun lt!44360 () List!2631)

(assert (=> d!36341 (= res!69464 (= (content!362 lt!44360) ((_ map or) (content!362 call!6114) (content!362 lt!44092))))))

(declare-fun e!90553 () List!2631)

(assert (=> d!36341 (= lt!44360 e!90553)))

(declare-fun c!30655 () Bool)

(assert (=> d!36341 (= c!30655 ((_ is Nil!2621) call!6114))))

(assert (=> d!36341 (= (++!560 call!6114 lt!44092) lt!44360)))

(declare-fun b!151576 () Bool)

(assert (=> b!151576 (= e!90553 (Cons!2621 (h!8018 call!6114) (++!560 (t!24767 call!6114) lt!44092)))))

(declare-fun b!151575 () Bool)

(assert (=> b!151575 (= e!90553 lt!44092)))

(declare-fun b!151577 () Bool)

(declare-fun res!69463 () Bool)

(assert (=> b!151577 (=> (not res!69463) (not e!90554))))

(assert (=> b!151577 (= res!69463 (= (size!2240 lt!44360) (+ (size!2240 call!6114) (size!2240 lt!44092))))))

(declare-fun b!151578 () Bool)

(assert (=> b!151578 (= e!90554 (or (not (= lt!44092 Nil!2621)) (= lt!44360 call!6114)))))

(assert (= (and d!36341 c!30655) b!151575))

(assert (= (and d!36341 (not c!30655)) b!151576))

(assert (= (and d!36341 res!69464) b!151577))

(assert (= (and b!151577 res!69463) b!151578))

(declare-fun m!135901 () Bool)

(assert (=> d!36341 m!135901))

(declare-fun m!135903 () Bool)

(assert (=> d!36341 m!135903))

(declare-fun m!135905 () Bool)

(assert (=> d!36341 m!135905))

(declare-fun m!135907 () Bool)

(assert (=> b!151576 m!135907))

(declare-fun m!135909 () Bool)

(assert (=> b!151577 m!135909))

(declare-fun m!135911 () Bool)

(assert (=> b!151577 m!135911))

(declare-fun m!135913 () Bool)

(assert (=> b!151577 m!135913))

(assert (=> b!151165 d!36341))

(declare-fun d!36345 () Bool)

(declare-fun lt!44361 () Int)

(assert (=> d!36345 (>= lt!44361 0)))

(declare-fun e!90555 () Int)

(assert (=> d!36345 (= lt!44361 e!90555)))

(declare-fun c!30656 () Bool)

(assert (=> d!36345 (= c!30656 ((_ is Nil!2621) (originalCharacters!498 (h!8020 tokens!465))))))

(assert (=> d!36345 (= (size!2240 (originalCharacters!498 (h!8020 tokens!465))) lt!44361)))

(declare-fun b!151579 () Bool)

(assert (=> b!151579 (= e!90555 0)))

(declare-fun b!151580 () Bool)

(assert (=> b!151580 (= e!90555 (+ 1 (size!2240 (t!24767 (originalCharacters!498 (h!8020 tokens!465))))))))

(assert (= (and d!36345 c!30656) b!151579))

(assert (= (and d!36345 (not c!30656)) b!151580))

(declare-fun m!135915 () Bool)

(assert (=> b!151580 m!135915))

(assert (=> b!151014 d!36345))

(declare-fun bs!13877 () Bool)

(declare-fun d!36347 () Bool)

(assert (= bs!13877 (and d!36347 d!36217)))

(declare-fun lambda!3919 () Int)

(assert (=> bs!13877 (= (= (toValue!1090 (transformation!455 (rule!962 separatorToken!170))) (toValue!1090 (transformation!455 (rule!962 (h!8020 tokens!465))))) (= lambda!3919 lambda!3909))))

(declare-fun bs!13878 () Bool)

(assert (= bs!13878 (and d!36347 d!36223)))

(assert (=> bs!13878 (= (= (toValue!1090 (transformation!455 (rule!962 separatorToken!170))) (toValue!1090 (transformation!455 (h!8021 rules!1920)))) (= lambda!3919 lambda!3910))))

(assert (=> d!36347 true))

(assert (=> d!36347 (< (dynLambda!911 order!1295 (toValue!1090 (transformation!455 (rule!962 separatorToken!170)))) (dynLambda!917 order!1309 lambda!3919))))

(assert (=> d!36347 (= (equivClasses!140 (toChars!949 (transformation!455 (rule!962 separatorToken!170))) (toValue!1090 (transformation!455 (rule!962 separatorToken!170)))) (Forall2!98 lambda!3919))))

(declare-fun bs!13879 () Bool)

(assert (= bs!13879 d!36347))

(declare-fun m!135917 () Bool)

(assert (=> bs!13879 m!135917))

(assert (=> b!150988 d!36347))

(declare-fun d!36349 () Bool)

(declare-fun res!69465 () Bool)

(declare-fun e!90556 () Bool)

(assert (=> d!36349 (=> res!69465 e!90556)))

(assert (=> d!36349 (= res!69465 (not ((_ is Cons!2624) (t!24770 rules!1920))))))

(assert (=> d!36349 (= (sepAndNonSepRulesDisjointChars!44 rules!1920 (t!24770 rules!1920)) e!90556)))

(declare-fun b!151581 () Bool)

(declare-fun e!90557 () Bool)

(assert (=> b!151581 (= e!90556 e!90557)))

(declare-fun res!69466 () Bool)

(assert (=> b!151581 (=> (not res!69466) (not e!90557))))

(assert (=> b!151581 (= res!69466 (ruleDisjointCharsFromAllFromOtherType!16 (h!8021 (t!24770 rules!1920)) rules!1920))))

(declare-fun b!151582 () Bool)

(assert (=> b!151582 (= e!90557 (sepAndNonSepRulesDisjointChars!44 rules!1920 (t!24770 (t!24770 rules!1920))))))

(assert (= (and d!36349 (not res!69465)) b!151581))

(assert (= (and b!151581 res!69466) b!151582))

(declare-fun m!135919 () Bool)

(assert (=> b!151581 m!135919))

(declare-fun m!135921 () Bool)

(assert (=> b!151582 m!135921))

(assert (=> b!151177 d!36349))

(declare-fun bs!13881 () Bool)

(declare-fun d!36351 () Bool)

(assert (= bs!13881 (and d!36351 d!36079)))

(declare-fun lambda!3920 () Int)

(assert (=> bs!13881 (not (= lambda!3920 lambda!3876))))

(declare-fun bs!13882 () Bool)

(assert (= bs!13882 (and d!36351 b!151166)))

(assert (=> bs!13882 (not (= lambda!3920 lambda!3898))))

(declare-fun bs!13883 () Bool)

(assert (= bs!13883 (and d!36351 b!151417)))

(assert (=> bs!13883 (not (= lambda!3920 lambda!3913))))

(declare-fun bs!13884 () Bool)

(assert (= bs!13884 (and d!36351 d!36213)))

(assert (=> bs!13884 (not (= lambda!3920 lambda!3906))))

(declare-fun bs!13885 () Bool)

(assert (= bs!13885 (and d!36351 d!36045)))

(assert (=> bs!13885 (not (= lambda!3920 lambda!3869))))

(declare-fun bs!13886 () Bool)

(assert (= bs!13886 (and d!36351 d!36199)))

(assert (=> bs!13886 (not (= lambda!3920 lambda!3902))))

(declare-fun bs!13887 () Bool)

(assert (= bs!13887 (and d!36351 d!36135)))

(assert (=> bs!13887 (= lambda!3920 lambda!3896)))

(declare-fun bs!13888 () Bool)

(assert (= bs!13888 (and d!36351 b!150972)))

(assert (=> bs!13888 (not (= lambda!3920 lambda!3882))))

(declare-fun bs!13889 () Bool)

(assert (= bs!13889 (and d!36351 b!151155)))

(assert (=> bs!13889 (not (= lambda!3920 lambda!3897))))

(declare-fun bs!13890 () Bool)

(assert (= bs!13890 (and d!36351 b!150772)))

(assert (=> bs!13890 (= lambda!3920 lambda!3862)))

(declare-fun bs!13891 () Bool)

(declare-fun b!151593 () Bool)

(assert (= bs!13891 (and b!151593 d!36079)))

(declare-fun lambda!3921 () Int)

(assert (=> bs!13891 (= lambda!3921 lambda!3876)))

(declare-fun bs!13893 () Bool)

(assert (= bs!13893 (and b!151593 d!36351)))

(assert (=> bs!13893 (not (= lambda!3921 lambda!3920))))

(declare-fun bs!13894 () Bool)

(assert (= bs!13894 (and b!151593 b!151166)))

(assert (=> bs!13894 (= lambda!3921 lambda!3898)))

(declare-fun bs!13895 () Bool)

(assert (= bs!13895 (and b!151593 b!151417)))

(assert (=> bs!13895 (= lambda!3921 lambda!3913)))

(declare-fun bs!13896 () Bool)

(assert (= bs!13896 (and b!151593 d!36213)))

(assert (=> bs!13896 (= lambda!3921 lambda!3906)))

(declare-fun bs!13897 () Bool)

(assert (= bs!13897 (and b!151593 d!36045)))

(assert (=> bs!13897 (= lambda!3921 lambda!3869)))

(declare-fun bs!13898 () Bool)

(assert (= bs!13898 (and b!151593 d!36199)))

(assert (=> bs!13898 (= lambda!3921 lambda!3902)))

(declare-fun bs!13899 () Bool)

(assert (= bs!13899 (and b!151593 d!36135)))

(assert (=> bs!13899 (not (= lambda!3921 lambda!3896))))

(declare-fun bs!13900 () Bool)

(assert (= bs!13900 (and b!151593 b!150972)))

(assert (=> bs!13900 (= lambda!3921 lambda!3882)))

(declare-fun bs!13901 () Bool)

(assert (= bs!13901 (and b!151593 b!151155)))

(assert (=> bs!13901 (= lambda!3921 lambda!3897)))

(declare-fun bs!13902 () Bool)

(assert (= bs!13902 (and b!151593 b!150772)))

(assert (=> bs!13902 (not (= lambda!3921 lambda!3862))))

(declare-fun b!151596 () Bool)

(declare-fun e!90567 () Bool)

(assert (=> b!151596 (= e!90567 true)))

(declare-fun b!151595 () Bool)

(declare-fun e!90566 () Bool)

(assert (=> b!151595 (= e!90566 e!90567)))

(declare-fun b!151594 () Bool)

(declare-fun e!90565 () Bool)

(assert (=> b!151594 (= e!90565 e!90566)))

(assert (=> b!151593 e!90565))

(assert (= b!151595 b!151596))

(assert (= b!151594 b!151595))

(assert (= (and b!151593 ((_ is Cons!2624) rules!1920)) b!151594))

(assert (=> b!151596 (< (dynLambda!911 order!1295 (toValue!1090 (transformation!455 (h!8021 rules!1920)))) (dynLambda!912 order!1297 lambda!3921))))

(assert (=> b!151596 (< (dynLambda!913 order!1299 (toChars!949 (transformation!455 (h!8021 rules!1920)))) (dynLambda!912 order!1297 lambda!3921))))

(assert (=> b!151593 true))

(declare-fun b!151583 () Bool)

(declare-fun e!90561 () Bool)

(assert (=> b!151583 (= e!90561 (<= (+ 0 1) (size!2241 lt!43920)))))

(declare-fun bm!6133 () Bool)

(declare-fun call!6142 () Token!654)

(assert (=> bm!6133 (= call!6142 (apply!341 lt!43920 (+ 0 1)))))

(declare-fun b!151584 () Bool)

(declare-fun e!90563 () BalanceConc!1472)

(assert (=> b!151584 (= e!90563 (BalanceConc!1473 Empty!732))))

(declare-fun b!151585 () Bool)

(declare-fun c!30659 () Bool)

(declare-fun e!90564 () Bool)

(assert (=> b!151585 (= c!30659 e!90564)))

(declare-fun res!69467 () Bool)

(assert (=> b!151585 (=> (not res!69467) (not e!90564))))

(declare-fun lt!44374 () Option!239)

(assert (=> b!151585 (= res!69467 ((_ is Some!238) lt!44374))))

(declare-fun e!90558 () BalanceConc!1472)

(declare-fun e!90560 () BalanceConc!1472)

(assert (=> b!151585 (= e!90558 e!90560)))

(declare-fun b!151586 () Bool)

(declare-fun e!90559 () Bool)

(assert (=> b!151586 (= e!90559 (= (_1!1501 (v!13615 lt!44374)) (apply!341 lt!43920 (+ 0 1))))))

(declare-fun b!151587 () Bool)

(declare-fun call!6139 () BalanceConc!1472)

(assert (=> b!151587 (= e!90558 call!6139)))

(declare-fun b!151588 () Bool)

(declare-fun e!90562 () BalanceConc!1472)

(declare-fun call!6138 () Token!654)

(assert (=> b!151588 (= e!90562 (charsOf!110 call!6138))))

(declare-fun bm!6134 () Bool)

(declare-fun call!6141 () BalanceConc!1472)

(declare-fun call!6140 () BalanceConc!1472)

(assert (=> bm!6134 (= call!6141 call!6140)))

(declare-fun bm!6135 () Bool)

(declare-fun c!30658 () Bool)

(assert (=> bm!6135 (= call!6140 (charsOf!110 (ite c!30658 call!6142 (ite c!30659 separatorToken!170 call!6138))))))

(declare-fun lt!44376 () BalanceConc!1472)

(assert (=> d!36351 (= (list!917 lt!44376) (printWithSeparatorTokenWhenNeededList!34 thiss!17480 rules!1920 (dropList!66 lt!43920 (+ 0 1)) separatorToken!170))))

(assert (=> d!36351 (= lt!44376 e!90563)))

(declare-fun c!30660 () Bool)

(assert (=> d!36351 (= c!30660 (>= (+ 0 1) (size!2241 lt!43920)))))

(declare-fun lt!44373 () Unit!1992)

(assert (=> d!36351 (= lt!44373 (lemmaContentSubsetPreservesForall!10 (list!920 lt!43920) (dropList!66 lt!43920 (+ 0 1)) lambda!3920))))

(assert (=> d!36351 e!90561))

(declare-fun res!69469 () Bool)

(assert (=> d!36351 (=> (not res!69469) (not e!90561))))

(assert (=> d!36351 (= res!69469 (>= (+ 0 1) 0))))

(assert (=> d!36351 (= (printWithSeparatorTokenWhenNeededRec!24 thiss!17480 rules!1920 lt!43920 separatorToken!170 (+ 0 1)) lt!44376)))

(declare-fun b!151589 () Bool)

(assert (=> b!151589 (= e!90562 call!6140)))

(declare-fun b!151590 () Bool)

(assert (=> b!151590 (= e!90564 (not (= (_1!1501 (v!13615 lt!44374)) call!6142)))))

(declare-fun b!151591 () Bool)

(assert (=> b!151591 (= e!90560 (BalanceConc!1473 Empty!732))))

(assert (=> b!151591 (= (print!92 thiss!17480 (singletonSeq!25 call!6138)) (printTailRec!55 thiss!17480 (singletonSeq!25 call!6138) 0 (BalanceConc!1473 Empty!732)))))

(declare-fun lt!44366 () Unit!1992)

(declare-fun Unit!2012 () Unit!1992)

(assert (=> b!151591 (= lt!44366 Unit!2012)))

(declare-fun lt!44372 () BalanceConc!1472)

(declare-fun lt!44371 () Unit!1992)

(assert (=> b!151591 (= lt!44371 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!14 thiss!17480 rules!1920 (list!917 call!6141) (list!917 lt!44372)))))

(assert (=> b!151591 false))

(declare-fun lt!44370 () Unit!1992)

(declare-fun Unit!2013 () Unit!1992)

(assert (=> b!151591 (= lt!44370 Unit!2013)))

(declare-fun bm!6136 () Bool)

(assert (=> bm!6136 (= call!6138 call!6142)))

(declare-fun b!151592 () Bool)

(assert (=> b!151592 (= e!90560 (++!562 call!6139 lt!44372))))

(declare-fun bm!6137 () Bool)

(declare-fun c!30657 () Bool)

(assert (=> bm!6137 (= c!30657 c!30658)))

(assert (=> bm!6137 (= call!6139 (++!562 e!90562 (ite c!30658 lt!44372 call!6141)))))

(assert (=> b!151593 (= e!90563 e!90558)))

(declare-fun lt!44375 () List!2633)

(assert (=> b!151593 (= lt!44375 (list!920 lt!43920))))

(declare-fun lt!44365 () Unit!1992)

(assert (=> b!151593 (= lt!44365 (lemmaDropApply!106 lt!44375 (+ 0 1)))))

(assert (=> b!151593 (= (head!580 (drop!119 lt!44375 (+ 0 1))) (apply!342 lt!44375 (+ 0 1)))))

(declare-fun lt!44377 () Unit!1992)

(assert (=> b!151593 (= lt!44377 lt!44365)))

(declare-fun lt!44378 () List!2633)

(assert (=> b!151593 (= lt!44378 (list!920 lt!43920))))

(declare-fun lt!44368 () Unit!1992)

(assert (=> b!151593 (= lt!44368 (lemmaDropTail!98 lt!44378 (+ 0 1)))))

(assert (=> b!151593 (= (tail!320 (drop!119 lt!44378 (+ 0 1))) (drop!119 lt!44378 (+ 0 1 1)))))

(declare-fun lt!44369 () Unit!1992)

(assert (=> b!151593 (= lt!44369 lt!44368)))

(declare-fun lt!44367 () Unit!1992)

(assert (=> b!151593 (= lt!44367 (forallContained!50 (list!920 lt!43920) lambda!3921 (apply!341 lt!43920 (+ 0 1))))))

(assert (=> b!151593 (= lt!44372 (printWithSeparatorTokenWhenNeededRec!24 thiss!17480 rules!1920 lt!43920 separatorToken!170 (+ 0 1 1)))))

(assert (=> b!151593 (= lt!44374 (maxPrefixZipperSequence!66 thiss!17480 rules!1920 (++!562 (charsOf!110 (apply!341 lt!43920 (+ 0 1))) lt!44372)))))

(declare-fun res!69468 () Bool)

(assert (=> b!151593 (= res!69468 ((_ is Some!238) lt!44374))))

(assert (=> b!151593 (=> (not res!69468) (not e!90559))))

(assert (=> b!151593 (= c!30658 e!90559)))

(assert (= (and d!36351 res!69469) b!151583))

(assert (= (and d!36351 c!30660) b!151584))

(assert (= (and d!36351 (not c!30660)) b!151593))

(assert (= (and b!151593 res!69468) b!151586))

(assert (= (and b!151593 c!30658) b!151587))

(assert (= (and b!151593 (not c!30658)) b!151585))

(assert (= (and b!151585 res!69467) b!151590))

(assert (= (and b!151585 c!30659) b!151592))

(assert (= (and b!151585 (not c!30659)) b!151591))

(assert (= (or b!151592 b!151591) bm!6136))

(assert (= (or b!151592 b!151591) bm!6134))

(assert (= (or b!151587 b!151590 bm!6136) bm!6133))

(assert (= (or b!151587 bm!6134) bm!6135))

(assert (= (or b!151587 b!151592) bm!6137))

(assert (= (and bm!6137 c!30657) b!151589))

(assert (= (and bm!6137 (not c!30657)) b!151588))

(declare-fun m!135937 () Bool)

(assert (=> b!151593 m!135937))

(declare-fun m!135939 () Bool)

(assert (=> b!151593 m!135939))

(declare-fun m!135941 () Bool)

(assert (=> b!151593 m!135941))

(assert (=> b!151593 m!134737))

(assert (=> b!151593 m!135937))

(declare-fun m!135943 () Bool)

(assert (=> b!151593 m!135943))

(assert (=> b!151593 m!135937))

(declare-fun m!135945 () Bool)

(assert (=> b!151593 m!135945))

(assert (=> b!151593 m!134737))

(declare-fun m!135947 () Bool)

(assert (=> b!151593 m!135947))

(declare-fun m!135949 () Bool)

(assert (=> b!151593 m!135949))

(declare-fun m!135951 () Bool)

(assert (=> b!151593 m!135951))

(assert (=> b!151593 m!135939))

(declare-fun m!135953 () Bool)

(assert (=> b!151593 m!135953))

(declare-fun m!135955 () Bool)

(assert (=> b!151593 m!135955))

(declare-fun m!135957 () Bool)

(assert (=> b!151593 m!135957))

(assert (=> b!151593 m!135945))

(declare-fun m!135959 () Bool)

(assert (=> b!151593 m!135959))

(assert (=> b!151593 m!135953))

(declare-fun m!135961 () Bool)

(assert (=> b!151593 m!135961))

(assert (=> b!151593 m!135949))

(declare-fun m!135963 () Bool)

(assert (=> b!151593 m!135963))

(assert (=> bm!6133 m!135937))

(declare-fun m!135965 () Bool)

(assert (=> d!36351 m!135965))

(declare-fun m!135967 () Bool)

(assert (=> d!36351 m!135967))

(assert (=> d!36351 m!134737))

(assert (=> d!36351 m!134737))

(assert (=> d!36351 m!135965))

(declare-fun m!135969 () Bool)

(assert (=> d!36351 m!135969))

(assert (=> d!36351 m!135965))

(assert (=> d!36351 m!135085))

(declare-fun m!135971 () Bool)

(assert (=> d!36351 m!135971))

(declare-fun m!135973 () Bool)

(assert (=> b!151592 m!135973))

(declare-fun m!135975 () Bool)

(assert (=> bm!6135 m!135975))

(declare-fun m!135977 () Bool)

(assert (=> b!151588 m!135977))

(assert (=> b!151583 m!135085))

(declare-fun m!135979 () Bool)

(assert (=> bm!6137 m!135979))

(declare-fun m!135981 () Bool)

(assert (=> b!151591 m!135981))

(declare-fun m!135983 () Bool)

(assert (=> b!151591 m!135983))

(declare-fun m!135985 () Bool)

(assert (=> b!151591 m!135985))

(declare-fun m!135987 () Bool)

(assert (=> b!151591 m!135987))

(assert (=> b!151591 m!135981))

(assert (=> b!151591 m!135987))

(declare-fun m!135989 () Bool)

(assert (=> b!151591 m!135989))

(assert (=> b!151591 m!135983))

(declare-fun m!135991 () Bool)

(assert (=> b!151591 m!135991))

(assert (=> b!151591 m!135983))

(assert (=> b!151586 m!135937))

(assert (=> b!151155 d!36351))

(declare-fun d!36361 () Bool)

(assert (=> d!36361 (dynLambda!915 lambda!3897 (apply!341 lt!43920 0))))

(declare-fun lt!44382 () Unit!1992)

(assert (=> d!36361 (= lt!44382 (choose!1745 (list!920 lt!43920) lambda!3897 (apply!341 lt!43920 0)))))

(declare-fun e!90568 () Bool)

(assert (=> d!36361 e!90568))

(declare-fun res!69470 () Bool)

(assert (=> d!36361 (=> (not res!69470) (not e!90568))))

(assert (=> d!36361 (= res!69470 (forall!443 (list!920 lt!43920) lambda!3897))))

(assert (=> d!36361 (= (forallContained!50 (list!920 lt!43920) lambda!3897 (apply!341 lt!43920 0)) lt!44382)))

(declare-fun b!151597 () Bool)

(assert (=> b!151597 (= e!90568 (contains!416 (list!920 lt!43920) (apply!341 lt!43920 0)))))

(assert (= (and d!36361 res!69470) b!151597))

(declare-fun b_lambda!2775 () Bool)

(assert (=> (not b_lambda!2775) (not d!36361)))

(assert (=> d!36361 m!135051))

(declare-fun m!135993 () Bool)

(assert (=> d!36361 m!135993))

(assert (=> d!36361 m!134737))

(assert (=> d!36361 m!135051))

(declare-fun m!135995 () Bool)

(assert (=> d!36361 m!135995))

(assert (=> d!36361 m!134737))

(declare-fun m!135997 () Bool)

(assert (=> d!36361 m!135997))

(assert (=> b!151597 m!134737))

(assert (=> b!151597 m!135051))

(declare-fun m!135999 () Bool)

(assert (=> b!151597 m!135999))

(assert (=> b!151155 d!36361))

(declare-fun d!36363 () Bool)

(assert (=> d!36363 (= (head!580 (drop!119 lt!44083 0)) (h!8020 (drop!119 lt!44083 0)))))

(assert (=> b!151155 d!36363))

(declare-fun d!36365 () Bool)

(assert (=> d!36365 (= (tail!320 (drop!119 lt!44086 0)) (t!24769 (drop!119 lt!44086 0)))))

(assert (=> b!151155 d!36365))

(declare-fun d!36367 () Bool)

(declare-fun lt!44383 () BalanceConc!1472)

(assert (=> d!36367 (= (list!917 lt!44383) (originalCharacters!498 (apply!341 lt!43920 0)))))

(assert (=> d!36367 (= lt!44383 (dynLambda!914 (toChars!949 (transformation!455 (rule!962 (apply!341 lt!43920 0)))) (value!17283 (apply!341 lt!43920 0))))))

(assert (=> d!36367 (= (charsOf!110 (apply!341 lt!43920 0)) lt!44383)))

(declare-fun b_lambda!2777 () Bool)

(assert (=> (not b_lambda!2777) (not d!36367)))

(declare-fun tb!5115 () Bool)

(declare-fun t!24874 () Bool)

(assert (=> (and b!150754 (= (toChars!949 (transformation!455 (h!8021 rules!1920))) (toChars!949 (transformation!455 (rule!962 (apply!341 lt!43920 0))))) t!24874) tb!5115))

(declare-fun b!151606 () Bool)

(declare-fun e!90575 () Bool)

(declare-fun tp!78803 () Bool)

(assert (=> b!151606 (= e!90575 (and (inv!3419 (c!30493 (dynLambda!914 (toChars!949 (transformation!455 (rule!962 (apply!341 lt!43920 0)))) (value!17283 (apply!341 lt!43920 0))))) tp!78803))))

(declare-fun result!7570 () Bool)

(assert (=> tb!5115 (= result!7570 (and (inv!3420 (dynLambda!914 (toChars!949 (transformation!455 (rule!962 (apply!341 lt!43920 0)))) (value!17283 (apply!341 lt!43920 0)))) e!90575))))

(assert (= tb!5115 b!151606))

(declare-fun m!136001 () Bool)

(assert (=> b!151606 m!136001))

(declare-fun m!136003 () Bool)

(assert (=> tb!5115 m!136003))

(assert (=> d!36367 t!24874))

(declare-fun b_and!8753 () Bool)

(assert (= b_and!8751 (and (=> t!24874 result!7570) b_and!8753)))

(declare-fun tb!5117 () Bool)

(declare-fun t!24876 () Bool)

(assert (=> (and b!151202 (= (toChars!949 (transformation!455 (h!8021 (t!24770 rules!1920)))) (toChars!949 (transformation!455 (rule!962 (apply!341 lt!43920 0))))) t!24876) tb!5117))

(declare-fun result!7572 () Bool)

(assert (= result!7572 result!7570))

(assert (=> d!36367 t!24876))

(declare-fun b_and!8755 () Bool)

(assert (= b_and!8747 (and (=> t!24876 result!7572) b_and!8755)))

(declare-fun t!24878 () Bool)

(declare-fun tb!5119 () Bool)

(assert (=> (and b!151230 (= (toChars!949 (transformation!455 (rule!962 (h!8020 (t!24769 tokens!465))))) (toChars!949 (transformation!455 (rule!962 (apply!341 lt!43920 0))))) t!24878) tb!5119))

(declare-fun result!7574 () Bool)

(assert (= result!7574 result!7570))

(assert (=> d!36367 t!24878))

(declare-fun b_and!8757 () Bool)

(assert (= b_and!8749 (and (=> t!24878 result!7574) b_and!8757)))

(declare-fun t!24880 () Bool)

(declare-fun tb!5121 () Bool)

(assert (=> (and b!150757 (= (toChars!949 (transformation!455 (rule!962 (h!8020 tokens!465)))) (toChars!949 (transformation!455 (rule!962 (apply!341 lt!43920 0))))) t!24880) tb!5121))

(declare-fun result!7576 () Bool)

(assert (= result!7576 result!7570))

(assert (=> d!36367 t!24880))

(declare-fun b_and!8759 () Bool)

(assert (= b_and!8743 (and (=> t!24880 result!7576) b_and!8759)))

(declare-fun t!24882 () Bool)

(declare-fun tb!5123 () Bool)

(assert (=> (and b!150761 (= (toChars!949 (transformation!455 (rule!962 separatorToken!170))) (toChars!949 (transformation!455 (rule!962 (apply!341 lt!43920 0))))) t!24882) tb!5123))

(declare-fun result!7578 () Bool)

(assert (= result!7578 result!7570))

(assert (=> d!36367 t!24882))

(declare-fun b_and!8761 () Bool)

(assert (= b_and!8745 (and (=> t!24882 result!7578) b_and!8761)))

(declare-fun m!136009 () Bool)

(assert (=> d!36367 m!136009))

(declare-fun m!136011 () Bool)

(assert (=> d!36367 m!136011))

(assert (=> b!151155 d!36367))

(declare-fun d!36373 () Bool)

(assert (=> d!36373 (= (tail!320 (drop!119 lt!44086 0)) (drop!119 lt!44086 (+ 0 1)))))

(declare-fun lt!44389 () Unit!1992)

(declare-fun choose!1748 (List!2633 Int) Unit!1992)

(assert (=> d!36373 (= lt!44389 (choose!1748 lt!44086 0))))

(declare-fun e!90585 () Bool)

(assert (=> d!36373 e!90585))

(declare-fun res!69480 () Bool)

(assert (=> d!36373 (=> (not res!69480) (not e!90585))))

(assert (=> d!36373 (= res!69480 (>= 0 0))))

(assert (=> d!36373 (= (lemmaDropTail!98 lt!44086 0) lt!44389)))

(declare-fun b!151620 () Bool)

(declare-fun size!2246 (List!2633) Int)

(assert (=> b!151620 (= e!90585 (< 0 (size!2246 lt!44086)))))

(assert (= (and d!36373 res!69480) b!151620))

(assert (=> d!36373 m!135059))

(assert (=> d!36373 m!135059))

(assert (=> d!36373 m!135073))

(assert (=> d!36373 m!135069))

(declare-fun m!136021 () Bool)

(assert (=> d!36373 m!136021))

(declare-fun m!136023 () Bool)

(assert (=> b!151620 m!136023))

(assert (=> b!151155 d!36373))

(assert (=> b!151155 d!36215))

(assert (=> b!151155 d!36197))

(declare-fun bm!6148 () Bool)

(declare-fun call!6153 () Option!239)

(declare-fun maxPrefixOneRuleZipperSequence!23 (LexerInterface!341 Rule!710 BalanceConc!1472) Option!239)

(assert (=> bm!6148 (= call!6153 (maxPrefixOneRuleZipperSequence!23 thiss!17480 (h!8021 rules!1920) (++!562 (charsOf!110 (apply!341 lt!43920 0)) lt!44080)))))

(declare-fun d!36383 () Bool)

(declare-fun e!90645 () Bool)

(assert (=> d!36383 e!90645))

(declare-fun res!69529 () Bool)

(assert (=> d!36383 (=> (not res!69529) (not e!90645))))

(declare-fun lt!44423 () Option!239)

(declare-fun isDefined!101 (Option!239) Bool)

(declare-fun maxPrefixZipper!22 (LexerInterface!341 List!2634 List!2631) Option!238)

(assert (=> d!36383 (= res!69529 (= (isDefined!101 lt!44423) (isDefined!99 (maxPrefixZipper!22 thiss!17480 rules!1920 (list!917 (++!562 (charsOf!110 (apply!341 lt!43920 0)) lt!44080))))))))

(declare-fun e!90650 () Option!239)

(assert (=> d!36383 (= lt!44423 e!90650)))

(declare-fun c!30691 () Bool)

(assert (=> d!36383 (= c!30691 (and ((_ is Cons!2624) rules!1920) ((_ is Nil!2624) (t!24770 rules!1920))))))

(declare-fun lt!44426 () Unit!1992)

(declare-fun lt!44425 () Unit!1992)

(assert (=> d!36383 (= lt!44426 lt!44425)))

(declare-fun lt!44429 () List!2631)

(declare-fun lt!44428 () List!2631)

(assert (=> d!36383 (isPrefix!211 lt!44429 lt!44428)))

(assert (=> d!36383 (= lt!44425 (lemmaIsPrefixRefl!118 lt!44429 lt!44428))))

(assert (=> d!36383 (= lt!44428 (list!917 (++!562 (charsOf!110 (apply!341 lt!43920 0)) lt!44080)))))

(assert (=> d!36383 (= lt!44429 (list!917 (++!562 (charsOf!110 (apply!341 lt!43920 0)) lt!44080)))))

(assert (=> d!36383 (rulesValidInductive!95 thiss!17480 rules!1920)))

(assert (=> d!36383 (= (maxPrefixZipperSequence!66 thiss!17480 rules!1920 (++!562 (charsOf!110 (apply!341 lt!43920 0)) lt!44080)) lt!44423)))

(declare-fun b!151714 () Bool)

(assert (=> b!151714 (= e!90650 call!6153)))

(declare-fun b!151715 () Bool)

(declare-fun e!90648 () Bool)

(assert (=> b!151715 (= e!90645 e!90648)))

(declare-fun res!69528 () Bool)

(assert (=> b!151715 (=> res!69528 e!90648)))

(assert (=> b!151715 (= res!69528 (not (isDefined!101 lt!44423)))))

(declare-fun b!151716 () Bool)

(declare-fun e!90647 () Bool)

(declare-fun get!712 (Option!239) tuple2!2570)

(assert (=> b!151716 (= e!90647 (= (list!917 (_2!1501 (get!712 lt!44423))) (_2!1499 (get!710 (maxPrefix!107 thiss!17480 rules!1920 (list!917 (++!562 (charsOf!110 (apply!341 lt!43920 0)) lt!44080)))))))))

(declare-fun b!151717 () Bool)

(assert (=> b!151717 (= e!90648 e!90647)))

(declare-fun res!69524 () Bool)

(assert (=> b!151717 (=> (not res!69524) (not e!90647))))

(assert (=> b!151717 (= res!69524 (= (_1!1501 (get!712 lt!44423)) (_1!1499 (get!710 (maxPrefix!107 thiss!17480 rules!1920 (list!917 (++!562 (charsOf!110 (apply!341 lt!43920 0)) lt!44080)))))))))

(declare-fun b!151718 () Bool)

(declare-fun e!90646 () Bool)

(declare-fun e!90649 () Bool)

(assert (=> b!151718 (= e!90646 e!90649)))

(declare-fun res!69527 () Bool)

(assert (=> b!151718 (=> (not res!69527) (not e!90649))))

(assert (=> b!151718 (= res!69527 (= (_1!1501 (get!712 lt!44423)) (_1!1499 (get!710 (maxPrefixZipper!22 thiss!17480 rules!1920 (list!917 (++!562 (charsOf!110 (apply!341 lt!43920 0)) lt!44080)))))))))

(declare-fun b!151719 () Bool)

(declare-fun lt!44427 () Option!239)

(declare-fun lt!44424 () Option!239)

(assert (=> b!151719 (= e!90650 (ite (and ((_ is None!238) lt!44427) ((_ is None!238) lt!44424)) None!238 (ite ((_ is None!238) lt!44424) lt!44427 (ite ((_ is None!238) lt!44427) lt!44424 (ite (>= (size!2237 (_1!1501 (v!13615 lt!44427))) (size!2237 (_1!1501 (v!13615 lt!44424)))) lt!44427 lt!44424)))))))

(assert (=> b!151719 (= lt!44427 call!6153)))

(assert (=> b!151719 (= lt!44424 (maxPrefixZipperSequence!66 thiss!17480 (t!24770 rules!1920) (++!562 (charsOf!110 (apply!341 lt!43920 0)) lt!44080)))))

(declare-fun b!151720 () Bool)

(declare-fun res!69526 () Bool)

(assert (=> b!151720 (=> (not res!69526) (not e!90645))))

(assert (=> b!151720 (= res!69526 e!90646)))

(declare-fun res!69525 () Bool)

(assert (=> b!151720 (=> res!69525 e!90646)))

(assert (=> b!151720 (= res!69525 (not (isDefined!101 lt!44423)))))

(declare-fun b!151721 () Bool)

(assert (=> b!151721 (= e!90649 (= (list!917 (_2!1501 (get!712 lt!44423))) (_2!1499 (get!710 (maxPrefixZipper!22 thiss!17480 rules!1920 (list!917 (++!562 (charsOf!110 (apply!341 lt!43920 0)) lt!44080)))))))))

(assert (= (and d!36383 c!30691) b!151714))

(assert (= (and d!36383 (not c!30691)) b!151719))

(assert (= (or b!151714 b!151719) bm!6148))

(assert (= (and d!36383 res!69529) b!151720))

(assert (= (and b!151720 (not res!69525)) b!151718))

(assert (= (and b!151718 res!69527) b!151721))

(assert (= (and b!151720 res!69526) b!151715))

(assert (= (and b!151715 (not res!69528)) b!151717))

(assert (= (and b!151717 res!69524) b!151716))

(declare-fun m!136157 () Bool)

(assert (=> d!36383 m!136157))

(declare-fun m!136159 () Bool)

(assert (=> d!36383 m!136159))

(declare-fun m!136161 () Bool)

(assert (=> d!36383 m!136161))

(declare-fun m!136163 () Bool)

(assert (=> d!36383 m!136163))

(assert (=> d!36383 m!135067))

(declare-fun m!136165 () Bool)

(assert (=> d!36383 m!136165))

(assert (=> d!36383 m!136165))

(assert (=> d!36383 m!136159))

(declare-fun m!136167 () Bool)

(assert (=> d!36383 m!136167))

(assert (=> d!36383 m!135279))

(assert (=> bm!6148 m!135067))

(declare-fun m!136169 () Bool)

(assert (=> bm!6148 m!136169))

(assert (=> b!151719 m!135067))

(declare-fun m!136171 () Bool)

(assert (=> b!151719 m!136171))

(assert (=> b!151716 m!136165))

(declare-fun m!136173 () Bool)

(assert (=> b!151716 m!136173))

(declare-fun m!136175 () Bool)

(assert (=> b!151716 m!136175))

(assert (=> b!151716 m!135067))

(assert (=> b!151716 m!136165))

(declare-fun m!136177 () Bool)

(assert (=> b!151716 m!136177))

(assert (=> b!151716 m!136173))

(declare-fun m!136179 () Bool)

(assert (=> b!151716 m!136179))

(assert (=> b!151718 m!136175))

(assert (=> b!151718 m!135067))

(assert (=> b!151718 m!136165))

(assert (=> b!151718 m!136165))

(assert (=> b!151718 m!136159))

(assert (=> b!151718 m!136159))

(declare-fun m!136181 () Bool)

(assert (=> b!151718 m!136181))

(assert (=> b!151717 m!136175))

(assert (=> b!151717 m!135067))

(assert (=> b!151717 m!136165))

(assert (=> b!151717 m!136165))

(assert (=> b!151717 m!136173))

(assert (=> b!151717 m!136173))

(assert (=> b!151717 m!136179))

(assert (=> b!151720 m!136157))

(assert (=> b!151721 m!136175))

(assert (=> b!151721 m!135067))

(assert (=> b!151721 m!136165))

(assert (=> b!151721 m!136165))

(assert (=> b!151721 m!136159))

(assert (=> b!151721 m!136177))

(assert (=> b!151721 m!136159))

(assert (=> b!151721 m!136181))

(assert (=> b!151715 m!136157))

(assert (=> b!151155 d!36383))

(declare-fun d!36415 () Bool)

(assert (=> d!36415 (= (head!580 (drop!119 lt!44083 0)) (apply!342 lt!44083 0))))

(declare-fun lt!44432 () Unit!1992)

(declare-fun choose!1749 (List!2633 Int) Unit!1992)

(assert (=> d!36415 (= lt!44432 (choose!1749 lt!44083 0))))

(declare-fun e!90653 () Bool)

(assert (=> d!36415 e!90653))

(declare-fun res!69532 () Bool)

(assert (=> d!36415 (=> (not res!69532) (not e!90653))))

(assert (=> d!36415 (= res!69532 (>= 0 0))))

(assert (=> d!36415 (= (lemmaDropApply!106 lt!44083 0) lt!44432)))

(declare-fun b!151724 () Bool)

(assert (=> b!151724 (= e!90653 (< 0 (size!2246 lt!44083)))))

(assert (= (and d!36415 res!69532) b!151724))

(assert (=> d!36415 m!135063))

(assert (=> d!36415 m!135063))

(assert (=> d!36415 m!135065))

(assert (=> d!36415 m!135061))

(declare-fun m!136183 () Bool)

(assert (=> d!36415 m!136183))

(declare-fun m!136185 () Bool)

(assert (=> b!151724 m!136185))

(assert (=> b!151155 d!36415))

(declare-fun lt!44433 () BalanceConc!1472)

(declare-fun e!90654 () Bool)

(declare-fun b!151728 () Bool)

(assert (=> b!151728 (= e!90654 (= (list!917 lt!44433) (++!560 (list!917 (charsOf!110 (apply!341 lt!43920 0))) (list!917 lt!44080))))))

(declare-fun b!151725 () Bool)

(declare-fun res!69536 () Bool)

(assert (=> b!151725 (=> (not res!69536) (not e!90654))))

(assert (=> b!151725 (= res!69536 (isBalanced!207 (++!563 (c!30493 (charsOf!110 (apply!341 lt!43920 0))) (c!30493 lt!44080))))))

(declare-fun b!151727 () Bool)

(declare-fun res!69533 () Bool)

(assert (=> b!151727 (=> (not res!69533) (not e!90654))))

(assert (=> b!151727 (= res!69533 (>= (height!75 (++!563 (c!30493 (charsOf!110 (apply!341 lt!43920 0))) (c!30493 lt!44080))) (max!0 (height!75 (c!30493 (charsOf!110 (apply!341 lt!43920 0)))) (height!75 (c!30493 lt!44080)))))))

(declare-fun b!151726 () Bool)

(declare-fun res!69534 () Bool)

(assert (=> b!151726 (=> (not res!69534) (not e!90654))))

(assert (=> b!151726 (= res!69534 (<= (height!75 (++!563 (c!30493 (charsOf!110 (apply!341 lt!43920 0))) (c!30493 lt!44080))) (+ (max!0 (height!75 (c!30493 (charsOf!110 (apply!341 lt!43920 0)))) (height!75 (c!30493 lt!44080))) 1)))))

(declare-fun d!36417 () Bool)

(assert (=> d!36417 e!90654))

(declare-fun res!69535 () Bool)

(assert (=> d!36417 (=> (not res!69535) (not e!90654))))

(assert (=> d!36417 (= res!69535 (appendAssocInst!16 (c!30493 (charsOf!110 (apply!341 lt!43920 0))) (c!30493 lt!44080)))))

(assert (=> d!36417 (= lt!44433 (BalanceConc!1473 (++!563 (c!30493 (charsOf!110 (apply!341 lt!43920 0))) (c!30493 lt!44080))))))

(assert (=> d!36417 (= (++!562 (charsOf!110 (apply!341 lt!43920 0)) lt!44080) lt!44433)))

(assert (= (and d!36417 res!69535) b!151725))

(assert (= (and b!151725 res!69536) b!151726))

(assert (= (and b!151726 res!69534) b!151727))

(assert (= (and b!151727 res!69533) b!151728))

(declare-fun m!136187 () Bool)

(assert (=> b!151726 m!136187))

(declare-fun m!136189 () Bool)

(assert (=> b!151726 m!136189))

(declare-fun m!136191 () Bool)

(assert (=> b!151726 m!136191))

(assert (=> b!151726 m!135331))

(declare-fun m!136193 () Bool)

(assert (=> b!151726 m!136193))

(assert (=> b!151726 m!135331))

(assert (=> b!151726 m!136191))

(assert (=> b!151726 m!136187))

(assert (=> b!151727 m!136187))

(assert (=> b!151727 m!136189))

(assert (=> b!151727 m!136191))

(assert (=> b!151727 m!135331))

(assert (=> b!151727 m!136193))

(assert (=> b!151727 m!135331))

(assert (=> b!151727 m!136191))

(assert (=> b!151727 m!136187))

(assert (=> b!151725 m!136187))

(assert (=> b!151725 m!136187))

(declare-fun m!136195 () Bool)

(assert (=> b!151725 m!136195))

(declare-fun m!136197 () Bool)

(assert (=> b!151728 m!136197))

(assert (=> b!151728 m!135053))

(declare-fun m!136199 () Bool)

(assert (=> b!151728 m!136199))

(assert (=> b!151728 m!135103))

(assert (=> b!151728 m!136199))

(assert (=> b!151728 m!135103))

(declare-fun m!136201 () Bool)

(assert (=> b!151728 m!136201))

(declare-fun m!136203 () Bool)

(assert (=> d!36417 m!136203))

(assert (=> d!36417 m!136187))

(assert (=> b!151155 d!36417))

(declare-fun b!151747 () Bool)

(declare-fun e!90669 () List!2633)

(assert (=> b!151747 (= e!90669 (drop!119 (t!24769 lt!44086) (- 0 1)))))

(declare-fun b!151748 () Bool)

(declare-fun e!90665 () List!2633)

(assert (=> b!151748 (= e!90665 e!90669)))

(declare-fun c!30703 () Bool)

(assert (=> b!151748 (= c!30703 (<= 0 0))))

(declare-fun d!36419 () Bool)

(declare-fun e!90666 () Bool)

(assert (=> d!36419 e!90666))

(declare-fun res!69539 () Bool)

(assert (=> d!36419 (=> (not res!69539) (not e!90666))))

(declare-fun lt!44436 () List!2633)

(declare-fun content!364 (List!2633) (InoxSet Token!654))

(assert (=> d!36419 (= res!69539 (= ((_ map implies) (content!364 lt!44436) (content!364 lt!44086)) ((as const (InoxSet Token!654)) true)))))

(assert (=> d!36419 (= lt!44436 e!90665)))

(declare-fun c!30700 () Bool)

(assert (=> d!36419 (= c!30700 ((_ is Nil!2623) lt!44086))))

(assert (=> d!36419 (= (drop!119 lt!44086 0) lt!44436)))

(declare-fun b!151749 () Bool)

(assert (=> b!151749 (= e!90669 lt!44086)))

(declare-fun b!151750 () Bool)

(assert (=> b!151750 (= e!90665 Nil!2623)))

(declare-fun b!151751 () Bool)

(declare-fun e!90668 () Int)

(declare-fun e!90667 () Int)

(assert (=> b!151751 (= e!90668 e!90667)))

(declare-fun c!30701 () Bool)

(declare-fun call!6156 () Int)

(assert (=> b!151751 (= c!30701 (>= 0 call!6156))))

(declare-fun bm!6151 () Bool)

(assert (=> bm!6151 (= call!6156 (size!2246 lt!44086))))

(declare-fun b!151752 () Bool)

(assert (=> b!151752 (= e!90668 call!6156)))

(declare-fun b!151753 () Bool)

(assert (=> b!151753 (= e!90667 (- call!6156 0))))

(declare-fun b!151754 () Bool)

(assert (=> b!151754 (= e!90666 (= (size!2246 lt!44436) e!90668))))

(declare-fun c!30702 () Bool)

(assert (=> b!151754 (= c!30702 (<= 0 0))))

(declare-fun b!151755 () Bool)

(assert (=> b!151755 (= e!90667 0)))

(assert (= (and d!36419 c!30700) b!151750))

(assert (= (and d!36419 (not c!30700)) b!151748))

(assert (= (and b!151748 c!30703) b!151749))

(assert (= (and b!151748 (not c!30703)) b!151747))

(assert (= (and d!36419 res!69539) b!151754))

(assert (= (and b!151754 c!30702) b!151752))

(assert (= (and b!151754 (not c!30702)) b!151751))

(assert (= (and b!151751 c!30701) b!151755))

(assert (= (and b!151751 (not c!30701)) b!151753))

(assert (= (or b!151752 b!151751 b!151753) bm!6151))

(declare-fun m!136205 () Bool)

(assert (=> b!151747 m!136205))

(declare-fun m!136207 () Bool)

(assert (=> d!36419 m!136207))

(declare-fun m!136209 () Bool)

(assert (=> d!36419 m!136209))

(assert (=> bm!6151 m!136023))

(declare-fun m!136211 () Bool)

(assert (=> b!151754 m!136211))

(assert (=> b!151155 d!36419))

(declare-fun b!151756 () Bool)

(declare-fun e!90674 () List!2633)

(assert (=> b!151756 (= e!90674 (drop!119 (t!24769 lt!44086) (- (+ 0 1) 1)))))

(declare-fun b!151757 () Bool)

(declare-fun e!90670 () List!2633)

(assert (=> b!151757 (= e!90670 e!90674)))

(declare-fun c!30707 () Bool)

(assert (=> b!151757 (= c!30707 (<= (+ 0 1) 0))))

(declare-fun d!36421 () Bool)

(declare-fun e!90671 () Bool)

(assert (=> d!36421 e!90671))

(declare-fun res!69540 () Bool)

(assert (=> d!36421 (=> (not res!69540) (not e!90671))))

(declare-fun lt!44437 () List!2633)

(assert (=> d!36421 (= res!69540 (= ((_ map implies) (content!364 lt!44437) (content!364 lt!44086)) ((as const (InoxSet Token!654)) true)))))

(assert (=> d!36421 (= lt!44437 e!90670)))

(declare-fun c!30704 () Bool)

(assert (=> d!36421 (= c!30704 ((_ is Nil!2623) lt!44086))))

(assert (=> d!36421 (= (drop!119 lt!44086 (+ 0 1)) lt!44437)))

(declare-fun b!151758 () Bool)

(assert (=> b!151758 (= e!90674 lt!44086)))

(declare-fun b!151759 () Bool)

(assert (=> b!151759 (= e!90670 Nil!2623)))

(declare-fun b!151760 () Bool)

(declare-fun e!90673 () Int)

(declare-fun e!90672 () Int)

(assert (=> b!151760 (= e!90673 e!90672)))

(declare-fun c!30705 () Bool)

(declare-fun call!6157 () Int)

(assert (=> b!151760 (= c!30705 (>= (+ 0 1) call!6157))))

(declare-fun bm!6152 () Bool)

(assert (=> bm!6152 (= call!6157 (size!2246 lt!44086))))

(declare-fun b!151761 () Bool)

(assert (=> b!151761 (= e!90673 call!6157)))

(declare-fun b!151762 () Bool)

(assert (=> b!151762 (= e!90672 (- call!6157 (+ 0 1)))))

(declare-fun b!151763 () Bool)

(assert (=> b!151763 (= e!90671 (= (size!2246 lt!44437) e!90673))))

(declare-fun c!30706 () Bool)

(assert (=> b!151763 (= c!30706 (<= (+ 0 1) 0))))

(declare-fun b!151764 () Bool)

(assert (=> b!151764 (= e!90672 0)))

(assert (= (and d!36421 c!30704) b!151759))

(assert (= (and d!36421 (not c!30704)) b!151757))

(assert (= (and b!151757 c!30707) b!151758))

(assert (= (and b!151757 (not c!30707)) b!151756))

(assert (= (and d!36421 res!69540) b!151763))

(assert (= (and b!151763 c!30706) b!151761))

(assert (= (and b!151763 (not c!30706)) b!151760))

(assert (= (and b!151760 c!30705) b!151764))

(assert (= (and b!151760 (not c!30705)) b!151762))

(assert (= (or b!151761 b!151760 b!151762) bm!6152))

(declare-fun m!136213 () Bool)

(assert (=> b!151756 m!136213))

(declare-fun m!136215 () Bool)

(assert (=> d!36421 m!136215))

(assert (=> d!36421 m!136209))

(assert (=> bm!6152 m!136023))

(declare-fun m!136217 () Bool)

(assert (=> b!151763 m!136217))

(assert (=> b!151155 d!36421))

(declare-fun d!36423 () Bool)

(declare-fun lt!44440 () Token!654)

(assert (=> d!36423 (contains!416 lt!44083 lt!44440)))

(declare-fun e!90679 () Token!654)

(assert (=> d!36423 (= lt!44440 e!90679)))

(declare-fun c!30710 () Bool)

(assert (=> d!36423 (= c!30710 (= 0 0))))

(declare-fun e!90680 () Bool)

(assert (=> d!36423 e!90680))

(declare-fun res!69543 () Bool)

(assert (=> d!36423 (=> (not res!69543) (not e!90680))))

(assert (=> d!36423 (= res!69543 (<= 0 0))))

(assert (=> d!36423 (= (apply!342 lt!44083 0) lt!44440)))

(declare-fun b!151771 () Bool)

(assert (=> b!151771 (= e!90680 (< 0 (size!2246 lt!44083)))))

(declare-fun b!151772 () Bool)

(assert (=> b!151772 (= e!90679 (head!580 lt!44083))))

(declare-fun b!151773 () Bool)

(assert (=> b!151773 (= e!90679 (apply!342 (tail!320 lt!44083) (- 0 1)))))

(assert (= (and d!36423 res!69543) b!151771))

(assert (= (and d!36423 c!30710) b!151772))

(assert (= (and d!36423 (not c!30710)) b!151773))

(declare-fun m!136219 () Bool)

(assert (=> d!36423 m!136219))

(assert (=> b!151771 m!136185))

(declare-fun m!136221 () Bool)

(assert (=> b!151772 m!136221))

(declare-fun m!136223 () Bool)

(assert (=> b!151773 m!136223))

(assert (=> b!151773 m!136223))

(declare-fun m!136225 () Bool)

(assert (=> b!151773 m!136225))

(assert (=> b!151155 d!36423))

(declare-fun b!151774 () Bool)

(declare-fun e!90685 () List!2633)

(assert (=> b!151774 (= e!90685 (drop!119 (t!24769 lt!44083) (- 0 1)))))

(declare-fun b!151775 () Bool)

(declare-fun e!90681 () List!2633)

(assert (=> b!151775 (= e!90681 e!90685)))

(declare-fun c!30714 () Bool)

(assert (=> b!151775 (= c!30714 (<= 0 0))))

(declare-fun d!36425 () Bool)

(declare-fun e!90682 () Bool)

(assert (=> d!36425 e!90682))

(declare-fun res!69544 () Bool)

(assert (=> d!36425 (=> (not res!69544) (not e!90682))))

(declare-fun lt!44451 () List!2633)

(assert (=> d!36425 (= res!69544 (= ((_ map implies) (content!364 lt!44451) (content!364 lt!44083)) ((as const (InoxSet Token!654)) true)))))

(assert (=> d!36425 (= lt!44451 e!90681)))

(declare-fun c!30711 () Bool)

(assert (=> d!36425 (= c!30711 ((_ is Nil!2623) lt!44083))))

(assert (=> d!36425 (= (drop!119 lt!44083 0) lt!44451)))

(declare-fun b!151776 () Bool)

(assert (=> b!151776 (= e!90685 lt!44083)))

(declare-fun b!151777 () Bool)

(assert (=> b!151777 (= e!90681 Nil!2623)))

(declare-fun b!151778 () Bool)

(declare-fun e!90684 () Int)

(declare-fun e!90683 () Int)

(assert (=> b!151778 (= e!90684 e!90683)))

(declare-fun c!30712 () Bool)

(declare-fun call!6158 () Int)

(assert (=> b!151778 (= c!30712 (>= 0 call!6158))))

(declare-fun bm!6153 () Bool)

(assert (=> bm!6153 (= call!6158 (size!2246 lt!44083))))

(declare-fun b!151779 () Bool)

(assert (=> b!151779 (= e!90684 call!6158)))

(declare-fun b!151780 () Bool)

(assert (=> b!151780 (= e!90683 (- call!6158 0))))

(declare-fun b!151781 () Bool)

(assert (=> b!151781 (= e!90682 (= (size!2246 lt!44451) e!90684))))

(declare-fun c!30713 () Bool)

(assert (=> b!151781 (= c!30713 (<= 0 0))))

(declare-fun b!151782 () Bool)

(assert (=> b!151782 (= e!90683 0)))

(assert (= (and d!36425 c!30711) b!151777))

(assert (= (and d!36425 (not c!30711)) b!151775))

(assert (= (and b!151775 c!30714) b!151776))

(assert (= (and b!151775 (not c!30714)) b!151774))

(assert (= (and d!36425 res!69544) b!151781))

(assert (= (and b!151781 c!30713) b!151779))

(assert (= (and b!151781 (not c!30713)) b!151778))

(assert (= (and b!151778 c!30712) b!151782))

(assert (= (and b!151778 (not c!30712)) b!151780))

(assert (= (or b!151779 b!151778 b!151780) bm!6153))

(declare-fun m!136227 () Bool)

(assert (=> b!151774 m!136227))

(declare-fun m!136229 () Bool)

(assert (=> d!36425 m!136229))

(declare-fun m!136231 () Bool)

(assert (=> d!36425 m!136231))

(assert (=> bm!6153 m!136185))

(declare-fun m!136233 () Bool)

(assert (=> b!151781 m!136233))

(assert (=> b!151155 d!36425))

(declare-fun d!36427 () Bool)

(declare-fun lt!44458 () Int)

(assert (=> d!36427 (= lt!44458 (size!2246 (list!920 lt!43920)))))

(declare-fun size!2247 (Conc!733) Int)

(assert (=> d!36427 (= lt!44458 (size!2247 (c!30495 lt!43920)))))

(assert (=> d!36427 (= (size!2241 lt!43920) lt!44458)))

(declare-fun bs!13909 () Bool)

(assert (= bs!13909 d!36427))

(assert (=> bs!13909 m!134737))

(assert (=> bs!13909 m!134737))

(declare-fun m!136235 () Bool)

(assert (=> bs!13909 m!136235))

(declare-fun m!136237 () Bool)

(assert (=> bs!13909 m!136237))

(assert (=> d!36135 d!36427))

(declare-fun d!36429 () Bool)

(assert (=> d!36429 (= (dropList!66 lt!43920 0) (drop!119 (list!922 (c!30495 lt!43920)) 0))))

(declare-fun bs!13910 () Bool)

(assert (= bs!13910 d!36429))

(assert (=> bs!13910 m!135301))

(assert (=> bs!13910 m!135301))

(declare-fun m!136239 () Bool)

(assert (=> bs!13910 m!136239))

(assert (=> d!36135 d!36429))

(assert (=> d!36135 d!36215))

(declare-fun d!36431 () Bool)

(assert (=> d!36431 (= (list!917 lt!44084) (list!921 (c!30493 lt!44084)))))

(declare-fun bs!13911 () Bool)

(assert (= bs!13911 d!36431))

(declare-fun m!136241 () Bool)

(assert (=> bs!13911 m!136241))

(assert (=> d!36135 d!36431))

(declare-fun d!36433 () Bool)

(assert (=> d!36433 (forall!443 (dropList!66 lt!43920 0) lambda!3896)))

(declare-fun lt!44461 () Unit!1992)

(declare-fun choose!1750 (List!2633 List!2633 Int) Unit!1992)

(assert (=> d!36433 (= lt!44461 (choose!1750 (list!920 lt!43920) (dropList!66 lt!43920 0) lambda!3896))))

(assert (=> d!36433 (forall!443 (list!920 lt!43920) lambda!3896)))

(assert (=> d!36433 (= (lemmaContentSubsetPreservesForall!10 (list!920 lt!43920) (dropList!66 lt!43920 0) lambda!3896) lt!44461)))

(declare-fun bs!13912 () Bool)

(assert (= bs!13912 d!36433))

(assert (=> bs!13912 m!135079))

(declare-fun m!136243 () Bool)

(assert (=> bs!13912 m!136243))

(assert (=> bs!13912 m!134737))

(assert (=> bs!13912 m!135079))

(declare-fun m!136245 () Bool)

(assert (=> bs!13912 m!136245))

(assert (=> bs!13912 m!134737))

(declare-fun m!136247 () Bool)

(assert (=> bs!13912 m!136247))

(assert (=> d!36135 d!36433))

(declare-fun bs!13913 () Bool)

(declare-fun b!151806 () Bool)

(assert (= bs!13913 (and b!151806 d!36079)))

(declare-fun lambda!3923 () Int)

(assert (=> bs!13913 (= lambda!3923 lambda!3876)))

(declare-fun bs!13914 () Bool)

(assert (= bs!13914 (and b!151806 d!36351)))

(assert (=> bs!13914 (not (= lambda!3923 lambda!3920))))

(declare-fun bs!13915 () Bool)

(assert (= bs!13915 (and b!151806 b!151166)))

(assert (=> bs!13915 (= lambda!3923 lambda!3898)))

(declare-fun bs!13916 () Bool)

(assert (= bs!13916 (and b!151806 b!151417)))

(assert (=> bs!13916 (= lambda!3923 lambda!3913)))

(declare-fun bs!13917 () Bool)

(assert (= bs!13917 (and b!151806 d!36213)))

(assert (=> bs!13917 (= lambda!3923 lambda!3906)))

(declare-fun bs!13918 () Bool)

(assert (= bs!13918 (and b!151806 d!36045)))

(assert (=> bs!13918 (= lambda!3923 lambda!3869)))

(declare-fun bs!13919 () Bool)

(assert (= bs!13919 (and b!151806 d!36199)))

(assert (=> bs!13919 (= lambda!3923 lambda!3902)))

(declare-fun bs!13920 () Bool)

(assert (= bs!13920 (and b!151806 d!36135)))

(assert (=> bs!13920 (not (= lambda!3923 lambda!3896))))

(declare-fun bs!13921 () Bool)

(assert (= bs!13921 (and b!151806 b!150972)))

(assert (=> bs!13921 (= lambda!3923 lambda!3882)))

(declare-fun bs!13922 () Bool)

(assert (= bs!13922 (and b!151806 b!151593)))

(assert (=> bs!13922 (= lambda!3923 lambda!3921)))

(declare-fun bs!13923 () Bool)

(assert (= bs!13923 (and b!151806 b!151155)))

(assert (=> bs!13923 (= lambda!3923 lambda!3897)))

(declare-fun bs!13924 () Bool)

(assert (= bs!13924 (and b!151806 b!150772)))

(assert (=> bs!13924 (not (= lambda!3923 lambda!3862))))

(declare-fun b!151819 () Bool)

(declare-fun e!90711 () Bool)

(assert (=> b!151819 (= e!90711 true)))

(declare-fun b!151818 () Bool)

(declare-fun e!90710 () Bool)

(assert (=> b!151818 (= e!90710 e!90711)))

(declare-fun b!151817 () Bool)

(declare-fun e!90709 () Bool)

(assert (=> b!151817 (= e!90709 e!90710)))

(assert (=> b!151806 e!90709))

(assert (= b!151818 b!151819))

(assert (= b!151817 b!151818))

(assert (= (and b!151806 ((_ is Cons!2624) rules!1920)) b!151817))

(assert (=> b!151819 (< (dynLambda!911 order!1295 (toValue!1090 (transformation!455 (h!8021 rules!1920)))) (dynLambda!912 order!1297 lambda!3923))))

(assert (=> b!151819 (< (dynLambda!913 order!1299 (toChars!949 (transformation!455 (h!8021 rules!1920)))) (dynLambda!912 order!1297 lambda!3923))))

(assert (=> b!151806 true))

(declare-fun b!151799 () Bool)

(declare-fun c!30718 () Bool)

(declare-fun lt!44462 () Option!238)

(assert (=> b!151799 (= c!30718 (and ((_ is Some!237) lt!44462) (not (= (_1!1499 (v!13614 lt!44462)) (h!8020 (dropList!66 lt!43920 0))))))))

(declare-fun e!90699 () List!2631)

(declare-fun e!90701 () List!2631)

(assert (=> b!151799 (= e!90699 e!90701)))

(declare-fun bm!6156 () Bool)

(declare-fun call!6164 () List!2631)

(declare-fun call!6165 () List!2631)

(assert (=> bm!6156 (= call!6164 call!6165)))

(declare-fun c!30719 () Bool)

(assert (=> bm!6156 (= c!30719 c!30718)))

(declare-fun b!151800 () Bool)

(declare-fun e!90700 () List!2631)

(declare-fun call!6161 () BalanceConc!1472)

(assert (=> b!151800 (= e!90700 (list!917 call!6161))))

(declare-fun b!151801 () Bool)

(assert (=> b!151801 (= e!90701 Nil!2621)))

(assert (=> b!151801 (= (print!92 thiss!17480 (singletonSeq!25 (h!8020 (dropList!66 lt!43920 0)))) (printTailRec!55 thiss!17480 (singletonSeq!25 (h!8020 (dropList!66 lt!43920 0))) 0 (BalanceConc!1473 Empty!732)))))

(declare-fun lt!44463 () Unit!1992)

(declare-fun Unit!2014 () Unit!1992)

(assert (=> b!151801 (= lt!44463 Unit!2014)))

(declare-fun lt!44465 () Unit!1992)

(declare-fun lt!44467 () List!2631)

(assert (=> b!151801 (= lt!44465 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!14 thiss!17480 rules!1920 call!6164 lt!44467))))

(assert (=> b!151801 false))

(declare-fun lt!44466 () Unit!1992)

(declare-fun Unit!2015 () Unit!1992)

(assert (=> b!151801 (= lt!44466 Unit!2015)))

(declare-fun bm!6157 () Bool)

(declare-fun e!90698 () BalanceConc!1472)

(declare-fun c!30721 () Bool)

(declare-fun call!6162 () BalanceConc!1472)

(assert (=> bm!6157 (= call!6165 (list!917 (ite c!30721 call!6162 e!90698)))))

(declare-fun b!151802 () Bool)

(assert (=> b!151802 (= e!90700 call!6165)))

(declare-fun b!151803 () Bool)

(assert (=> b!151803 (= e!90698 call!6161)))

(declare-fun b!151804 () Bool)

(declare-fun call!6163 () List!2631)

(assert (=> b!151804 (= e!90699 call!6163)))

(declare-fun bm!6159 () Bool)

(assert (=> bm!6159 (= call!6162 (charsOf!110 (h!8020 (dropList!66 lt!43920 0))))))

(declare-fun b!151805 () Bool)

(assert (=> b!151805 (= e!90701 (++!560 call!6163 lt!44467))))

(declare-fun bm!6160 () Bool)

(assert (=> bm!6160 (= call!6161 call!6162)))

(declare-fun e!90702 () List!2631)

(assert (=> b!151806 (= e!90702 e!90699)))

(declare-fun lt!44464 () Unit!1992)

(assert (=> b!151806 (= lt!44464 (forallContained!50 (dropList!66 lt!43920 0) lambda!3923 (h!8020 (dropList!66 lt!43920 0))))))

(assert (=> b!151806 (= lt!44467 (printWithSeparatorTokenWhenNeededList!34 thiss!17480 rules!1920 (t!24769 (dropList!66 lt!43920 0)) separatorToken!170))))

(assert (=> b!151806 (= lt!44462 (maxPrefix!107 thiss!17480 rules!1920 (++!560 (list!917 (charsOf!110 (h!8020 (dropList!66 lt!43920 0)))) lt!44467)))))

(assert (=> b!151806 (= c!30721 (and ((_ is Some!237) lt!44462) (= (_1!1499 (v!13614 lt!44462)) (h!8020 (dropList!66 lt!43920 0)))))))

(declare-fun b!151807 () Bool)

(assert (=> b!151807 (= e!90698 (charsOf!110 separatorToken!170))))

(declare-fun b!151808 () Bool)

(assert (=> b!151808 (= e!90702 Nil!2621)))

(declare-fun d!36435 () Bool)

(declare-fun c!30720 () Bool)

(assert (=> d!36435 (= c!30720 ((_ is Cons!2623) (dropList!66 lt!43920 0)))))

(assert (=> d!36435 (= (printWithSeparatorTokenWhenNeededList!34 thiss!17480 rules!1920 (dropList!66 lt!43920 0) separatorToken!170) e!90702)))

(declare-fun bm!6158 () Bool)

(declare-fun c!30717 () Bool)

(assert (=> bm!6158 (= c!30717 c!30721)))

(assert (=> bm!6158 (= call!6163 (++!560 e!90700 (ite c!30721 lt!44467 call!6164)))))

(assert (= (and d!36435 c!30720) b!151806))

(assert (= (and d!36435 (not c!30720)) b!151808))

(assert (= (and b!151806 c!30721) b!151804))

(assert (= (and b!151806 (not c!30721)) b!151799))

(assert (= (and b!151799 c!30718) b!151805))

(assert (= (and b!151799 (not c!30718)) b!151801))

(assert (= (or b!151805 b!151801) bm!6160))

(assert (= (or b!151805 b!151801) bm!6156))

(assert (= (and bm!6156 c!30719) b!151807))

(assert (= (and bm!6156 (not c!30719)) b!151803))

(assert (= (or b!151804 bm!6160) bm!6159))

(assert (= (or b!151804 bm!6156) bm!6157))

(assert (= (or b!151804 b!151805) bm!6158))

(assert (= (and bm!6158 c!30717) b!151802))

(assert (= (and bm!6158 (not c!30717)) b!151800))

(declare-fun m!136275 () Bool)

(assert (=> b!151806 m!136275))

(declare-fun m!136277 () Bool)

(assert (=> b!151806 m!136277))

(declare-fun m!136279 () Bool)

(assert (=> b!151806 m!136279))

(assert (=> b!151806 m!136279))

(declare-fun m!136281 () Bool)

(assert (=> b!151806 m!136281))

(declare-fun m!136283 () Bool)

(assert (=> b!151806 m!136283))

(assert (=> b!151806 m!136283))

(assert (=> b!151806 m!136277))

(assert (=> b!151806 m!135079))

(declare-fun m!136285 () Bool)

(assert (=> b!151806 m!136285))

(declare-fun m!136287 () Bool)

(assert (=> bm!6158 m!136287))

(declare-fun m!136289 () Bool)

(assert (=> b!151801 m!136289))

(assert (=> b!151801 m!136289))

(declare-fun m!136291 () Bool)

(assert (=> b!151801 m!136291))

(assert (=> b!151801 m!136289))

(declare-fun m!136293 () Bool)

(assert (=> b!151801 m!136293))

(declare-fun m!136295 () Bool)

(assert (=> b!151801 m!136295))

(declare-fun m!136297 () Bool)

(assert (=> bm!6157 m!136297))

(assert (=> b!151807 m!134651))

(declare-fun m!136299 () Bool)

(assert (=> b!151800 m!136299))

(assert (=> bm!6159 m!136283))

(declare-fun m!136301 () Bool)

(assert (=> b!151805 m!136301))

(assert (=> d!36135 d!36435))

(declare-fun d!36439 () Bool)

(declare-fun lt!44475 () BalanceConc!1472)

(assert (=> d!36439 (= (list!917 lt!44475) (printList!50 thiss!17480 (list!920 (singletonSeq!25 (h!8020 (t!24769 tokens!465))))))))

(assert (=> d!36439 (= lt!44475 (printTailRec!55 thiss!17480 (singletonSeq!25 (h!8020 (t!24769 tokens!465))) 0 (BalanceConc!1473 Empty!732)))))

(assert (=> d!36439 (= (print!92 thiss!17480 (singletonSeq!25 (h!8020 (t!24769 tokens!465)))) lt!44475)))

(declare-fun bs!13925 () Bool)

(assert (= bs!13925 d!36439))

(declare-fun m!136303 () Bool)

(assert (=> bs!13925 m!136303))

(assert (=> bs!13925 m!134877))

(declare-fun m!136305 () Bool)

(assert (=> bs!13925 m!136305))

(assert (=> bs!13925 m!136305))

(declare-fun m!136307 () Bool)

(assert (=> bs!13925 m!136307))

(assert (=> bs!13925 m!134877))

(assert (=> bs!13925 m!134881))

(assert (=> b!150967 d!36439))

(declare-fun d!36443 () Bool)

(declare-fun e!90717 () Bool)

(assert (=> d!36443 e!90717))

(declare-fun res!69564 () Bool)

(assert (=> d!36443 (=> (not res!69564) (not e!90717))))

(declare-fun lt!44477 () BalanceConc!1474)

(assert (=> d!36443 (= res!69564 (= (list!920 lt!44477) (Cons!2623 (h!8020 (t!24769 tokens!465)) Nil!2623)))))

(assert (=> d!36443 (= lt!44477 (singleton!18 (h!8020 (t!24769 tokens!465))))))

(assert (=> d!36443 (= (singletonSeq!25 (h!8020 (t!24769 tokens!465))) lt!44477)))

(declare-fun b!151829 () Bool)

(assert (=> b!151829 (= e!90717 (isBalanced!205 (c!30495 lt!44477)))))

(assert (= (and d!36443 res!69564) b!151829))

(declare-fun m!136309 () Bool)

(assert (=> d!36443 m!136309))

(declare-fun m!136311 () Bool)

(assert (=> d!36443 m!136311))

(declare-fun m!136313 () Bool)

(assert (=> b!151829 m!136313))

(assert (=> b!150967 d!36443))

(declare-fun d!36445 () Bool)

(declare-fun lt!44483 () BalanceConc!1472)

(assert (=> d!36445 (= (list!917 lt!44483) (printListTailRec!38 thiss!17480 (dropList!66 (singletonSeq!25 (h!8020 (t!24769 tokens!465))) 0) (list!917 (BalanceConc!1473 Empty!732))))))

(declare-fun e!90719 () BalanceConc!1472)

(assert (=> d!36445 (= lt!44483 e!90719)))

(declare-fun c!30727 () Bool)

(assert (=> d!36445 (= c!30727 (>= 0 (size!2241 (singletonSeq!25 (h!8020 (t!24769 tokens!465))))))))

(declare-fun e!90720 () Bool)

(assert (=> d!36445 e!90720))

(declare-fun res!69566 () Bool)

(assert (=> d!36445 (=> (not res!69566) (not e!90720))))

(assert (=> d!36445 (= res!69566 (>= 0 0))))

(assert (=> d!36445 (= (printTailRec!55 thiss!17480 (singletonSeq!25 (h!8020 (t!24769 tokens!465))) 0 (BalanceConc!1473 Empty!732)) lt!44483)))

(declare-fun b!151831 () Bool)

(assert (=> b!151831 (= e!90720 (<= 0 (size!2241 (singletonSeq!25 (h!8020 (t!24769 tokens!465))))))))

(declare-fun b!151832 () Bool)

(assert (=> b!151832 (= e!90719 (BalanceConc!1473 Empty!732))))

(declare-fun b!151833 () Bool)

(assert (=> b!151833 (= e!90719 (printTailRec!55 thiss!17480 (singletonSeq!25 (h!8020 (t!24769 tokens!465))) (+ 0 1) (++!562 (BalanceConc!1473 Empty!732) (charsOf!110 (apply!341 (singletonSeq!25 (h!8020 (t!24769 tokens!465))) 0)))))))

(declare-fun lt!44480 () List!2633)

(assert (=> b!151833 (= lt!44480 (list!920 (singletonSeq!25 (h!8020 (t!24769 tokens!465)))))))

(declare-fun lt!44481 () Unit!1992)

(assert (=> b!151833 (= lt!44481 (lemmaDropApply!106 lt!44480 0))))

(assert (=> b!151833 (= (head!580 (drop!119 lt!44480 0)) (apply!342 lt!44480 0))))

(declare-fun lt!44482 () Unit!1992)

(assert (=> b!151833 (= lt!44482 lt!44481)))

(declare-fun lt!44479 () List!2633)

(assert (=> b!151833 (= lt!44479 (list!920 (singletonSeq!25 (h!8020 (t!24769 tokens!465)))))))

(declare-fun lt!44485 () Unit!1992)

(assert (=> b!151833 (= lt!44485 (lemmaDropTail!98 lt!44479 0))))

(assert (=> b!151833 (= (tail!320 (drop!119 lt!44479 0)) (drop!119 lt!44479 (+ 0 1)))))

(declare-fun lt!44484 () Unit!1992)

(assert (=> b!151833 (= lt!44484 lt!44485)))

(assert (= (and d!36445 res!69566) b!151831))

(assert (= (and d!36445 c!30727) b!151832))

(assert (= (and d!36445 (not c!30727)) b!151833))

(declare-fun m!136329 () Bool)

(assert (=> d!36445 m!136329))

(assert (=> d!36445 m!134877))

(declare-fun m!136331 () Bool)

(assert (=> d!36445 m!136331))

(assert (=> d!36445 m!134877))

(declare-fun m!136333 () Bool)

(assert (=> d!36445 m!136333))

(assert (=> d!36445 m!135771))

(assert (=> d!36445 m!136331))

(assert (=> d!36445 m!135771))

(declare-fun m!136335 () Bool)

(assert (=> d!36445 m!136335))

(assert (=> b!151831 m!134877))

(assert (=> b!151831 m!136333))

(assert (=> b!151833 m!134877))

(declare-fun m!136337 () Bool)

(assert (=> b!151833 m!136337))

(declare-fun m!136339 () Bool)

(assert (=> b!151833 m!136339))

(declare-fun m!136341 () Bool)

(assert (=> b!151833 m!136341))

(assert (=> b!151833 m!136337))

(declare-fun m!136343 () Bool)

(assert (=> b!151833 m!136343))

(declare-fun m!136345 () Bool)

(assert (=> b!151833 m!136345))

(declare-fun m!136347 () Bool)

(assert (=> b!151833 m!136347))

(declare-fun m!136349 () Bool)

(assert (=> b!151833 m!136349))

(declare-fun m!136351 () Bool)

(assert (=> b!151833 m!136351))

(assert (=> b!151833 m!134877))

(declare-fun m!136353 () Bool)

(assert (=> b!151833 m!136353))

(assert (=> b!151833 m!136351))

(declare-fun m!136355 () Bool)

(assert (=> b!151833 m!136355))

(assert (=> b!151833 m!136347))

(declare-fun m!136357 () Bool)

(assert (=> b!151833 m!136357))

(assert (=> b!151833 m!134877))

(assert (=> b!151833 m!136305))

(assert (=> b!151833 m!136353))

(assert (=> b!151833 m!136341))

(declare-fun m!136359 () Bool)

(assert (=> b!151833 m!136359))

(assert (=> b!150967 d!36445))

(declare-fun b!151846 () Bool)

(declare-fun e!90727 () Unit!1992)

(declare-fun Unit!2016 () Unit!1992)

(assert (=> b!151846 (= e!90727 Unit!2016)))

(declare-fun lt!44514 () Token!654)

(declare-fun b!151844 () Bool)

(declare-fun e!90728 () Bool)

(assert (=> b!151844 (= e!90728 (= (rule!962 lt!44514) (get!711 (getRuleFromTag!10 thiss!17480 rules!1920 (tag!633 (rule!962 lt!44514))))))))

(declare-fun d!36451 () Bool)

(assert (=> d!36451 (isDefined!99 (maxPrefix!107 thiss!17480 rules!1920 (++!560 call!6090 lt!44015)))))

(declare-fun lt!44505 () Unit!1992)

(assert (=> d!36451 (= lt!44505 e!90727)))

(declare-fun c!30731 () Bool)

(assert (=> d!36451 (= c!30731 (isEmpty!1042 (maxPrefix!107 thiss!17480 rules!1920 (++!560 call!6090 lt!44015))))))

(declare-fun lt!44507 () Unit!1992)

(declare-fun lt!44506 () Unit!1992)

(assert (=> d!36451 (= lt!44507 lt!44506)))

(assert (=> d!36451 e!90728))

(declare-fun res!69570 () Bool)

(assert (=> d!36451 (=> (not res!69570) (not e!90728))))

(assert (=> d!36451 (= res!69570 (isDefined!100 (getRuleFromTag!10 thiss!17480 rules!1920 (tag!633 (rule!962 lt!44514)))))))

(assert (=> d!36451 (= lt!44506 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!10 thiss!17480 rules!1920 call!6090 lt!44514))))

(declare-fun lt!44513 () Unit!1992)

(declare-fun lt!44501 () Unit!1992)

(assert (=> d!36451 (= lt!44513 lt!44501)))

(declare-fun lt!44512 () List!2631)

(assert (=> d!36451 (isPrefix!211 lt!44512 (++!560 call!6090 lt!44015))))

(assert (=> d!36451 (= lt!44501 (lemmaPrefixStaysPrefixWhenAddingToSuffix!10 lt!44512 call!6090 lt!44015))))

(assert (=> d!36451 (= lt!44512 (list!917 (charsOf!110 lt!44514)))))

(declare-fun lt!44504 () Unit!1992)

(declare-fun lt!44500 () Unit!1992)

(assert (=> d!36451 (= lt!44504 lt!44500)))

(declare-fun lt!44508 () List!2631)

(declare-fun lt!44511 () List!2631)

(assert (=> d!36451 (isPrefix!211 lt!44508 (++!560 lt!44508 lt!44511))))

(assert (=> d!36451 (= lt!44500 (lemmaConcatTwoListThenFirstIsPrefix!114 lt!44508 lt!44511))))

(assert (=> d!36451 (= lt!44511 (_2!1499 (get!710 (maxPrefix!107 thiss!17480 rules!1920 call!6090))))))

(assert (=> d!36451 (= lt!44508 (list!917 (charsOf!110 lt!44514)))))

(assert (=> d!36451 (= lt!44514 (head!580 (list!920 (_1!1500 (lex!167 thiss!17480 rules!1920 (seqFromList!287 call!6090))))))))

(assert (=> d!36451 (not (isEmpty!1032 rules!1920))))

(assert (=> d!36451 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!14 thiss!17480 rules!1920 call!6090 lt!44015) lt!44505)))

(declare-fun b!151843 () Bool)

(declare-fun res!69571 () Bool)

(assert (=> b!151843 (=> (not res!69571) (not e!90728))))

(assert (=> b!151843 (= res!69571 (matchR!67 (regex!455 (get!711 (getRuleFromTag!10 thiss!17480 rules!1920 (tag!633 (rule!962 lt!44514))))) (list!917 (charsOf!110 lt!44514))))))

(declare-fun b!151845 () Bool)

(declare-fun Unit!2017 () Unit!1992)

(assert (=> b!151845 (= e!90727 Unit!2017)))

(declare-fun lt!44509 () List!2631)

(assert (=> b!151845 (= lt!44509 (++!560 call!6090 lt!44015))))

(declare-fun lt!44510 () Unit!1992)

(assert (=> b!151845 (= lt!44510 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!10 thiss!17480 (rule!962 lt!44514) rules!1920 lt!44509))))

(assert (=> b!151845 (isEmpty!1042 (maxPrefixOneRule!55 thiss!17480 (rule!962 lt!44514) lt!44509))))

(declare-fun lt!44502 () Unit!1992)

(assert (=> b!151845 (= lt!44502 lt!44510)))

(declare-fun lt!44516 () List!2631)

(assert (=> b!151845 (= lt!44516 (list!917 (charsOf!110 lt!44514)))))

(declare-fun lt!44515 () Unit!1992)

(assert (=> b!151845 (= lt!44515 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!10 thiss!17480 (rule!962 lt!44514) lt!44516 (++!560 call!6090 lt!44015)))))

(assert (=> b!151845 (not (matchR!67 (regex!455 (rule!962 lt!44514)) lt!44516))))

(declare-fun lt!44503 () Unit!1992)

(assert (=> b!151845 (= lt!44503 lt!44515)))

(assert (=> b!151845 false))

(assert (= (and d!36451 res!69570) b!151843))

(assert (= (and b!151843 res!69571) b!151844))

(assert (= (and d!36451 c!30731) b!151845))

(assert (= (and d!36451 (not c!30731)) b!151846))

(declare-fun m!136361 () Bool)

(assert (=> b!151844 m!136361))

(assert (=> b!151844 m!136361))

(declare-fun m!136363 () Bool)

(assert (=> b!151844 m!136363))

(declare-fun m!136365 () Bool)

(assert (=> d!36451 m!136365))

(declare-fun m!136367 () Bool)

(assert (=> d!36451 m!136367))

(declare-fun m!136369 () Bool)

(assert (=> d!36451 m!136369))

(declare-fun m!136371 () Bool)

(assert (=> d!36451 m!136371))

(declare-fun m!136373 () Bool)

(assert (=> d!36451 m!136373))

(declare-fun m!136375 () Bool)

(assert (=> d!36451 m!136375))

(assert (=> d!36451 m!136367))

(declare-fun m!136377 () Bool)

(assert (=> d!36451 m!136377))

(declare-fun m!136379 () Bool)

(assert (=> d!36451 m!136379))

(declare-fun m!136381 () Bool)

(assert (=> d!36451 m!136381))

(declare-fun m!136383 () Bool)

(assert (=> d!36451 m!136383))

(assert (=> d!36451 m!136373))

(declare-fun m!136385 () Bool)

(assert (=> d!36451 m!136385))

(declare-fun m!136387 () Bool)

(assert (=> d!36451 m!136387))

(assert (=> d!36451 m!136373))

(assert (=> d!36451 m!136387))

(assert (=> d!36451 m!136379))

(assert (=> d!36451 m!136387))

(declare-fun m!136389 () Bool)

(assert (=> d!36451 m!136389))

(assert (=> d!36451 m!136361))

(assert (=> d!36451 m!136369))

(assert (=> d!36451 m!136361))

(declare-fun m!136391 () Bool)

(assert (=> d!36451 m!136391))

(assert (=> d!36451 m!134617))

(declare-fun m!136393 () Bool)

(assert (=> d!36451 m!136393))

(declare-fun m!136395 () Bool)

(assert (=> d!36451 m!136395))

(declare-fun m!136397 () Bool)

(assert (=> d!36451 m!136397))

(declare-fun m!136399 () Bool)

(assert (=> d!36451 m!136399))

(assert (=> d!36451 m!136399))

(declare-fun m!136401 () Bool)

(assert (=> d!36451 m!136401))

(assert (=> d!36451 m!136395))

(assert (=> b!151843 m!136361))

(assert (=> b!151843 m!136379))

(assert (=> b!151843 m!136381))

(assert (=> b!151843 m!136381))

(declare-fun m!136403 () Bool)

(assert (=> b!151843 m!136403))

(assert (=> b!151843 m!136361))

(assert (=> b!151843 m!136363))

(assert (=> b!151843 m!136379))

(declare-fun m!136405 () Bool)

(assert (=> b!151845 m!136405))

(declare-fun m!136407 () Bool)

(assert (=> b!151845 m!136407))

(declare-fun m!136409 () Bool)

(assert (=> b!151845 m!136409))

(assert (=> b!151845 m!136409))

(declare-fun m!136411 () Bool)

(assert (=> b!151845 m!136411))

(assert (=> b!151845 m!136387))

(assert (=> b!151845 m!136379))

(assert (=> b!151845 m!136387))

(declare-fun m!136413 () Bool)

(assert (=> b!151845 m!136413))

(assert (=> b!151845 m!136379))

(assert (=> b!151845 m!136381))

(assert (=> b!150967 d!36451))

(declare-fun d!36453 () Bool)

(declare-fun c!30732 () Bool)

(assert (=> d!36453 (= c!30732 ((_ is Node!732) (c!30493 (dynLambda!914 (toChars!949 (transformation!455 (rule!962 (h!8020 tokens!465)))) (value!17283 (h!8020 tokens!465))))))))

(declare-fun e!90732 () Bool)

(assert (=> d!36453 (= (inv!3419 (c!30493 (dynLambda!914 (toChars!949 (transformation!455 (rule!962 (h!8020 tokens!465)))) (value!17283 (h!8020 tokens!465))))) e!90732)))

(declare-fun b!151850 () Bool)

(assert (=> b!151850 (= e!90732 (inv!3421 (c!30493 (dynLambda!914 (toChars!949 (transformation!455 (rule!962 (h!8020 tokens!465)))) (value!17283 (h!8020 tokens!465))))))))

(declare-fun b!151851 () Bool)

(declare-fun e!90733 () Bool)

(assert (=> b!151851 (= e!90732 e!90733)))

(declare-fun res!69572 () Bool)

(assert (=> b!151851 (= res!69572 (not ((_ is Leaf!1299) (c!30493 (dynLambda!914 (toChars!949 (transformation!455 (rule!962 (h!8020 tokens!465)))) (value!17283 (h!8020 tokens!465)))))))))

(assert (=> b!151851 (=> res!69572 e!90733)))

(declare-fun b!151852 () Bool)

(assert (=> b!151852 (= e!90733 (inv!3422 (c!30493 (dynLambda!914 (toChars!949 (transformation!455 (rule!962 (h!8020 tokens!465)))) (value!17283 (h!8020 tokens!465))))))))

(assert (= (and d!36453 c!30732) b!151850))

(assert (= (and d!36453 (not c!30732)) b!151851))

(assert (= (and b!151851 (not res!69572)) b!151852))

(declare-fun m!136415 () Bool)

(assert (=> b!151850 m!136415))

(declare-fun m!136417 () Bool)

(assert (=> b!151852 m!136417))

(assert (=> b!150978 d!36453))

(declare-fun d!36455 () Bool)

(assert (=> d!36455 (= (inv!16 (value!17283 separatorToken!170)) (= (charsToInt!0 (text!3786 (value!17283 separatorToken!170))) (value!17274 (value!17283 separatorToken!170))))))

(declare-fun bs!13947 () Bool)

(assert (= bs!13947 d!36455))

(declare-fun m!136419 () Bool)

(assert (=> bs!13947 m!136419))

(assert (=> b!151001 d!36455))

(assert (=> b!151145 d!36427))

(declare-fun d!36457 () Bool)

(declare-fun e!90736 () Bool)

(assert (=> d!36457 e!90736))

(declare-fun res!69575 () Bool)

(assert (=> d!36457 (=> (not res!69575) (not e!90736))))

(declare-fun lt!44519 () BalanceConc!1474)

(assert (=> d!36457 (= res!69575 (= (list!920 lt!44519) tokens!465))))

(declare-fun fromList!81 (List!2633) Conc!733)

(assert (=> d!36457 (= lt!44519 (BalanceConc!1475 (fromList!81 tokens!465)))))

(assert (=> d!36457 (= (fromListB!119 tokens!465) lt!44519)))

(declare-fun b!151855 () Bool)

(assert (=> b!151855 (= e!90736 (isBalanced!205 (fromList!81 tokens!465)))))

(assert (= (and d!36457 res!69575) b!151855))

(declare-fun m!136477 () Bool)

(assert (=> d!36457 m!136477))

(declare-fun m!136479 () Bool)

(assert (=> d!36457 m!136479))

(assert (=> b!151855 m!136479))

(assert (=> b!151855 m!136479))

(declare-fun m!136481 () Bool)

(assert (=> b!151855 m!136481))

(assert (=> d!36073 d!36457))

(declare-fun d!36461 () Bool)

(declare-fun lt!44520 () Bool)

(assert (=> d!36461 (= lt!44520 (isEmpty!1035 (list!917 (_2!1500 lt!44028))))))

(assert (=> d!36461 (= lt!44520 (isEmpty!1037 (c!30493 (_2!1500 lt!44028))))))

(assert (=> d!36461 (= (isEmpty!1036 (_2!1500 lt!44028)) lt!44520)))

(declare-fun bs!13948 () Bool)

(assert (= bs!13948 d!36461))

(declare-fun m!136483 () Bool)

(assert (=> bs!13948 m!136483))

(assert (=> bs!13948 m!136483))

(declare-fun m!136485 () Bool)

(assert (=> bs!13948 m!136485))

(declare-fun m!136487 () Bool)

(assert (=> bs!13948 m!136487))

(assert (=> b!151033 d!36461))

(declare-fun d!36463 () Bool)

(declare-fun c!30734 () Bool)

(assert (=> d!36463 (= c!30734 ((_ is Empty!732) (c!30493 (printWithSeparatorTokenWhenNeededRec!24 thiss!17480 rules!1920 lt!43920 separatorToken!170 0))))))

(declare-fun e!90739 () List!2631)

(assert (=> d!36463 (= (list!921 (c!30493 (printWithSeparatorTokenWhenNeededRec!24 thiss!17480 rules!1920 lt!43920 separatorToken!170 0))) e!90739)))

(declare-fun b!151858 () Bool)

(assert (=> b!151858 (= e!90739 Nil!2621)))

(declare-fun b!151861 () Bool)

(declare-fun e!90740 () List!2631)

(assert (=> b!151861 (= e!90740 (list!924 (xs!3327 (c!30493 (printWithSeparatorTokenWhenNeededRec!24 thiss!17480 rules!1920 lt!43920 separatorToken!170 0)))))))

(declare-fun b!151863 () Bool)

(assert (=> b!151863 (= e!90740 (++!560 (list!921 (left!1978 (c!30493 (printWithSeparatorTokenWhenNeededRec!24 thiss!17480 rules!1920 lt!43920 separatorToken!170 0)))) (list!921 (right!2308 (c!30493 (printWithSeparatorTokenWhenNeededRec!24 thiss!17480 rules!1920 lt!43920 separatorToken!170 0))))))))

(declare-fun b!151859 () Bool)

(assert (=> b!151859 (= e!90739 e!90740)))

(declare-fun c!30735 () Bool)

(assert (=> b!151859 (= c!30735 ((_ is Leaf!1299) (c!30493 (printWithSeparatorTokenWhenNeededRec!24 thiss!17480 rules!1920 lt!43920 separatorToken!170 0))))))

(assert (= (and d!36463 c!30734) b!151858))

(assert (= (and d!36463 (not c!30734)) b!151859))

(assert (= (and b!151859 c!30735) b!151861))

(assert (= (and b!151859 (not c!30735)) b!151863))

(declare-fun m!136489 () Bool)

(assert (=> b!151861 m!136489))

(declare-fun m!136491 () Bool)

(assert (=> b!151863 m!136491))

(declare-fun m!136493 () Bool)

(assert (=> b!151863 m!136493))

(assert (=> b!151863 m!136491))

(assert (=> b!151863 m!136493))

(declare-fun m!136495 () Bool)

(assert (=> b!151863 m!136495))

(assert (=> d!36133 d!36463))

(declare-fun d!36465 () Bool)

(declare-fun lt!44523 () Bool)

(declare-fun e!90744 () Bool)

(assert (=> d!36465 (= lt!44523 e!90744)))

(declare-fun res!69578 () Bool)

(assert (=> d!36465 (=> (not res!69578) (not e!90744))))

(assert (=> d!36465 (= res!69578 (= (list!920 (_1!1500 (lex!167 thiss!17480 rules!1920 (print!92 thiss!17480 (singletonSeq!25 (h!8020 (t!24769 tokens!465))))))) (list!920 (singletonSeq!25 (h!8020 (t!24769 tokens!465))))))))

(declare-fun e!90743 () Bool)

(assert (=> d!36465 (= lt!44523 e!90743)))

(declare-fun res!69580 () Bool)

(assert (=> d!36465 (=> (not res!69580) (not e!90743))))

(declare-fun lt!44524 () tuple2!2568)

(assert (=> d!36465 (= res!69580 (= (size!2241 (_1!1500 lt!44524)) 1))))

(assert (=> d!36465 (= lt!44524 (lex!167 thiss!17480 rules!1920 (print!92 thiss!17480 (singletonSeq!25 (h!8020 (t!24769 tokens!465))))))))

(assert (=> d!36465 (not (isEmpty!1032 rules!1920))))

(assert (=> d!36465 (= (rulesProduceIndividualToken!90 thiss!17480 rules!1920 (h!8020 (t!24769 tokens!465))) lt!44523)))

(declare-fun b!151866 () Bool)

(declare-fun res!69579 () Bool)

(assert (=> b!151866 (=> (not res!69579) (not e!90743))))

(assert (=> b!151866 (= res!69579 (= (apply!341 (_1!1500 lt!44524) 0) (h!8020 (t!24769 tokens!465))))))

(declare-fun b!151867 () Bool)

(assert (=> b!151867 (= e!90743 (isEmpty!1036 (_2!1500 lt!44524)))))

(declare-fun b!151868 () Bool)

(assert (=> b!151868 (= e!90744 (isEmpty!1036 (_2!1500 (lex!167 thiss!17480 rules!1920 (print!92 thiss!17480 (singletonSeq!25 (h!8020 (t!24769 tokens!465))))))))))

(assert (= (and d!36465 res!69580) b!151866))

(assert (= (and b!151866 res!69579) b!151867))

(assert (= (and d!36465 res!69578) b!151868))

(assert (=> d!36465 m!134877))

(assert (=> d!36465 m!134879))

(declare-fun m!136497 () Bool)

(assert (=> d!36465 m!136497))

(declare-fun m!136499 () Bool)

(assert (=> d!36465 m!136499))

(assert (=> d!36465 m!134877))

(assert (=> d!36465 m!134879))

(declare-fun m!136501 () Bool)

(assert (=> d!36465 m!136501))

(assert (=> d!36465 m!134617))

(assert (=> d!36465 m!134877))

(assert (=> d!36465 m!136305))

(declare-fun m!136503 () Bool)

(assert (=> b!151866 m!136503))

(declare-fun m!136505 () Bool)

(assert (=> b!151867 m!136505))

(assert (=> b!151868 m!134877))

(assert (=> b!151868 m!134877))

(assert (=> b!151868 m!134879))

(assert (=> b!151868 m!134879))

(assert (=> b!151868 m!136497))

(declare-fun m!136507 () Bool)

(assert (=> b!151868 m!136507))

(assert (=> b!150901 d!36465))

(assert (=> b!151166 d!36085))

(declare-fun d!36467 () Bool)

(declare-fun e!90748 () Bool)

(assert (=> d!36467 e!90748))

(declare-fun res!69583 () Bool)

(assert (=> d!36467 (=> (not res!69583) (not e!90748))))

(declare-fun lt!44526 () List!2631)

(assert (=> d!36467 (= res!69583 (= (content!362 lt!44526) ((_ map or) (content!362 (list!917 (charsOf!110 (h!8020 tokens!465)))) (content!362 lt!44092))))))

(declare-fun e!90747 () List!2631)

(assert (=> d!36467 (= lt!44526 e!90747)))

(declare-fun c!30739 () Bool)

(assert (=> d!36467 (= c!30739 ((_ is Nil!2621) (list!917 (charsOf!110 (h!8020 tokens!465)))))))

(assert (=> d!36467 (= (++!560 (list!917 (charsOf!110 (h!8020 tokens!465))) lt!44092) lt!44526)))

(declare-fun b!151873 () Bool)

(assert (=> b!151873 (= e!90747 (Cons!2621 (h!8018 (list!917 (charsOf!110 (h!8020 tokens!465)))) (++!560 (t!24767 (list!917 (charsOf!110 (h!8020 tokens!465)))) lt!44092)))))

(declare-fun b!151872 () Bool)

(assert (=> b!151872 (= e!90747 lt!44092)))

(declare-fun b!151874 () Bool)

(declare-fun res!69582 () Bool)

(assert (=> b!151874 (=> (not res!69582) (not e!90748))))

(assert (=> b!151874 (= res!69582 (= (size!2240 lt!44526) (+ (size!2240 (list!917 (charsOf!110 (h!8020 tokens!465)))) (size!2240 lt!44092))))))

(declare-fun b!151875 () Bool)

(assert (=> b!151875 (= e!90748 (or (not (= lt!44092 Nil!2621)) (= lt!44526 (list!917 (charsOf!110 (h!8020 tokens!465))))))))

(assert (= (and d!36467 c!30739) b!151872))

(assert (= (and d!36467 (not c!30739)) b!151873))

(assert (= (and d!36467 res!69583) b!151874))

(assert (= (and b!151874 res!69582) b!151875))

(declare-fun m!136517 () Bool)

(assert (=> d!36467 m!136517))

(assert (=> d!36467 m!134659))

(declare-fun m!136519 () Bool)

(assert (=> d!36467 m!136519))

(assert (=> d!36467 m!135905))

(declare-fun m!136521 () Bool)

(assert (=> b!151873 m!136521))

(declare-fun m!136523 () Bool)

(assert (=> b!151874 m!136523))

(assert (=> b!151874 m!134659))

(declare-fun m!136525 () Bool)

(assert (=> b!151874 m!136525))

(assert (=> b!151874 m!135913))

(assert (=> b!151166 d!36467))

(declare-fun d!36471 () Bool)

(assert (=> d!36471 (dynLambda!915 lambda!3898 (h!8020 tokens!465))))

(declare-fun lt!44527 () Unit!1992)

(assert (=> d!36471 (= lt!44527 (choose!1745 tokens!465 lambda!3898 (h!8020 tokens!465)))))

(declare-fun e!90749 () Bool)

(assert (=> d!36471 e!90749))

(declare-fun res!69584 () Bool)

(assert (=> d!36471 (=> (not res!69584) (not e!90749))))

(assert (=> d!36471 (= res!69584 (forall!443 tokens!465 lambda!3898))))

(assert (=> d!36471 (= (forallContained!50 tokens!465 lambda!3898 (h!8020 tokens!465)) lt!44527)))

(declare-fun b!151876 () Bool)

(assert (=> b!151876 (= e!90749 (contains!416 tokens!465 (h!8020 tokens!465)))))

(assert (= (and d!36471 res!69584) b!151876))

(declare-fun b_lambda!2787 () Bool)

(assert (=> (not b_lambda!2787) (not d!36471)))

(declare-fun m!136527 () Bool)

(assert (=> d!36471 m!136527))

(declare-fun m!136529 () Bool)

(assert (=> d!36471 m!136529))

(declare-fun m!136531 () Bool)

(assert (=> d!36471 m!136531))

(declare-fun m!136533 () Bool)

(assert (=> b!151876 m!136533))

(assert (=> b!151166 d!36471))

(assert (=> b!151166 d!36091))

(assert (=> b!151166 d!36093))

(declare-fun b!151877 () Bool)

(declare-fun res!69585 () Bool)

(declare-fun e!90750 () Bool)

(assert (=> b!151877 (=> (not res!69585) (not e!90750))))

(declare-fun lt!44530 () Option!238)

(assert (=> b!151877 (= res!69585 (= (++!560 (list!917 (charsOf!110 (_1!1499 (get!710 lt!44530)))) (_2!1499 (get!710 lt!44530))) (++!560 (list!917 (charsOf!110 (h!8020 tokens!465))) lt!44092)))))

(declare-fun b!151878 () Bool)

(declare-fun e!90752 () Bool)

(assert (=> b!151878 (= e!90752 e!90750)))

(declare-fun res!69586 () Bool)

(assert (=> b!151878 (=> (not res!69586) (not e!90750))))

(assert (=> b!151878 (= res!69586 (isDefined!99 lt!44530))))

(declare-fun call!6173 () Option!238)

(declare-fun bm!6168 () Bool)

(assert (=> bm!6168 (= call!6173 (maxPrefixOneRule!55 thiss!17480 (h!8021 rules!1920) (++!560 (list!917 (charsOf!110 (h!8020 tokens!465))) lt!44092)))))

(declare-fun d!36473 () Bool)

(assert (=> d!36473 e!90752))

(declare-fun res!69591 () Bool)

(assert (=> d!36473 (=> res!69591 e!90752)))

(assert (=> d!36473 (= res!69591 (isEmpty!1042 lt!44530))))

(declare-fun e!90751 () Option!238)

(assert (=> d!36473 (= lt!44530 e!90751)))

(declare-fun c!30740 () Bool)

(assert (=> d!36473 (= c!30740 (and ((_ is Cons!2624) rules!1920) ((_ is Nil!2624) (t!24770 rules!1920))))))

(declare-fun lt!44532 () Unit!1992)

(declare-fun lt!44529 () Unit!1992)

(assert (=> d!36473 (= lt!44532 lt!44529)))

(assert (=> d!36473 (isPrefix!211 (++!560 (list!917 (charsOf!110 (h!8020 tokens!465))) lt!44092) (++!560 (list!917 (charsOf!110 (h!8020 tokens!465))) lt!44092))))

(assert (=> d!36473 (= lt!44529 (lemmaIsPrefixRefl!118 (++!560 (list!917 (charsOf!110 (h!8020 tokens!465))) lt!44092) (++!560 (list!917 (charsOf!110 (h!8020 tokens!465))) lt!44092)))))

(assert (=> d!36473 (rulesValidInductive!95 thiss!17480 rules!1920)))

(assert (=> d!36473 (= (maxPrefix!107 thiss!17480 rules!1920 (++!560 (list!917 (charsOf!110 (h!8020 tokens!465))) lt!44092)) lt!44530)))

(declare-fun b!151879 () Bool)

(assert (=> b!151879 (= e!90751 call!6173)))

(declare-fun b!151880 () Bool)

(declare-fun res!69589 () Bool)

(assert (=> b!151880 (=> (not res!69589) (not e!90750))))

(assert (=> b!151880 (= res!69589 (= (value!17283 (_1!1499 (get!710 lt!44530))) (apply!345 (transformation!455 (rule!962 (_1!1499 (get!710 lt!44530)))) (seqFromList!287 (originalCharacters!498 (_1!1499 (get!710 lt!44530)))))))))

(declare-fun b!151881 () Bool)

(declare-fun res!69590 () Bool)

(assert (=> b!151881 (=> (not res!69590) (not e!90750))))

(assert (=> b!151881 (= res!69590 (< (size!2240 (_2!1499 (get!710 lt!44530))) (size!2240 (++!560 (list!917 (charsOf!110 (h!8020 tokens!465))) lt!44092))))))

(declare-fun b!151882 () Bool)

(declare-fun lt!44531 () Option!238)

(declare-fun lt!44528 () Option!238)

(assert (=> b!151882 (= e!90751 (ite (and ((_ is None!237) lt!44531) ((_ is None!237) lt!44528)) None!237 (ite ((_ is None!237) lt!44528) lt!44531 (ite ((_ is None!237) lt!44531) lt!44528 (ite (>= (size!2237 (_1!1499 (v!13614 lt!44531))) (size!2237 (_1!1499 (v!13614 lt!44528)))) lt!44531 lt!44528)))))))

(assert (=> b!151882 (= lt!44531 call!6173)))

(assert (=> b!151882 (= lt!44528 (maxPrefix!107 thiss!17480 (t!24770 rules!1920) (++!560 (list!917 (charsOf!110 (h!8020 tokens!465))) lt!44092)))))

(declare-fun b!151883 () Bool)

(assert (=> b!151883 (= e!90750 (contains!417 rules!1920 (rule!962 (_1!1499 (get!710 lt!44530)))))))

(declare-fun b!151884 () Bool)

(declare-fun res!69587 () Bool)

(assert (=> b!151884 (=> (not res!69587) (not e!90750))))

(assert (=> b!151884 (= res!69587 (matchR!67 (regex!455 (rule!962 (_1!1499 (get!710 lt!44530)))) (list!917 (charsOf!110 (_1!1499 (get!710 lt!44530))))))))

(declare-fun b!151885 () Bool)

(declare-fun res!69588 () Bool)

(assert (=> b!151885 (=> (not res!69588) (not e!90750))))

(assert (=> b!151885 (= res!69588 (= (list!917 (charsOf!110 (_1!1499 (get!710 lt!44530)))) (originalCharacters!498 (_1!1499 (get!710 lt!44530)))))))

(assert (= (and d!36473 c!30740) b!151879))

(assert (= (and d!36473 (not c!30740)) b!151882))

(assert (= (or b!151879 b!151882) bm!6168))

(assert (= (and d!36473 (not res!69591)) b!151878))

(assert (= (and b!151878 res!69586) b!151885))

(assert (= (and b!151885 res!69588) b!151881))

(assert (= (and b!151881 res!69590) b!151877))

(assert (= (and b!151877 res!69585) b!151880))

(assert (= (and b!151880 res!69589) b!151884))

(assert (= (and b!151884 res!69587) b!151883))

(declare-fun m!136535 () Bool)

(assert (=> b!151881 m!136535))

(declare-fun m!136537 () Bool)

(assert (=> b!151881 m!136537))

(assert (=> b!151881 m!135109))

(declare-fun m!136539 () Bool)

(assert (=> b!151881 m!136539))

(assert (=> bm!6168 m!135109))

(declare-fun m!136541 () Bool)

(assert (=> bm!6168 m!136541))

(declare-fun m!136543 () Bool)

(assert (=> b!151878 m!136543))

(assert (=> b!151880 m!136535))

(declare-fun m!136545 () Bool)

(assert (=> b!151880 m!136545))

(assert (=> b!151880 m!136545))

(declare-fun m!136549 () Bool)

(assert (=> b!151880 m!136549))

(assert (=> b!151877 m!136535))

(declare-fun m!136551 () Bool)

(assert (=> b!151877 m!136551))

(assert (=> b!151877 m!136551))

(declare-fun m!136553 () Bool)

(assert (=> b!151877 m!136553))

(assert (=> b!151877 m!136553))

(declare-fun m!136555 () Bool)

(assert (=> b!151877 m!136555))

(assert (=> b!151885 m!136535))

(assert (=> b!151885 m!136551))

(assert (=> b!151885 m!136551))

(assert (=> b!151885 m!136553))

(assert (=> b!151882 m!135109))

(declare-fun m!136557 () Bool)

(assert (=> b!151882 m!136557))

(declare-fun m!136559 () Bool)

(assert (=> d!36473 m!136559))

(assert (=> d!36473 m!135109))

(assert (=> d!36473 m!135109))

(declare-fun m!136561 () Bool)

(assert (=> d!36473 m!136561))

(assert (=> d!36473 m!135109))

(assert (=> d!36473 m!135109))

(declare-fun m!136563 () Bool)

(assert (=> d!36473 m!136563))

(assert (=> d!36473 m!135279))

(assert (=> b!151883 m!136535))

(declare-fun m!136565 () Bool)

(assert (=> b!151883 m!136565))

(assert (=> b!151884 m!136535))

(assert (=> b!151884 m!136551))

(assert (=> b!151884 m!136551))

(assert (=> b!151884 m!136553))

(assert (=> b!151884 m!136553))

(declare-fun m!136567 () Bool)

(assert (=> b!151884 m!136567))

(assert (=> b!151166 d!36473))

(declare-fun d!36477 () Bool)

(declare-fun c!30741 () Bool)

(assert (=> d!36477 (= c!30741 ((_ is Empty!732) (c!30493 (charsOf!110 (h!8020 tokens!465)))))))

(declare-fun e!90757 () List!2631)

(assert (=> d!36477 (= (list!921 (c!30493 (charsOf!110 (h!8020 tokens!465)))) e!90757)))

(declare-fun b!151893 () Bool)

(assert (=> b!151893 (= e!90757 Nil!2621)))

(declare-fun b!151895 () Bool)

(declare-fun e!90758 () List!2631)

(assert (=> b!151895 (= e!90758 (list!924 (xs!3327 (c!30493 (charsOf!110 (h!8020 tokens!465))))))))

(declare-fun b!151896 () Bool)

(assert (=> b!151896 (= e!90758 (++!560 (list!921 (left!1978 (c!30493 (charsOf!110 (h!8020 tokens!465))))) (list!921 (right!2308 (c!30493 (charsOf!110 (h!8020 tokens!465)))))))))

(declare-fun b!151894 () Bool)

(assert (=> b!151894 (= e!90757 e!90758)))

(declare-fun c!30742 () Bool)

(assert (=> b!151894 (= c!30742 ((_ is Leaf!1299) (c!30493 (charsOf!110 (h!8020 tokens!465)))))))

(assert (= (and d!36477 c!30741) b!151893))

(assert (= (and d!36477 (not c!30741)) b!151894))

(assert (= (and b!151894 c!30742) b!151895))

(assert (= (and b!151894 (not c!30742)) b!151896))

(declare-fun m!136579 () Bool)

(assert (=> b!151895 m!136579))

(declare-fun m!136581 () Bool)

(assert (=> b!151896 m!136581))

(declare-fun m!136583 () Bool)

(assert (=> b!151896 m!136583))

(assert (=> b!151896 m!136581))

(assert (=> b!151896 m!136583))

(declare-fun m!136585 () Bool)

(assert (=> b!151896 m!136585))

(assert (=> d!36091 d!36477))

(assert (=> bm!6085 d!36267))

(declare-fun d!36479 () Bool)

(declare-fun e!90760 () Bool)

(assert (=> d!36479 e!90760))

(declare-fun res!69600 () Bool)

(assert (=> d!36479 (=> (not res!69600) (not e!90760))))

(declare-fun lt!44537 () List!2631)

(assert (=> d!36479 (= res!69600 (= (content!362 lt!44537) ((_ map or) (content!362 (t!24767 (list!917 (charsOf!110 separatorToken!170)))) (content!362 (printWithSeparatorTokenWhenNeededList!34 thiss!17480 rules!1920 (t!24769 tokens!465) separatorToken!170)))))))

(declare-fun e!90759 () List!2631)

(assert (=> d!36479 (= lt!44537 e!90759)))

(declare-fun c!30743 () Bool)

(assert (=> d!36479 (= c!30743 ((_ is Nil!2621) (t!24767 (list!917 (charsOf!110 separatorToken!170)))))))

(assert (=> d!36479 (= (++!560 (t!24767 (list!917 (charsOf!110 separatorToken!170))) (printWithSeparatorTokenWhenNeededList!34 thiss!17480 rules!1920 (t!24769 tokens!465) separatorToken!170)) lt!44537)))

(declare-fun b!151898 () Bool)

(assert (=> b!151898 (= e!90759 (Cons!2621 (h!8018 (t!24767 (list!917 (charsOf!110 separatorToken!170)))) (++!560 (t!24767 (t!24767 (list!917 (charsOf!110 separatorToken!170)))) (printWithSeparatorTokenWhenNeededList!34 thiss!17480 rules!1920 (t!24769 tokens!465) separatorToken!170))))))

(declare-fun b!151897 () Bool)

(assert (=> b!151897 (= e!90759 (printWithSeparatorTokenWhenNeededList!34 thiss!17480 rules!1920 (t!24769 tokens!465) separatorToken!170))))

(declare-fun b!151899 () Bool)

(declare-fun res!69599 () Bool)

(assert (=> b!151899 (=> (not res!69599) (not e!90760))))

(assert (=> b!151899 (= res!69599 (= (size!2240 lt!44537) (+ (size!2240 (t!24767 (list!917 (charsOf!110 separatorToken!170)))) (size!2240 (printWithSeparatorTokenWhenNeededList!34 thiss!17480 rules!1920 (t!24769 tokens!465) separatorToken!170)))))))

(declare-fun b!151900 () Bool)

(assert (=> b!151900 (= e!90760 (or (not (= (printWithSeparatorTokenWhenNeededList!34 thiss!17480 rules!1920 (t!24769 tokens!465) separatorToken!170) Nil!2621)) (= lt!44537 (t!24767 (list!917 (charsOf!110 separatorToken!170))))))))

(assert (= (and d!36479 c!30743) b!151897))

(assert (= (and d!36479 (not c!30743)) b!151898))

(assert (= (and d!36479 res!69600) b!151899))

(assert (= (and b!151899 res!69599) b!151900))

(declare-fun m!136595 () Bool)

(assert (=> d!36479 m!136595))

(declare-fun m!136597 () Bool)

(assert (=> d!36479 m!136597))

(assert (=> d!36479 m!134647))

(assert (=> d!36479 m!134831))

(assert (=> b!151898 m!134647))

(declare-fun m!136599 () Bool)

(assert (=> b!151898 m!136599))

(declare-fun m!136601 () Bool)

(assert (=> b!151899 m!136601))

(assert (=> b!151899 m!135291))

(assert (=> b!151899 m!134647))

(assert (=> b!151899 m!134839))

(assert (=> b!150915 d!36479))

(declare-fun d!36483 () Bool)

(assert (=> d!36483 (= (inv!3412 (tag!633 (rule!962 (h!8020 (t!24769 tokens!465))))) (= (mod (str.len (value!17282 (tag!633 (rule!962 (h!8020 (t!24769 tokens!465)))))) 2) 0))))

(assert (=> b!151229 d!36483))

(declare-fun d!36487 () Bool)

(declare-fun res!69604 () Bool)

(declare-fun e!90766 () Bool)

(assert (=> d!36487 (=> (not res!69604) (not e!90766))))

(assert (=> d!36487 (= res!69604 (semiInverseModEq!157 (toChars!949 (transformation!455 (rule!962 (h!8020 (t!24769 tokens!465))))) (toValue!1090 (transformation!455 (rule!962 (h!8020 (t!24769 tokens!465)))))))))

(assert (=> d!36487 (= (inv!3416 (transformation!455 (rule!962 (h!8020 (t!24769 tokens!465))))) e!90766)))

(declare-fun b!151908 () Bool)

(assert (=> b!151908 (= e!90766 (equivClasses!140 (toChars!949 (transformation!455 (rule!962 (h!8020 (t!24769 tokens!465))))) (toValue!1090 (transformation!455 (rule!962 (h!8020 (t!24769 tokens!465)))))))))

(assert (= (and d!36487 res!69604) b!151908))

(declare-fun m!136609 () Bool)

(assert (=> d!36487 m!136609))

(declare-fun m!136611 () Bool)

(assert (=> b!151908 m!136611))

(assert (=> b!151229 d!36487))

(declare-fun d!36489 () Bool)

(declare-fun lt!44538 () BalanceConc!1472)

(assert (=> d!36489 (= (list!917 lt!44538) (originalCharacters!498 call!6107))))

(assert (=> d!36489 (= lt!44538 (dynLambda!914 (toChars!949 (transformation!455 (rule!962 call!6107))) (value!17283 call!6107)))))

(assert (=> d!36489 (= (charsOf!110 call!6107) lt!44538)))

(declare-fun b_lambda!2791 () Bool)

(assert (=> (not b_lambda!2791) (not d!36489)))

(declare-fun tb!5145 () Bool)

(declare-fun t!24904 () Bool)

(assert (=> (and b!150761 (= (toChars!949 (transformation!455 (rule!962 separatorToken!170))) (toChars!949 (transformation!455 (rule!962 call!6107)))) t!24904) tb!5145))

(declare-fun b!151909 () Bool)

(declare-fun e!90767 () Bool)

(declare-fun tp!78806 () Bool)

(assert (=> b!151909 (= e!90767 (and (inv!3419 (c!30493 (dynLambda!914 (toChars!949 (transformation!455 (rule!962 call!6107))) (value!17283 call!6107)))) tp!78806))))

(declare-fun result!7600 () Bool)

(assert (=> tb!5145 (= result!7600 (and (inv!3420 (dynLambda!914 (toChars!949 (transformation!455 (rule!962 call!6107))) (value!17283 call!6107))) e!90767))))

(assert (= tb!5145 b!151909))

(declare-fun m!136617 () Bool)

(assert (=> b!151909 m!136617))

(declare-fun m!136619 () Bool)

(assert (=> tb!5145 m!136619))

(assert (=> d!36489 t!24904))

(declare-fun b_and!8783 () Bool)

(assert (= b_and!8761 (and (=> t!24904 result!7600) b_and!8783)))

(declare-fun tb!5147 () Bool)

(declare-fun t!24906 () Bool)

(assert (=> (and b!151202 (= (toChars!949 (transformation!455 (h!8021 (t!24770 rules!1920)))) (toChars!949 (transformation!455 (rule!962 call!6107)))) t!24906) tb!5147))

(declare-fun result!7602 () Bool)

(assert (= result!7602 result!7600))

(assert (=> d!36489 t!24906))

(declare-fun b_and!8785 () Bool)

(assert (= b_and!8755 (and (=> t!24906 result!7602) b_and!8785)))

(declare-fun t!24908 () Bool)

(declare-fun tb!5149 () Bool)

(assert (=> (and b!151230 (= (toChars!949 (transformation!455 (rule!962 (h!8020 (t!24769 tokens!465))))) (toChars!949 (transformation!455 (rule!962 call!6107)))) t!24908) tb!5149))

(declare-fun result!7604 () Bool)

(assert (= result!7604 result!7600))

(assert (=> d!36489 t!24908))

(declare-fun b_and!8787 () Bool)

(assert (= b_and!8757 (and (=> t!24908 result!7604) b_and!8787)))

(declare-fun t!24910 () Bool)

(declare-fun tb!5151 () Bool)

(assert (=> (and b!150757 (= (toChars!949 (transformation!455 (rule!962 (h!8020 tokens!465)))) (toChars!949 (transformation!455 (rule!962 call!6107)))) t!24910) tb!5151))

(declare-fun result!7606 () Bool)

(assert (= result!7606 result!7600))

(assert (=> d!36489 t!24910))

(declare-fun b_and!8789 () Bool)

(assert (= b_and!8759 (and (=> t!24910 result!7606) b_and!8789)))

(declare-fun t!24912 () Bool)

(declare-fun tb!5153 () Bool)

(assert (=> (and b!150754 (= (toChars!949 (transformation!455 (h!8021 rules!1920))) (toChars!949 (transformation!455 (rule!962 call!6107)))) t!24912) tb!5153))

(declare-fun result!7608 () Bool)

(assert (= result!7608 result!7600))

(assert (=> d!36489 t!24912))

(declare-fun b_and!8791 () Bool)

(assert (= b_and!8753 (and (=> t!24912 result!7608) b_and!8791)))

(declare-fun m!136621 () Bool)

(assert (=> d!36489 m!136621))

(declare-fun m!136623 () Bool)

(assert (=> d!36489 m!136623))

(assert (=> b!151150 d!36489))

(declare-fun d!36493 () Bool)

(declare-fun charsToBigInt!1 (List!2632) Int)

(assert (=> d!36493 (= (inv!17 (value!17283 separatorToken!170)) (= (charsToBigInt!1 (text!3787 (value!17283 separatorToken!170))) (value!17275 (value!17283 separatorToken!170))))))

(declare-fun bs!13949 () Bool)

(assert (= bs!13949 d!36493))

(declare-fun m!136625 () Bool)

(assert (=> bs!13949 m!136625))

(assert (=> b!151004 d!36493))

(declare-fun d!36495 () Bool)

(declare-fun res!69605 () Bool)

(declare-fun e!90768 () Bool)

(assert (=> d!36495 (=> (not res!69605) (not e!90768))))

(assert (=> d!36495 (= res!69605 (not (isEmpty!1035 (originalCharacters!498 (h!8020 (t!24769 tokens!465))))))))

(assert (=> d!36495 (= (inv!3415 (h!8020 (t!24769 tokens!465))) e!90768)))

(declare-fun b!151910 () Bool)

(declare-fun res!69606 () Bool)

(assert (=> b!151910 (=> (not res!69606) (not e!90768))))

(assert (=> b!151910 (= res!69606 (= (originalCharacters!498 (h!8020 (t!24769 tokens!465))) (list!917 (dynLambda!914 (toChars!949 (transformation!455 (rule!962 (h!8020 (t!24769 tokens!465))))) (value!17283 (h!8020 (t!24769 tokens!465)))))))))

(declare-fun b!151911 () Bool)

(assert (=> b!151911 (= e!90768 (= (size!2237 (h!8020 (t!24769 tokens!465))) (size!2240 (originalCharacters!498 (h!8020 (t!24769 tokens!465))))))))

(assert (= (and d!36495 res!69605) b!151910))

(assert (= (and b!151910 res!69606) b!151911))

(declare-fun b_lambda!2793 () Bool)

(assert (=> (not b_lambda!2793) (not b!151910)))

(assert (=> b!151910 t!24867))

(declare-fun b_and!8793 () Bool)

(assert (= b_and!8785 (and (=> t!24867 result!7564) b_and!8793)))

(assert (=> b!151910 t!24871))

(declare-fun b_and!8795 () Bool)

(assert (= b_and!8791 (and (=> t!24871 result!7568) b_and!8795)))

(assert (=> b!151910 t!24865))

(declare-fun b_and!8797 () Bool)

(assert (= b_and!8783 (and (=> t!24865 result!7562) b_and!8797)))

(assert (=> b!151910 t!24869))

(declare-fun b_and!8799 () Bool)

(assert (= b_and!8787 (and (=> t!24869 result!7566) b_and!8799)))

(assert (=> b!151910 t!24863))

(declare-fun b_and!8801 () Bool)

(assert (= b_and!8789 (and (=> t!24863 result!7560) b_and!8801)))

(declare-fun m!136631 () Bool)

(assert (=> d!36495 m!136631))

(assert (=> b!151910 m!135547))

(assert (=> b!151910 m!135547))

(declare-fun m!136634 () Bool)

(assert (=> b!151910 m!136634))

(declare-fun m!136637 () Bool)

(assert (=> b!151911 m!136637))

(assert (=> b!151227 d!36495))

(assert (=> b!151148 d!36197))

(declare-fun d!36501 () Bool)

(assert (=> d!36501 (= (inv!15 (value!17283 separatorToken!170)) (= (charsToBigInt!0 (text!3788 (value!17283 separatorToken!170)) 0) (value!17278 (value!17283 separatorToken!170))))))

(declare-fun bs!13953 () Bool)

(assert (= bs!13953 d!36501))

(declare-fun m!136643 () Bool)

(assert (=> bs!13953 m!136643))

(assert (=> b!151003 d!36501))

(declare-fun d!36505 () Bool)

(declare-fun res!69609 () Bool)

(declare-fun e!90771 () Bool)

(assert (=> d!36505 (=> res!69609 e!90771)))

(assert (=> d!36505 (= res!69609 ((_ is Nil!2623) (t!24769 tokens!465)))))

(assert (=> d!36505 (= (forall!443 (t!24769 tokens!465) lambda!3862) e!90771)))

(declare-fun b!151914 () Bool)

(declare-fun e!90772 () Bool)

(assert (=> b!151914 (= e!90771 e!90772)))

(declare-fun res!69610 () Bool)

(assert (=> b!151914 (=> (not res!69610) (not e!90772))))

(assert (=> b!151914 (= res!69610 (dynLambda!915 lambda!3862 (h!8020 (t!24769 tokens!465))))))

(declare-fun b!151915 () Bool)

(assert (=> b!151915 (= e!90772 (forall!443 (t!24769 (t!24769 tokens!465)) lambda!3862))))

(assert (= (and d!36505 (not res!69609)) b!151914))

(assert (= (and b!151914 res!69610) b!151915))

(declare-fun b_lambda!2797 () Bool)

(assert (=> (not b_lambda!2797) (not b!151914)))

(declare-fun m!136649 () Bool)

(assert (=> b!151914 m!136649))

(declare-fun m!136651 () Bool)

(assert (=> b!151915 m!136651))

(assert (=> b!150987 d!36505))

(declare-fun d!36509 () Bool)

(assert (=> d!36509 (= (list!917 (dynLambda!914 (toChars!949 (transformation!455 (rule!962 separatorToken!170))) (value!17283 separatorToken!170))) (list!921 (c!30493 (dynLambda!914 (toChars!949 (transformation!455 (rule!962 separatorToken!170))) (value!17283 separatorToken!170)))))))

(declare-fun bs!13954 () Bool)

(assert (= bs!13954 d!36509))

(declare-fun m!136653 () Bool)

(assert (=> bs!13954 m!136653))

(assert (=> b!150856 d!36509))

(declare-fun d!36511 () Bool)

(assert (=> d!36511 true))

(declare-fun order!1313 () Int)

(declare-fun lambda!3928 () Int)

(declare-fun dynLambda!919 (Int Int) Int)

(assert (=> d!36511 (< (dynLambda!913 order!1299 (toChars!949 (transformation!455 (rule!962 (h!8020 tokens!465))))) (dynLambda!919 order!1313 lambda!3928))))

(assert (=> d!36511 true))

(assert (=> d!36511 (< (dynLambda!911 order!1295 (toValue!1090 (transformation!455 (rule!962 (h!8020 tokens!465))))) (dynLambda!919 order!1313 lambda!3928))))

(declare-fun Forall!122 (Int) Bool)

(assert (=> d!36511 (= (semiInverseModEq!157 (toChars!949 (transformation!455 (rule!962 (h!8020 tokens!465)))) (toValue!1090 (transformation!455 (rule!962 (h!8020 tokens!465))))) (Forall!122 lambda!3928))))

(declare-fun bs!13956 () Bool)

(assert (= bs!13956 d!36511))

(declare-fun m!136719 () Bool)

(assert (=> bs!13956 m!136719))

(assert (=> d!36111 d!36511))

(declare-fun d!36525 () Bool)

(declare-fun e!90785 () Bool)

(assert (=> d!36525 e!90785))

(declare-fun res!69619 () Bool)

(assert (=> d!36525 (=> (not res!69619) (not e!90785))))

(declare-fun lt!44570 () List!2631)

(assert (=> d!36525 (= res!69619 (= (content!362 lt!44570) ((_ map or) (content!362 e!90169) (content!362 (ite c!30540 lt!44015 call!6090)))))))

(declare-fun e!90784 () List!2631)

(assert (=> d!36525 (= lt!44570 e!90784)))

(declare-fun c!30752 () Bool)

(assert (=> d!36525 (= c!30752 ((_ is Nil!2621) e!90169))))

(assert (=> d!36525 (= (++!560 e!90169 (ite c!30540 lt!44015 call!6090)) lt!44570)))

(declare-fun b!151940 () Bool)

(assert (=> b!151940 (= e!90784 (Cons!2621 (h!8018 e!90169) (++!560 (t!24767 e!90169) (ite c!30540 lt!44015 call!6090))))))

(declare-fun b!151939 () Bool)

(assert (=> b!151939 (= e!90784 (ite c!30540 lt!44015 call!6090))))

(declare-fun b!151941 () Bool)

(declare-fun res!69618 () Bool)

(assert (=> b!151941 (=> (not res!69618) (not e!90785))))

(assert (=> b!151941 (= res!69618 (= (size!2240 lt!44570) (+ (size!2240 e!90169) (size!2240 (ite c!30540 lt!44015 call!6090)))))))

(declare-fun b!151942 () Bool)

(assert (=> b!151942 (= e!90785 (or (not (= (ite c!30540 lt!44015 call!6090) Nil!2621)) (= lt!44570 e!90169)))))

(assert (= (and d!36525 c!30752) b!151939))

(assert (= (and d!36525 (not c!30752)) b!151940))

(assert (= (and d!36525 res!69619) b!151941))

(assert (= (and b!151941 res!69618) b!151942))

(declare-fun m!136721 () Bool)

(assert (=> d!36525 m!136721))

(declare-fun m!136723 () Bool)

(assert (=> d!36525 m!136723))

(declare-fun m!136725 () Bool)

(assert (=> d!36525 m!136725))

(declare-fun m!136727 () Bool)

(assert (=> b!151940 m!136727))

(declare-fun m!136729 () Bool)

(assert (=> b!151941 m!136729))

(declare-fun m!136731 () Bool)

(assert (=> b!151941 m!136731))

(declare-fun m!136733 () Bool)

(assert (=> b!151941 m!136733))

(assert (=> bm!6084 d!36525))

(declare-fun d!36527 () Bool)

(declare-fun e!90787 () Bool)

(assert (=> d!36527 e!90787))

(declare-fun res!69621 () Bool)

(assert (=> d!36527 (=> (not res!69621) (not e!90787))))

(declare-fun lt!44571 () List!2631)

(assert (=> d!36527 (= res!69621 (= (content!362 lt!44571) ((_ map or) (content!362 e!90308) (content!362 (ite c!30574 lt!44092 call!6115)))))))

(declare-fun e!90786 () List!2631)

(assert (=> d!36527 (= lt!44571 e!90786)))

(declare-fun c!30753 () Bool)

(assert (=> d!36527 (= c!30753 ((_ is Nil!2621) e!90308))))

(assert (=> d!36527 (= (++!560 e!90308 (ite c!30574 lt!44092 call!6115)) lt!44571)))

(declare-fun b!151944 () Bool)

(assert (=> b!151944 (= e!90786 (Cons!2621 (h!8018 e!90308) (++!560 (t!24767 e!90308) (ite c!30574 lt!44092 call!6115))))))

(declare-fun b!151943 () Bool)

(assert (=> b!151943 (= e!90786 (ite c!30574 lt!44092 call!6115))))

(declare-fun b!151945 () Bool)

(declare-fun res!69620 () Bool)

(assert (=> b!151945 (=> (not res!69620) (not e!90787))))

(assert (=> b!151945 (= res!69620 (= (size!2240 lt!44571) (+ (size!2240 e!90308) (size!2240 (ite c!30574 lt!44092 call!6115)))))))

(declare-fun b!151946 () Bool)

(assert (=> b!151946 (= e!90787 (or (not (= (ite c!30574 lt!44092 call!6115) Nil!2621)) (= lt!44571 e!90308)))))

(assert (= (and d!36527 c!30753) b!151943))

(assert (= (and d!36527 (not c!30753)) b!151944))

(assert (= (and d!36527 res!69621) b!151945))

(assert (= (and b!151945 res!69620) b!151946))

(declare-fun m!136735 () Bool)

(assert (=> d!36527 m!136735))

(declare-fun m!136737 () Bool)

(assert (=> d!36527 m!136737))

(declare-fun m!136739 () Bool)

(assert (=> d!36527 m!136739))

(declare-fun m!136741 () Bool)

(assert (=> b!151944 m!136741))

(declare-fun m!136743 () Bool)

(assert (=> b!151945 m!136743))

(declare-fun m!136745 () Bool)

(assert (=> b!151945 m!136745))

(declare-fun m!136747 () Bool)

(assert (=> b!151945 m!136747))

(assert (=> bm!6109 d!36527))

(declare-fun bs!13957 () Bool)

(declare-fun d!36529 () Bool)

(assert (= bs!13957 (and d!36529 d!36511)))

(declare-fun lambda!3929 () Int)

(assert (=> bs!13957 (= (and (= (toChars!949 (transformation!455 (rule!962 separatorToken!170))) (toChars!949 (transformation!455 (rule!962 (h!8020 tokens!465))))) (= (toValue!1090 (transformation!455 (rule!962 separatorToken!170))) (toValue!1090 (transformation!455 (rule!962 (h!8020 tokens!465)))))) (= lambda!3929 lambda!3928))))

(assert (=> d!36529 true))

(assert (=> d!36529 (< (dynLambda!913 order!1299 (toChars!949 (transformation!455 (rule!962 separatorToken!170)))) (dynLambda!919 order!1313 lambda!3929))))

(assert (=> d!36529 true))

(assert (=> d!36529 (< (dynLambda!911 order!1295 (toValue!1090 (transformation!455 (rule!962 separatorToken!170)))) (dynLambda!919 order!1313 lambda!3929))))

(assert (=> d!36529 (= (semiInverseModEq!157 (toChars!949 (transformation!455 (rule!962 separatorToken!170))) (toValue!1090 (transformation!455 (rule!962 separatorToken!170)))) (Forall!122 lambda!3929))))

(declare-fun bs!13958 () Bool)

(assert (= bs!13958 d!36529))

(declare-fun m!136793 () Bool)

(assert (=> bs!13958 m!136793))

(assert (=> d!36107 d!36529))

(declare-fun d!36531 () Bool)

(assert (=> d!36531 (= (isEmpty!1035 (originalCharacters!498 (h!8020 tokens!465))) ((_ is Nil!2621) (originalCharacters!498 (h!8020 tokens!465))))))

(assert (=> d!36121 d!36531))

(declare-fun d!36537 () Bool)

(assert (=> d!36537 (= (inv!17 (value!17283 (h!8020 tokens!465))) (= (charsToBigInt!1 (text!3787 (value!17283 (h!8020 tokens!465)))) (value!17275 (value!17283 (h!8020 tokens!465)))))))

(declare-fun bs!13960 () Bool)

(assert (= bs!13960 d!36537))

(declare-fun m!136807 () Bool)

(assert (=> bs!13960 m!136807))

(assert (=> b!151009 d!36537))

(assert (=> b!150973 d!36089))

(declare-fun d!36539 () Bool)

(declare-fun lt!44589 () BalanceConc!1472)

(assert (=> d!36539 (= (list!917 lt!44589) (printList!50 thiss!17480 (list!920 (singletonSeq!25 (h!8020 tokens!465)))))))

(assert (=> d!36539 (= lt!44589 (printTailRec!55 thiss!17480 (singletonSeq!25 (h!8020 tokens!465)) 0 (BalanceConc!1473 Empty!732)))))

(assert (=> d!36539 (= (print!92 thiss!17480 (singletonSeq!25 (h!8020 tokens!465))) lt!44589)))

(declare-fun bs!13961 () Bool)

(assert (= bs!13961 d!36539))

(declare-fun m!136809 () Bool)

(assert (=> bs!13961 m!136809))

(assert (=> bs!13961 m!135117))

(declare-fun m!136811 () Bool)

(assert (=> bs!13961 m!136811))

(assert (=> bs!13961 m!136811))

(declare-fun m!136813 () Bool)

(assert (=> bs!13961 m!136813))

(assert (=> bs!13961 m!135117))

(assert (=> bs!13961 m!135121))

(assert (=> b!151161 d!36539))

(declare-fun d!36541 () Bool)

(declare-fun e!90790 () Bool)

(assert (=> d!36541 e!90790))

(declare-fun res!69624 () Bool)

(assert (=> d!36541 (=> (not res!69624) (not e!90790))))

(declare-fun lt!44590 () BalanceConc!1474)

(assert (=> d!36541 (= res!69624 (= (list!920 lt!44590) (Cons!2623 (h!8020 tokens!465) Nil!2623)))))

(assert (=> d!36541 (= lt!44590 (singleton!18 (h!8020 tokens!465)))))

(assert (=> d!36541 (= (singletonSeq!25 (h!8020 tokens!465)) lt!44590)))

(declare-fun b!151951 () Bool)

(assert (=> b!151951 (= e!90790 (isBalanced!205 (c!30495 lt!44590)))))

(assert (= (and d!36541 res!69624) b!151951))

(declare-fun m!136815 () Bool)

(assert (=> d!36541 m!136815))

(declare-fun m!136817 () Bool)

(assert (=> d!36541 m!136817))

(declare-fun m!136819 () Bool)

(assert (=> b!151951 m!136819))

(assert (=> b!151161 d!36541))

(declare-fun d!36543 () Bool)

(declare-fun lt!44595 () BalanceConc!1472)

(assert (=> d!36543 (= (list!917 lt!44595) (printListTailRec!38 thiss!17480 (dropList!66 (singletonSeq!25 (h!8020 tokens!465)) 0) (list!917 (BalanceConc!1473 Empty!732))))))

(declare-fun e!90791 () BalanceConc!1472)

(assert (=> d!36543 (= lt!44595 e!90791)))

(declare-fun c!30755 () Bool)

(assert (=> d!36543 (= c!30755 (>= 0 (size!2241 (singletonSeq!25 (h!8020 tokens!465)))))))

(declare-fun e!90792 () Bool)

(assert (=> d!36543 e!90792))

(declare-fun res!69625 () Bool)

(assert (=> d!36543 (=> (not res!69625) (not e!90792))))

(assert (=> d!36543 (= res!69625 (>= 0 0))))

(assert (=> d!36543 (= (printTailRec!55 thiss!17480 (singletonSeq!25 (h!8020 tokens!465)) 0 (BalanceConc!1473 Empty!732)) lt!44595)))

(declare-fun b!151952 () Bool)

(assert (=> b!151952 (= e!90792 (<= 0 (size!2241 (singletonSeq!25 (h!8020 tokens!465)))))))

(declare-fun b!151953 () Bool)

(assert (=> b!151953 (= e!90791 (BalanceConc!1473 Empty!732))))

(declare-fun b!151954 () Bool)

(assert (=> b!151954 (= e!90791 (printTailRec!55 thiss!17480 (singletonSeq!25 (h!8020 tokens!465)) (+ 0 1) (++!562 (BalanceConc!1473 Empty!732) (charsOf!110 (apply!341 (singletonSeq!25 (h!8020 tokens!465)) 0)))))))

(declare-fun lt!44592 () List!2633)

(assert (=> b!151954 (= lt!44592 (list!920 (singletonSeq!25 (h!8020 tokens!465))))))

(declare-fun lt!44593 () Unit!1992)

(assert (=> b!151954 (= lt!44593 (lemmaDropApply!106 lt!44592 0))))

(assert (=> b!151954 (= (head!580 (drop!119 lt!44592 0)) (apply!342 lt!44592 0))))

(declare-fun lt!44594 () Unit!1992)

(assert (=> b!151954 (= lt!44594 lt!44593)))

(declare-fun lt!44591 () List!2633)

(assert (=> b!151954 (= lt!44591 (list!920 (singletonSeq!25 (h!8020 tokens!465))))))

(declare-fun lt!44597 () Unit!1992)

(assert (=> b!151954 (= lt!44597 (lemmaDropTail!98 lt!44591 0))))

(assert (=> b!151954 (= (tail!320 (drop!119 lt!44591 0)) (drop!119 lt!44591 (+ 0 1)))))

(declare-fun lt!44596 () Unit!1992)

(assert (=> b!151954 (= lt!44596 lt!44597)))

(assert (= (and d!36543 res!69625) b!151952))

(assert (= (and d!36543 c!30755) b!151953))

(assert (= (and d!36543 (not c!30755)) b!151954))

(declare-fun m!136855 () Bool)

(assert (=> d!36543 m!136855))

(assert (=> d!36543 m!135117))

(declare-fun m!136859 () Bool)

(assert (=> d!36543 m!136859))

(assert (=> d!36543 m!135117))

(declare-fun m!136861 () Bool)

(assert (=> d!36543 m!136861))

(assert (=> d!36543 m!135771))

(assert (=> d!36543 m!136859))

(assert (=> d!36543 m!135771))

(declare-fun m!136865 () Bool)

(assert (=> d!36543 m!136865))

(assert (=> b!151952 m!135117))

(assert (=> b!151952 m!136861))

(assert (=> b!151954 m!135117))

(declare-fun m!136869 () Bool)

(assert (=> b!151954 m!136869))

(declare-fun m!136875 () Bool)

(assert (=> b!151954 m!136875))

(declare-fun m!136881 () Bool)

(assert (=> b!151954 m!136881))

(assert (=> b!151954 m!136869))

(declare-fun m!136885 () Bool)

(assert (=> b!151954 m!136885))

(declare-fun m!136887 () Bool)

(assert (=> b!151954 m!136887))

(declare-fun m!136889 () Bool)

(assert (=> b!151954 m!136889))

(declare-fun m!136891 () Bool)

(assert (=> b!151954 m!136891))

(declare-fun m!136895 () Bool)

(assert (=> b!151954 m!136895))

(assert (=> b!151954 m!135117))

(declare-fun m!136897 () Bool)

(assert (=> b!151954 m!136897))

(assert (=> b!151954 m!136895))

(declare-fun m!136901 () Bool)

(assert (=> b!151954 m!136901))

(assert (=> b!151954 m!136889))

(declare-fun m!136903 () Bool)

(assert (=> b!151954 m!136903))

(assert (=> b!151954 m!135117))

(assert (=> b!151954 m!136811))

(assert (=> b!151954 m!136897))

(assert (=> b!151954 m!136881))

(declare-fun m!136905 () Bool)

(assert (=> b!151954 m!136905))

(assert (=> b!151161 d!36543))

(declare-fun b!151958 () Bool)

(declare-fun e!90793 () Unit!1992)

(declare-fun Unit!2020 () Unit!1992)

(assert (=> b!151958 (= e!90793 Unit!2020)))

(declare-fun lt!44613 () Token!654)

(declare-fun e!90794 () Bool)

(declare-fun b!151956 () Bool)

(assert (=> b!151956 (= e!90794 (= (rule!962 lt!44613) (get!711 (getRuleFromTag!10 thiss!17480 rules!1920 (tag!633 (rule!962 lt!44613))))))))

(declare-fun d!36547 () Bool)

(assert (=> d!36547 (isDefined!99 (maxPrefix!107 thiss!17480 rules!1920 (++!560 call!6115 lt!44092)))))

(declare-fun lt!44604 () Unit!1992)

(assert (=> d!36547 (= lt!44604 e!90793)))

(declare-fun c!30756 () Bool)

(assert (=> d!36547 (= c!30756 (isEmpty!1042 (maxPrefix!107 thiss!17480 rules!1920 (++!560 call!6115 lt!44092))))))

(declare-fun lt!44606 () Unit!1992)

(declare-fun lt!44605 () Unit!1992)

(assert (=> d!36547 (= lt!44606 lt!44605)))

(assert (=> d!36547 e!90794))

(declare-fun res!69626 () Bool)

(assert (=> d!36547 (=> (not res!69626) (not e!90794))))

(assert (=> d!36547 (= res!69626 (isDefined!100 (getRuleFromTag!10 thiss!17480 rules!1920 (tag!633 (rule!962 lt!44613)))))))

(assert (=> d!36547 (= lt!44605 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!10 thiss!17480 rules!1920 call!6115 lt!44613))))

(declare-fun lt!44612 () Unit!1992)

(declare-fun lt!44600 () Unit!1992)

(assert (=> d!36547 (= lt!44612 lt!44600)))

(declare-fun lt!44611 () List!2631)

(assert (=> d!36547 (isPrefix!211 lt!44611 (++!560 call!6115 lt!44092))))

(assert (=> d!36547 (= lt!44600 (lemmaPrefixStaysPrefixWhenAddingToSuffix!10 lt!44611 call!6115 lt!44092))))

(assert (=> d!36547 (= lt!44611 (list!917 (charsOf!110 lt!44613)))))

(declare-fun lt!44603 () Unit!1992)

(declare-fun lt!44599 () Unit!1992)

(assert (=> d!36547 (= lt!44603 lt!44599)))

(declare-fun lt!44607 () List!2631)

(declare-fun lt!44610 () List!2631)

(assert (=> d!36547 (isPrefix!211 lt!44607 (++!560 lt!44607 lt!44610))))

(assert (=> d!36547 (= lt!44599 (lemmaConcatTwoListThenFirstIsPrefix!114 lt!44607 lt!44610))))

(assert (=> d!36547 (= lt!44610 (_2!1499 (get!710 (maxPrefix!107 thiss!17480 rules!1920 call!6115))))))

(assert (=> d!36547 (= lt!44607 (list!917 (charsOf!110 lt!44613)))))

(assert (=> d!36547 (= lt!44613 (head!580 (list!920 (_1!1500 (lex!167 thiss!17480 rules!1920 (seqFromList!287 call!6115))))))))

(assert (=> d!36547 (not (isEmpty!1032 rules!1920))))

(assert (=> d!36547 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!14 thiss!17480 rules!1920 call!6115 lt!44092) lt!44604)))

(declare-fun b!151955 () Bool)

(declare-fun res!69627 () Bool)

(assert (=> b!151955 (=> (not res!69627) (not e!90794))))

(assert (=> b!151955 (= res!69627 (matchR!67 (regex!455 (get!711 (getRuleFromTag!10 thiss!17480 rules!1920 (tag!633 (rule!962 lt!44613))))) (list!917 (charsOf!110 lt!44613))))))

(declare-fun b!151957 () Bool)

(declare-fun Unit!2021 () Unit!1992)

(assert (=> b!151957 (= e!90793 Unit!2021)))

(declare-fun lt!44608 () List!2631)

(assert (=> b!151957 (= lt!44608 (++!560 call!6115 lt!44092))))

(declare-fun lt!44609 () Unit!1992)

(assert (=> b!151957 (= lt!44609 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!10 thiss!17480 (rule!962 lt!44613) rules!1920 lt!44608))))

(assert (=> b!151957 (isEmpty!1042 (maxPrefixOneRule!55 thiss!17480 (rule!962 lt!44613) lt!44608))))

(declare-fun lt!44601 () Unit!1992)

(assert (=> b!151957 (= lt!44601 lt!44609)))

(declare-fun lt!44615 () List!2631)

(assert (=> b!151957 (= lt!44615 (list!917 (charsOf!110 lt!44613)))))

(declare-fun lt!44614 () Unit!1992)

(assert (=> b!151957 (= lt!44614 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!10 thiss!17480 (rule!962 lt!44613) lt!44615 (++!560 call!6115 lt!44092)))))

(assert (=> b!151957 (not (matchR!67 (regex!455 (rule!962 lt!44613)) lt!44615))))

(declare-fun lt!44602 () Unit!1992)

(assert (=> b!151957 (= lt!44602 lt!44614)))

(assert (=> b!151957 false))

(assert (= (and d!36547 res!69626) b!151955))

(assert (= (and b!151955 res!69627) b!151956))

(assert (= (and d!36547 c!30756) b!151957))

(assert (= (and d!36547 (not c!30756)) b!151958))

(declare-fun m!136919 () Bool)

(assert (=> b!151956 m!136919))

(assert (=> b!151956 m!136919))

(declare-fun m!136921 () Bool)

(assert (=> b!151956 m!136921))

(declare-fun m!136923 () Bool)

(assert (=> d!36547 m!136923))

(declare-fun m!136925 () Bool)

(assert (=> d!36547 m!136925))

(declare-fun m!136927 () Bool)

(assert (=> d!36547 m!136927))

(declare-fun m!136929 () Bool)

(assert (=> d!36547 m!136929))

(declare-fun m!136931 () Bool)

(assert (=> d!36547 m!136931))

(declare-fun m!136933 () Bool)

(assert (=> d!36547 m!136933))

(assert (=> d!36547 m!136925))

(declare-fun m!136939 () Bool)

(assert (=> d!36547 m!136939))

(declare-fun m!136943 () Bool)

(assert (=> d!36547 m!136943))

(declare-fun m!136945 () Bool)

(assert (=> d!36547 m!136945))

(declare-fun m!136949 () Bool)

(assert (=> d!36547 m!136949))

(assert (=> d!36547 m!136931))

(declare-fun m!136953 () Bool)

(assert (=> d!36547 m!136953))

(declare-fun m!136957 () Bool)

(assert (=> d!36547 m!136957))

(assert (=> d!36547 m!136931))

(assert (=> d!36547 m!136957))

(assert (=> d!36547 m!136943))

(assert (=> d!36547 m!136957))

(declare-fun m!136965 () Bool)

(assert (=> d!36547 m!136965))

(assert (=> d!36547 m!136919))

(assert (=> d!36547 m!136927))

(assert (=> d!36547 m!136919))

(declare-fun m!136975 () Bool)

(assert (=> d!36547 m!136975))

(assert (=> d!36547 m!134617))

(declare-fun m!136979 () Bool)

(assert (=> d!36547 m!136979))

(declare-fun m!136983 () Bool)

(assert (=> d!36547 m!136983))

(declare-fun m!136985 () Bool)

(assert (=> d!36547 m!136985))

(declare-fun m!136987 () Bool)

(assert (=> d!36547 m!136987))

(assert (=> d!36547 m!136987))

(declare-fun m!136989 () Bool)

(assert (=> d!36547 m!136989))

(assert (=> d!36547 m!136983))

(assert (=> b!151955 m!136919))

(assert (=> b!151955 m!136943))

(assert (=> b!151955 m!136945))

(assert (=> b!151955 m!136945))

(declare-fun m!136993 () Bool)

(assert (=> b!151955 m!136993))

(assert (=> b!151955 m!136919))

(assert (=> b!151955 m!136921))

(assert (=> b!151955 m!136943))

(declare-fun m!136997 () Bool)

(assert (=> b!151957 m!136997))

(declare-fun m!136999 () Bool)

(assert (=> b!151957 m!136999))

(declare-fun m!137001 () Bool)

(assert (=> b!151957 m!137001))

(assert (=> b!151957 m!137001))

(declare-fun m!137005 () Bool)

(assert (=> b!151957 m!137005))

(assert (=> b!151957 m!136957))

(assert (=> b!151957 m!136943))

(assert (=> b!151957 m!136957))

(declare-fun m!137007 () Bool)

(assert (=> b!151957 m!137007))

(assert (=> b!151957 m!136943))

(assert (=> b!151957 m!136945))

(assert (=> b!151161 d!36547))

(declare-fun lt!44624 () BalanceConc!1472)

(declare-fun d!36559 () Bool)

(assert (=> d!36559 (= (list!917 lt!44624) (originalCharacters!498 (ite c!30567 call!6111 (ite c!30568 separatorToken!170 call!6107))))))

(assert (=> d!36559 (= lt!44624 (dynLambda!914 (toChars!949 (transformation!455 (rule!962 (ite c!30567 call!6111 (ite c!30568 separatorToken!170 call!6107))))) (value!17283 (ite c!30567 call!6111 (ite c!30568 separatorToken!170 call!6107)))))))

(assert (=> d!36559 (= (charsOf!110 (ite c!30567 call!6111 (ite c!30568 separatorToken!170 call!6107))) lt!44624)))

(declare-fun b_lambda!2799 () Bool)

(assert (=> (not b_lambda!2799) (not d!36559)))

(declare-fun tb!5155 () Bool)

(declare-fun t!24914 () Bool)

(assert (=> (and b!150754 (= (toChars!949 (transformation!455 (h!8021 rules!1920))) (toChars!949 (transformation!455 (rule!962 (ite c!30567 call!6111 (ite c!30568 separatorToken!170 call!6107)))))) t!24914) tb!5155))

(declare-fun tp!78807 () Bool)

(declare-fun e!90798 () Bool)

(declare-fun b!151963 () Bool)

(assert (=> b!151963 (= e!90798 (and (inv!3419 (c!30493 (dynLambda!914 (toChars!949 (transformation!455 (rule!962 (ite c!30567 call!6111 (ite c!30568 separatorToken!170 call!6107))))) (value!17283 (ite c!30567 call!6111 (ite c!30568 separatorToken!170 call!6107)))))) tp!78807))))

(declare-fun result!7610 () Bool)

(assert (=> tb!5155 (= result!7610 (and (inv!3420 (dynLambda!914 (toChars!949 (transformation!455 (rule!962 (ite c!30567 call!6111 (ite c!30568 separatorToken!170 call!6107))))) (value!17283 (ite c!30567 call!6111 (ite c!30568 separatorToken!170 call!6107))))) e!90798))))

(assert (= tb!5155 b!151963))

(declare-fun m!137009 () Bool)

(assert (=> b!151963 m!137009))

(declare-fun m!137011 () Bool)

(assert (=> tb!5155 m!137011))

(assert (=> d!36559 t!24914))

(declare-fun b_and!8803 () Bool)

(assert (= b_and!8795 (and (=> t!24914 result!7610) b_and!8803)))

(declare-fun t!24916 () Bool)

(declare-fun tb!5157 () Bool)

(assert (=> (and b!151230 (= (toChars!949 (transformation!455 (rule!962 (h!8020 (t!24769 tokens!465))))) (toChars!949 (transformation!455 (rule!962 (ite c!30567 call!6111 (ite c!30568 separatorToken!170 call!6107)))))) t!24916) tb!5157))

(declare-fun result!7612 () Bool)

(assert (= result!7612 result!7610))

(assert (=> d!36559 t!24916))

(declare-fun b_and!8805 () Bool)

(assert (= b_and!8799 (and (=> t!24916 result!7612) b_and!8805)))

(declare-fun tb!5159 () Bool)

(declare-fun t!24918 () Bool)

(assert (=> (and b!151202 (= (toChars!949 (transformation!455 (h!8021 (t!24770 rules!1920)))) (toChars!949 (transformation!455 (rule!962 (ite c!30567 call!6111 (ite c!30568 separatorToken!170 call!6107)))))) t!24918) tb!5159))

(declare-fun result!7614 () Bool)

(assert (= result!7614 result!7610))

(assert (=> d!36559 t!24918))

(declare-fun b_and!8807 () Bool)

(assert (= b_and!8793 (and (=> t!24918 result!7614) b_and!8807)))

(declare-fun tb!5161 () Bool)

(declare-fun t!24920 () Bool)

(assert (=> (and b!150757 (= (toChars!949 (transformation!455 (rule!962 (h!8020 tokens!465)))) (toChars!949 (transformation!455 (rule!962 (ite c!30567 call!6111 (ite c!30568 separatorToken!170 call!6107)))))) t!24920) tb!5161))

(declare-fun result!7616 () Bool)

(assert (= result!7616 result!7610))

(assert (=> d!36559 t!24920))

(declare-fun b_and!8809 () Bool)

(assert (= b_and!8801 (and (=> t!24920 result!7616) b_and!8809)))

(declare-fun tb!5163 () Bool)

(declare-fun t!24922 () Bool)

(assert (=> (and b!150761 (= (toChars!949 (transformation!455 (rule!962 separatorToken!170))) (toChars!949 (transformation!455 (rule!962 (ite c!30567 call!6111 (ite c!30568 separatorToken!170 call!6107)))))) t!24922) tb!5163))

(declare-fun result!7618 () Bool)

(assert (= result!7618 result!7610))

(assert (=> d!36559 t!24922))

(declare-fun b_and!8811 () Bool)

(assert (= b_and!8797 (and (=> t!24922 result!7618) b_and!8811)))

(declare-fun m!137013 () Bool)

(assert (=> d!36559 m!137013))

(declare-fun m!137015 () Bool)

(assert (=> d!36559 m!137015))

(assert (=> bm!6104 d!36559))

(declare-fun d!36561 () Bool)

(assert (=> d!36561 (= (isEmpty!1035 (originalCharacters!498 separatorToken!170)) ((_ is Nil!2621) (originalCharacters!498 separatorToken!170)))))

(assert (=> d!36075 d!36561))

(declare-fun d!36563 () Bool)

(declare-fun c!30760 () Bool)

(assert (=> d!36563 (= c!30760 ((_ is Nil!2621) lt!43979))))

(declare-fun e!90801 () (InoxSet C!2280))

(assert (=> d!36563 (= (content!362 lt!43979) e!90801)))

(declare-fun b!151970 () Bool)

(assert (=> b!151970 (= e!90801 ((as const (Array C!2280 Bool)) false))))

(declare-fun b!151971 () Bool)

(assert (=> b!151971 (= e!90801 ((_ map or) (store ((as const (Array C!2280 Bool)) false) (h!8018 lt!43979) true) (content!362 (t!24767 lt!43979))))))

(assert (= (and d!36563 c!30760) b!151970))

(assert (= (and d!36563 (not c!30760)) b!151971))

(declare-fun m!137019 () Bool)

(assert (=> b!151971 m!137019))

(declare-fun m!137021 () Bool)

(assert (=> b!151971 m!137021))

(assert (=> d!36083 d!36563))

(declare-fun d!36567 () Bool)

(declare-fun c!30762 () Bool)

(assert (=> d!36567 (= c!30762 ((_ is Nil!2621) (list!917 (charsOf!110 separatorToken!170))))))

(declare-fun e!90803 () (InoxSet C!2280))

(assert (=> d!36567 (= (content!362 (list!917 (charsOf!110 separatorToken!170))) e!90803)))

(declare-fun b!151974 () Bool)

(assert (=> b!151974 (= e!90803 ((as const (Array C!2280 Bool)) false))))

(declare-fun b!151975 () Bool)

(assert (=> b!151975 (= e!90803 ((_ map or) (store ((as const (Array C!2280 Bool)) false) (h!8018 (list!917 (charsOf!110 separatorToken!170))) true) (content!362 (t!24767 (list!917 (charsOf!110 separatorToken!170))))))))

(assert (= (and d!36567 c!30762) b!151974))

(assert (= (and d!36567 (not c!30762)) b!151975))

(declare-fun m!137023 () Bool)

(assert (=> b!151975 m!137023))

(assert (=> b!151975 m!136597))

(assert (=> d!36083 d!36567))

(declare-fun d!36571 () Bool)

(declare-fun c!30764 () Bool)

(assert (=> d!36571 (= c!30764 ((_ is Nil!2621) (printWithSeparatorTokenWhenNeededList!34 thiss!17480 rules!1920 (t!24769 tokens!465) separatorToken!170)))))

(declare-fun e!90805 () (InoxSet C!2280))

(assert (=> d!36571 (= (content!362 (printWithSeparatorTokenWhenNeededList!34 thiss!17480 rules!1920 (t!24769 tokens!465) separatorToken!170)) e!90805)))

(declare-fun b!151978 () Bool)

(assert (=> b!151978 (= e!90805 ((as const (Array C!2280 Bool)) false))))

(declare-fun b!151979 () Bool)

(assert (=> b!151979 (= e!90805 ((_ map or) (store ((as const (Array C!2280 Bool)) false) (h!8018 (printWithSeparatorTokenWhenNeededList!34 thiss!17480 rules!1920 (t!24769 tokens!465) separatorToken!170)) true) (content!362 (t!24767 (printWithSeparatorTokenWhenNeededList!34 thiss!17480 rules!1920 (t!24769 tokens!465) separatorToken!170)))))))

(assert (= (and d!36571 c!30764) b!151978))

(assert (= (and d!36571 (not c!30764)) b!151979))

(declare-fun m!137027 () Bool)

(assert (=> b!151979 m!137027))

(declare-fun m!137029 () Bool)

(assert (=> b!151979 m!137029))

(assert (=> d!36083 d!36571))

(declare-fun d!36575 () Bool)

(declare-fun c!30766 () Bool)

(assert (=> d!36575 (= c!30766 ((_ is Empty!732) (c!30493 (charsOf!110 separatorToken!170))))))

(declare-fun e!90807 () List!2631)

(assert (=> d!36575 (= (list!921 (c!30493 (charsOf!110 separatorToken!170))) e!90807)))

(declare-fun b!151982 () Bool)

(assert (=> b!151982 (= e!90807 Nil!2621)))

(declare-fun b!151984 () Bool)

(declare-fun e!90808 () List!2631)

(assert (=> b!151984 (= e!90808 (list!924 (xs!3327 (c!30493 (charsOf!110 separatorToken!170)))))))

(declare-fun b!151985 () Bool)

(assert (=> b!151985 (= e!90808 (++!560 (list!921 (left!1978 (c!30493 (charsOf!110 separatorToken!170)))) (list!921 (right!2308 (c!30493 (charsOf!110 separatorToken!170))))))))

(declare-fun b!151983 () Bool)

(assert (=> b!151983 (= e!90807 e!90808)))

(declare-fun c!30767 () Bool)

(assert (=> b!151983 (= c!30767 ((_ is Leaf!1299) (c!30493 (charsOf!110 separatorToken!170))))))

(assert (= (and d!36575 c!30766) b!151982))

(assert (= (and d!36575 (not c!30766)) b!151983))

(assert (= (and b!151983 c!30767) b!151984))

(assert (= (and b!151983 (not c!30767)) b!151985))

(declare-fun m!137035 () Bool)

(assert (=> b!151984 m!137035))

(declare-fun m!137037 () Bool)

(assert (=> b!151985 m!137037))

(declare-fun m!137039 () Bool)

(assert (=> b!151985 m!137039))

(assert (=> b!151985 m!137037))

(assert (=> b!151985 m!137039))

(declare-fun m!137041 () Bool)

(assert (=> b!151985 m!137041))

(assert (=> d!36077 d!36575))

(assert (=> bm!6110 d!36093))

(assert (=> d!36123 d!36191))

(declare-fun d!36581 () Bool)

(assert (=> d!36581 (= (list!920 (_1!1500 (lex!167 thiss!17480 rules!1920 (print!92 thiss!17480 (singletonSeq!25 separatorToken!170))))) (list!922 (c!30495 (_1!1500 (lex!167 thiss!17480 rules!1920 (print!92 thiss!17480 (singletonSeq!25 separatorToken!170)))))))))

(declare-fun bs!13967 () Bool)

(assert (= bs!13967 d!36581))

(declare-fun m!137045 () Bool)

(assert (=> bs!13967 m!137045))

(assert (=> d!36123 d!36581))

(assert (=> d!36123 d!36181))

(declare-fun d!36585 () Bool)

(assert (=> d!36585 (= (list!920 (singletonSeq!25 separatorToken!170)) (list!922 (c!30495 (singletonSeq!25 separatorToken!170))))))

(declare-fun bs!13969 () Bool)

(assert (= bs!13969 d!36585))

(declare-fun m!137051 () Bool)

(assert (=> bs!13969 m!137051))

(assert (=> d!36123 d!36585))

(assert (=> d!36123 d!36189))

(assert (=> d!36123 d!36119))

(declare-fun d!36589 () Bool)

(declare-fun lt!44631 () Int)

(assert (=> d!36589 (= lt!44631 (size!2246 (list!920 (_1!1500 lt!44028))))))

(assert (=> d!36589 (= lt!44631 (size!2247 (c!30495 (_1!1500 lt!44028))))))

(assert (=> d!36589 (= (size!2241 (_1!1500 lt!44028)) lt!44631)))

(declare-fun bs!13970 () Bool)

(assert (= bs!13970 d!36589))

(assert (=> bs!13970 m!135283))

(assert (=> bs!13970 m!135283))

(declare-fun m!137053 () Bool)

(assert (=> bs!13970 m!137053))

(declare-fun m!137055 () Bool)

(assert (=> bs!13970 m!137055))

(assert (=> d!36123 d!36589))

(declare-fun d!36591 () Bool)

(assert (=> d!36591 (= (list!917 (dynLambda!914 (toChars!949 (transformation!455 (rule!962 (h!8020 tokens!465)))) (value!17283 (h!8020 tokens!465)))) (list!921 (c!30493 (dynLambda!914 (toChars!949 (transformation!455 (rule!962 (h!8020 tokens!465)))) (value!17283 (h!8020 tokens!465))))))))

(declare-fun bs!13971 () Bool)

(assert (= bs!13971 d!36591))

(declare-fun m!137057 () Bool)

(assert (=> bs!13971 m!137057))

(assert (=> b!151013 d!36591))

(declare-fun d!36593 () Bool)

(declare-fun e!90815 () Bool)

(assert (=> d!36593 e!90815))

(declare-fun res!69634 () Bool)

(assert (=> d!36593 (=> (not res!69634) (not e!90815))))

(declare-fun lt!44634 () BalanceConc!1472)

(assert (=> d!36593 (= res!69634 (= (list!917 lt!44634) lt!43919))))

(declare-fun fromList!82 (List!2631) Conc!732)

(assert (=> d!36593 (= lt!44634 (BalanceConc!1473 (fromList!82 lt!43919)))))

(assert (=> d!36593 (= (fromListB!121 lt!43919) lt!44634)))

(declare-fun b!151994 () Bool)

(assert (=> b!151994 (= e!90815 (isBalanced!207 (fromList!82 lt!43919)))))

(assert (= (and d!36593 res!69634) b!151994))

(declare-fun m!137075 () Bool)

(assert (=> d!36593 m!137075))

(declare-fun m!137077 () Bool)

(assert (=> d!36593 m!137077))

(assert (=> b!151994 m!137077))

(assert (=> b!151994 m!137077))

(declare-fun m!137079 () Bool)

(assert (=> b!151994 m!137079))

(assert (=> d!36101 d!36593))

(declare-fun b!152012 () Bool)

(declare-fun e!90827 () Bool)

(declare-fun call!6176 () Bool)

(assert (=> b!152012 (= e!90827 call!6176)))

(declare-fun b!152013 () Bool)

(declare-fun e!90828 () Bool)

(declare-fun e!90829 () Bool)

(assert (=> b!152013 (= e!90828 e!90829)))

(declare-fun res!69646 () Bool)

(assert (=> b!152013 (= res!69646 (not ((_ is Cons!2624) rules!1920)))))

(assert (=> b!152013 (=> res!69646 e!90829)))

(declare-fun b!152014 () Bool)

(assert (=> b!152014 (= e!90828 e!90827)))

(declare-fun res!69647 () Bool)

(declare-fun rulesUseDisjointChars!12 (Rule!710 Rule!710) Bool)

(assert (=> b!152014 (= res!69647 (rulesUseDisjointChars!12 (h!8021 rules!1920) (h!8021 rules!1920)))))

(assert (=> b!152014 (=> (not res!69647) (not e!90827))))

(declare-fun bm!6171 () Bool)

(assert (=> bm!6171 (= call!6176 (ruleDisjointCharsFromAllFromOtherType!16 (h!8021 rules!1920) (t!24770 rules!1920)))))

(declare-fun d!36605 () Bool)

(declare-fun c!30775 () Bool)

(assert (=> d!36605 (= c!30775 (and ((_ is Cons!2624) rules!1920) (not (= (isSeparator!455 (h!8021 rules!1920)) (isSeparator!455 (h!8021 rules!1920))))))))

(assert (=> d!36605 (= (ruleDisjointCharsFromAllFromOtherType!16 (h!8021 rules!1920) rules!1920) e!90828)))

(declare-fun b!152015 () Bool)

(assert (=> b!152015 (= e!90829 call!6176)))

(assert (= (and d!36605 c!30775) b!152014))

(assert (= (and d!36605 (not c!30775)) b!152013))

(assert (= (and b!152014 res!69647) b!152012))

(assert (= (and b!152013 (not res!69646)) b!152015))

(assert (= (or b!152012 b!152015) bm!6171))

(declare-fun m!137123 () Bool)

(assert (=> b!152014 m!137123))

(declare-fun m!137125 () Bool)

(assert (=> bm!6171 m!137125))

(assert (=> b!151176 d!36605))

(declare-fun e!90832 () Bool)

(declare-fun lt!44642 () BalanceConc!1472)

(declare-fun b!152021 () Bool)

(assert (=> b!152021 (= e!90832 (= (list!917 lt!44642) (++!560 (list!917 e!90300) (list!917 (ite c!30567 lt!44080 call!6110)))))))

(declare-fun b!152018 () Bool)

(declare-fun res!69653 () Bool)

(assert (=> b!152018 (=> (not res!69653) (not e!90832))))

(assert (=> b!152018 (= res!69653 (isBalanced!207 (++!563 (c!30493 e!90300) (c!30493 (ite c!30567 lt!44080 call!6110)))))))

(declare-fun b!152020 () Bool)

(declare-fun res!69650 () Bool)

(assert (=> b!152020 (=> (not res!69650) (not e!90832))))

(assert (=> b!152020 (= res!69650 (>= (height!75 (++!563 (c!30493 e!90300) (c!30493 (ite c!30567 lt!44080 call!6110)))) (max!0 (height!75 (c!30493 e!90300)) (height!75 (c!30493 (ite c!30567 lt!44080 call!6110))))))))

(declare-fun b!152019 () Bool)

(declare-fun res!69651 () Bool)

(assert (=> b!152019 (=> (not res!69651) (not e!90832))))

(assert (=> b!152019 (= res!69651 (<= (height!75 (++!563 (c!30493 e!90300) (c!30493 (ite c!30567 lt!44080 call!6110)))) (+ (max!0 (height!75 (c!30493 e!90300)) (height!75 (c!30493 (ite c!30567 lt!44080 call!6110)))) 1)))))

(declare-fun d!36623 () Bool)

(assert (=> d!36623 e!90832))

(declare-fun res!69652 () Bool)

(assert (=> d!36623 (=> (not res!69652) (not e!90832))))

(assert (=> d!36623 (= res!69652 (appendAssocInst!16 (c!30493 e!90300) (c!30493 (ite c!30567 lt!44080 call!6110))))))

(assert (=> d!36623 (= lt!44642 (BalanceConc!1473 (++!563 (c!30493 e!90300) (c!30493 (ite c!30567 lt!44080 call!6110)))))))

(assert (=> d!36623 (= (++!562 e!90300 (ite c!30567 lt!44080 call!6110)) lt!44642)))

(assert (= (and d!36623 res!69652) b!152018))

(assert (= (and b!152018 res!69653) b!152019))

(assert (= (and b!152019 res!69651) b!152020))

(assert (= (and b!152020 res!69650) b!152021))

(declare-fun m!137127 () Bool)

(assert (=> b!152019 m!137127))

(declare-fun m!137129 () Bool)

(assert (=> b!152019 m!137129))

(declare-fun m!137131 () Bool)

(assert (=> b!152019 m!137131))

(declare-fun m!137133 () Bool)

(assert (=> b!152019 m!137133))

(declare-fun m!137135 () Bool)

(assert (=> b!152019 m!137135))

(assert (=> b!152019 m!137133))

(assert (=> b!152019 m!137131))

(assert (=> b!152019 m!137127))

(assert (=> b!152020 m!137127))

(assert (=> b!152020 m!137129))

(assert (=> b!152020 m!137131))

(assert (=> b!152020 m!137133))

(assert (=> b!152020 m!137135))

(assert (=> b!152020 m!137133))

(assert (=> b!152020 m!137131))

(assert (=> b!152020 m!137127))

(assert (=> b!152018 m!137127))

(assert (=> b!152018 m!137127))

(declare-fun m!137137 () Bool)

(assert (=> b!152018 m!137137))

(declare-fun m!137139 () Bool)

(assert (=> b!152021 m!137139))

(declare-fun m!137141 () Bool)

(assert (=> b!152021 m!137141))

(declare-fun m!137143 () Bool)

(assert (=> b!152021 m!137143))

(assert (=> b!152021 m!137141))

(assert (=> b!152021 m!137143))

(declare-fun m!137145 () Bool)

(assert (=> b!152021 m!137145))

(declare-fun m!137147 () Bool)

(assert (=> d!36623 m!137147))

(assert (=> d!36623 m!137127))

(assert (=> bm!6106 d!36623))

(declare-fun bs!13997 () Bool)

(declare-fun d!36625 () Bool)

(assert (= bs!13997 (and d!36625 d!36511)))

(declare-fun lambda!3936 () Int)

(assert (=> bs!13997 (= (and (= (toChars!949 (transformation!455 (h!8021 rules!1920))) (toChars!949 (transformation!455 (rule!962 (h!8020 tokens!465))))) (= (toValue!1090 (transformation!455 (h!8021 rules!1920))) (toValue!1090 (transformation!455 (rule!962 (h!8020 tokens!465)))))) (= lambda!3936 lambda!3928))))

(declare-fun bs!13998 () Bool)

(assert (= bs!13998 (and d!36625 d!36529)))

(assert (=> bs!13998 (= (and (= (toChars!949 (transformation!455 (h!8021 rules!1920))) (toChars!949 (transformation!455 (rule!962 separatorToken!170)))) (= (toValue!1090 (transformation!455 (h!8021 rules!1920))) (toValue!1090 (transformation!455 (rule!962 separatorToken!170))))) (= lambda!3936 lambda!3929))))

(assert (=> d!36625 true))

(assert (=> d!36625 (< (dynLambda!913 order!1299 (toChars!949 (transformation!455 (h!8021 rules!1920)))) (dynLambda!919 order!1313 lambda!3936))))

(assert (=> d!36625 true))

(assert (=> d!36625 (< (dynLambda!911 order!1295 (toValue!1090 (transformation!455 (h!8021 rules!1920)))) (dynLambda!919 order!1313 lambda!3936))))

(assert (=> d!36625 (= (semiInverseModEq!157 (toChars!949 (transformation!455 (h!8021 rules!1920))) (toValue!1090 (transformation!455 (h!8021 rules!1920)))) (Forall!122 lambda!3936))))

(declare-fun bs!13999 () Bool)

(assert (= bs!13999 d!36625))

(declare-fun m!137159 () Bool)

(assert (=> bs!13999 m!137159))

(assert (=> d!36097 d!36625))

(declare-fun b!152032 () Bool)

(declare-fun e!90843 () Bool)

(assert (=> b!152032 (= e!90843 true)))

(declare-fun b!152031 () Bool)

(declare-fun e!90842 () Bool)

(assert (=> b!152031 (= e!90842 e!90843)))

(declare-fun b!152030 () Bool)

(declare-fun e!90841 () Bool)

(assert (=> b!152030 (= e!90841 e!90842)))

(assert (=> b!150847 e!90841))

(assert (= b!152031 b!152032))

(assert (= b!152030 b!152031))

(assert (= (and b!150847 ((_ is Cons!2624) (t!24770 rules!1920))) b!152030))

(assert (=> b!152032 (< (dynLambda!911 order!1295 (toValue!1090 (transformation!455 (h!8021 (t!24770 rules!1920))))) (dynLambda!912 order!1297 lambda!3869))))

(assert (=> b!152032 (< (dynLambda!913 order!1299 (toChars!949 (transformation!455 (h!8021 (t!24770 rules!1920))))) (dynLambda!912 order!1297 lambda!3869))))

(declare-fun e!90855 () Bool)

(declare-fun tp!78843 () Bool)

(declare-fun b!152067 () Bool)

(declare-fun tp!78845 () Bool)

(assert (=> b!152067 (= e!90855 (and (inv!3419 (left!1978 (c!30493 (dynLambda!914 (toChars!949 (transformation!455 (rule!962 (h!8020 tokens!465)))) (value!17283 (h!8020 tokens!465)))))) tp!78845 (inv!3419 (right!2308 (c!30493 (dynLambda!914 (toChars!949 (transformation!455 (rule!962 (h!8020 tokens!465)))) (value!17283 (h!8020 tokens!465)))))) tp!78843))))

(declare-fun b!152069 () Bool)

(declare-fun e!90856 () Bool)

(declare-fun tp!78844 () Bool)

(assert (=> b!152069 (= e!90856 tp!78844)))

(declare-fun b!152068 () Bool)

(declare-fun inv!3425 (IArray!1465) Bool)

(assert (=> b!152068 (= e!90855 (and (inv!3425 (xs!3327 (c!30493 (dynLambda!914 (toChars!949 (transformation!455 (rule!962 (h!8020 tokens!465)))) (value!17283 (h!8020 tokens!465)))))) e!90856))))

(assert (=> b!150978 (= tp!78687 (and (inv!3419 (c!30493 (dynLambda!914 (toChars!949 (transformation!455 (rule!962 (h!8020 tokens!465)))) (value!17283 (h!8020 tokens!465))))) e!90855))))

(assert (= (and b!150978 ((_ is Node!732) (c!30493 (dynLambda!914 (toChars!949 (transformation!455 (rule!962 (h!8020 tokens!465)))) (value!17283 (h!8020 tokens!465)))))) b!152067))

(assert (= b!152068 b!152069))

(assert (= (and b!150978 ((_ is Leaf!1299) (c!30493 (dynLambda!914 (toChars!949 (transformation!455 (rule!962 (h!8020 tokens!465)))) (value!17283 (h!8020 tokens!465)))))) b!152068))

(declare-fun m!137163 () Bool)

(assert (=> b!152067 m!137163))

(declare-fun m!137165 () Bool)

(assert (=> b!152067 m!137165))

(declare-fun m!137167 () Bool)

(assert (=> b!152068 m!137167))

(assert (=> b!150978 m!134895))

(declare-fun b!152072 () Bool)

(declare-fun e!90859 () Bool)

(assert (=> b!152072 (= e!90859 tp_is_empty!1611)))

(declare-fun b!152074 () Bool)

(declare-fun tp!78851 () Bool)

(assert (=> b!152074 (= e!90859 tp!78851)))

(declare-fun b!152073 () Bool)

(declare-fun tp!78852 () Bool)

(declare-fun tp!78848 () Bool)

(assert (=> b!152073 (= e!90859 (and tp!78852 tp!78848))))

(declare-fun b!152075 () Bool)

(declare-fun tp!78850 () Bool)

(declare-fun tp!78849 () Bool)

(assert (=> b!152075 (= e!90859 (and tp!78850 tp!78849))))

(assert (=> b!151206 (= tp!78773 e!90859)))

(assert (= (and b!151206 ((_ is ElementMatch!679) (regOne!1871 (regex!455 (rule!962 separatorToken!170))))) b!152072))

(assert (= (and b!151206 ((_ is Concat!1157) (regOne!1871 (regex!455 (rule!962 separatorToken!170))))) b!152073))

(assert (= (and b!151206 ((_ is Star!679) (regOne!1871 (regex!455 (rule!962 separatorToken!170))))) b!152074))

(assert (= (and b!151206 ((_ is Union!679) (regOne!1871 (regex!455 (rule!962 separatorToken!170))))) b!152075))

(declare-fun b!152076 () Bool)

(declare-fun e!90860 () Bool)

(assert (=> b!152076 (= e!90860 tp_is_empty!1611)))

(declare-fun b!152078 () Bool)

(declare-fun tp!78856 () Bool)

(assert (=> b!152078 (= e!90860 tp!78856)))

(declare-fun b!152077 () Bool)

(declare-fun tp!78857 () Bool)

(declare-fun tp!78853 () Bool)

(assert (=> b!152077 (= e!90860 (and tp!78857 tp!78853))))

(declare-fun b!152079 () Bool)

(declare-fun tp!78855 () Bool)

(declare-fun tp!78854 () Bool)

(assert (=> b!152079 (= e!90860 (and tp!78855 tp!78854))))

(assert (=> b!151206 (= tp!78772 e!90860)))

(assert (= (and b!151206 ((_ is ElementMatch!679) (regTwo!1871 (regex!455 (rule!962 separatorToken!170))))) b!152076))

(assert (= (and b!151206 ((_ is Concat!1157) (regTwo!1871 (regex!455 (rule!962 separatorToken!170))))) b!152077))

(assert (= (and b!151206 ((_ is Star!679) (regTwo!1871 (regex!455 (rule!962 separatorToken!170))))) b!152078))

(assert (= (and b!151206 ((_ is Union!679) (regTwo!1871 (regex!455 (rule!962 separatorToken!170))))) b!152079))

(declare-fun b!152080 () Bool)

(declare-fun e!90861 () Bool)

(assert (=> b!152080 (= e!90861 tp_is_empty!1611)))

(declare-fun b!152082 () Bool)

(declare-fun tp!78861 () Bool)

(assert (=> b!152082 (= e!90861 tp!78861)))

(declare-fun b!152081 () Bool)

(declare-fun tp!78862 () Bool)

(declare-fun tp!78858 () Bool)

(assert (=> b!152081 (= e!90861 (and tp!78862 tp!78858))))

(declare-fun b!152083 () Bool)

(declare-fun tp!78860 () Bool)

(declare-fun tp!78859 () Bool)

(assert (=> b!152083 (= e!90861 (and tp!78860 tp!78859))))

(assert (=> b!151204 (= tp!78775 e!90861)))

(assert (= (and b!151204 ((_ is ElementMatch!679) (regOne!1870 (regex!455 (rule!962 separatorToken!170))))) b!152080))

(assert (= (and b!151204 ((_ is Concat!1157) (regOne!1870 (regex!455 (rule!962 separatorToken!170))))) b!152081))

(assert (= (and b!151204 ((_ is Star!679) (regOne!1870 (regex!455 (rule!962 separatorToken!170))))) b!152082))

(assert (= (and b!151204 ((_ is Union!679) (regOne!1870 (regex!455 (rule!962 separatorToken!170))))) b!152083))

(declare-fun b!152087 () Bool)

(declare-fun e!90864 () Bool)

(assert (=> b!152087 (= e!90864 tp_is_empty!1611)))

(declare-fun b!152089 () Bool)

(declare-fun tp!78869 () Bool)

(assert (=> b!152089 (= e!90864 tp!78869)))

(declare-fun b!152088 () Bool)

(declare-fun tp!78870 () Bool)

(declare-fun tp!78866 () Bool)

(assert (=> b!152088 (= e!90864 (and tp!78870 tp!78866))))

(declare-fun b!152090 () Bool)

(declare-fun tp!78868 () Bool)

(declare-fun tp!78867 () Bool)

(assert (=> b!152090 (= e!90864 (and tp!78868 tp!78867))))

(assert (=> b!151204 (= tp!78771 e!90864)))

(assert (= (and b!151204 ((_ is ElementMatch!679) (regTwo!1870 (regex!455 (rule!962 separatorToken!170))))) b!152087))

(assert (= (and b!151204 ((_ is Concat!1157) (regTwo!1870 (regex!455 (rule!962 separatorToken!170))))) b!152088))

(assert (= (and b!151204 ((_ is Star!679) (regTwo!1870 (regex!455 (rule!962 separatorToken!170))))) b!152089))

(assert (= (and b!151204 ((_ is Union!679) (regTwo!1870 (regex!455 (rule!962 separatorToken!170))))) b!152090))

(declare-fun e!90865 () Bool)

(declare-fun tp!78873 () Bool)

(declare-fun tp!78871 () Bool)

(declare-fun b!152091 () Bool)

(assert (=> b!152091 (= e!90865 (and (inv!3419 (left!1978 (c!30493 (dynLambda!914 (toChars!949 (transformation!455 (rule!962 separatorToken!170))) (value!17283 separatorToken!170))))) tp!78873 (inv!3419 (right!2308 (c!30493 (dynLambda!914 (toChars!949 (transformation!455 (rule!962 separatorToken!170))) (value!17283 separatorToken!170))))) tp!78871))))

(declare-fun b!152093 () Bool)

(declare-fun e!90866 () Bool)

(declare-fun tp!78872 () Bool)

(assert (=> b!152093 (= e!90866 tp!78872)))

(declare-fun b!152092 () Bool)

(assert (=> b!152092 (= e!90865 (and (inv!3425 (xs!3327 (c!30493 (dynLambda!914 (toChars!949 (transformation!455 (rule!962 separatorToken!170))) (value!17283 separatorToken!170))))) e!90866))))

(assert (=> b!150862 (= tp!78686 (and (inv!3419 (c!30493 (dynLambda!914 (toChars!949 (transformation!455 (rule!962 separatorToken!170))) (value!17283 separatorToken!170)))) e!90865))))

(assert (= (and b!150862 ((_ is Node!732) (c!30493 (dynLambda!914 (toChars!949 (transformation!455 (rule!962 separatorToken!170))) (value!17283 separatorToken!170))))) b!152091))

(assert (= b!152092 b!152093))

(assert (= (and b!150862 ((_ is Leaf!1299) (c!30493 (dynLambda!914 (toChars!949 (transformation!455 (rule!962 separatorToken!170))) (value!17283 separatorToken!170))))) b!152092))

(declare-fun m!137175 () Bool)

(assert (=> b!152091 m!137175))

(declare-fun m!137177 () Bool)

(assert (=> b!152091 m!137177))

(declare-fun m!137179 () Bool)

(assert (=> b!152092 m!137179))

(assert (=> b!150862 m!134747))

(declare-fun b!152102 () Bool)

(declare-fun e!90869 () Bool)

(assert (=> b!152102 (= e!90869 tp_is_empty!1611)))

(declare-fun b!152104 () Bool)

(declare-fun tp!78887 () Bool)

(assert (=> b!152104 (= e!90869 tp!78887)))

(declare-fun b!152103 () Bool)

(declare-fun tp!78888 () Bool)

(declare-fun tp!78884 () Bool)

(assert (=> b!152103 (= e!90869 (and tp!78888 tp!78884))))

(declare-fun b!152105 () Bool)

(declare-fun tp!78886 () Bool)

(declare-fun tp!78885 () Bool)

(assert (=> b!152105 (= e!90869 (and tp!78886 tp!78885))))

(assert (=> b!151229 (= tp!78795 e!90869)))

(assert (= (and b!151229 ((_ is ElementMatch!679) (regex!455 (rule!962 (h!8020 (t!24769 tokens!465)))))) b!152102))

(assert (= (and b!151229 ((_ is Concat!1157) (regex!455 (rule!962 (h!8020 (t!24769 tokens!465)))))) b!152103))

(assert (= (and b!151229 ((_ is Star!679) (regex!455 (rule!962 (h!8020 (t!24769 tokens!465)))))) b!152104))

(assert (= (and b!151229 ((_ is Union!679) (regex!455 (rule!962 (h!8020 (t!24769 tokens!465)))))) b!152105))

(declare-fun b!152107 () Bool)

(declare-fun e!90871 () Bool)

(assert (=> b!152107 (= e!90871 tp_is_empty!1611)))

(declare-fun b!152109 () Bool)

(declare-fun tp!78893 () Bool)

(assert (=> b!152109 (= e!90871 tp!78893)))

(declare-fun b!152108 () Bool)

(declare-fun tp!78894 () Bool)

(declare-fun tp!78890 () Bool)

(assert (=> b!152108 (= e!90871 (and tp!78894 tp!78890))))

(declare-fun b!152110 () Bool)

(declare-fun tp!78892 () Bool)

(declare-fun tp!78891 () Bool)

(assert (=> b!152110 (= e!90871 (and tp!78892 tp!78891))))

(assert (=> b!151205 (= tp!78774 e!90871)))

(assert (= (and b!151205 ((_ is ElementMatch!679) (reg!1008 (regex!455 (rule!962 separatorToken!170))))) b!152107))

(assert (= (and b!151205 ((_ is Concat!1157) (reg!1008 (regex!455 (rule!962 separatorToken!170))))) b!152108))

(assert (= (and b!151205 ((_ is Star!679) (reg!1008 (regex!455 (rule!962 separatorToken!170))))) b!152109))

(assert (= (and b!151205 ((_ is Union!679) (reg!1008 (regex!455 (rule!962 separatorToken!170))))) b!152110))

(declare-fun b!152117 () Bool)

(declare-fun e!90875 () Bool)

(assert (=> b!152117 (= e!90875 true)))

(declare-fun b!152116 () Bool)

(declare-fun e!90874 () Bool)

(assert (=> b!152116 (= e!90874 e!90875)))

(declare-fun b!152115 () Bool)

(declare-fun e!90873 () Bool)

(assert (=> b!152115 (= e!90873 e!90874)))

(assert (=> b!150903 e!90873))

(assert (= b!152116 b!152117))

(assert (= b!152115 b!152116))

(assert (= (and b!150903 ((_ is Cons!2624) (t!24770 rules!1920))) b!152115))

(assert (=> b!152117 (< (dynLambda!911 order!1295 (toValue!1090 (transformation!455 (h!8021 (t!24770 rules!1920))))) (dynLambda!912 order!1297 lambda!3876))))

(assert (=> b!152117 (< (dynLambda!913 order!1299 (toChars!949 (transformation!455 (h!8021 (t!24770 rules!1920))))) (dynLambda!912 order!1297 lambda!3876))))

(declare-fun b!152129 () Bool)

(declare-fun b_free!5517 () Bool)

(declare-fun b_next!5517 () Bool)

(assert (=> b!152129 (= b_free!5517 (not b_next!5517))))

(declare-fun tp!78911 () Bool)

(declare-fun b_and!8813 () Bool)

(assert (=> b!152129 (= tp!78911 b_and!8813)))

(declare-fun b_free!5519 () Bool)

(declare-fun b_next!5519 () Bool)

(assert (=> b!152129 (= b_free!5519 (not b_next!5519))))

(declare-fun t!24924 () Bool)

(declare-fun tb!5165 () Bool)

(assert (=> (and b!152129 (= (toChars!949 (transformation!455 (rule!962 (h!8020 (t!24769 (t!24769 tokens!465)))))) (toChars!949 (transformation!455 (rule!962 separatorToken!170)))) t!24924) tb!5165))

(declare-fun result!7624 () Bool)

(assert (= result!7624 result!7494))

(assert (=> b!150856 t!24924))

(declare-fun t!24926 () Bool)

(declare-fun tb!5167 () Bool)

(assert (=> (and b!152129 (= (toChars!949 (transformation!455 (rule!962 (h!8020 (t!24769 (t!24769 tokens!465)))))) (toChars!949 (transformation!455 (rule!962 (h!8020 tokens!465))))) t!24926) tb!5167))

(declare-fun result!7626 () Bool)

(assert (= result!7626 result!7502))

(assert (=> d!36093 t!24926))

(declare-fun t!24928 () Bool)

(declare-fun tb!5169 () Bool)

(assert (=> (and b!152129 (= (toChars!949 (transformation!455 (rule!962 (h!8020 (t!24769 (t!24769 tokens!465)))))) (toChars!949 (transformation!455 (rule!962 (h!8020 (t!24769 tokens!465)))))) t!24928) tb!5169))

(declare-fun result!7628 () Bool)

(assert (= result!7628 result!7560))

(assert (=> d!36267 t!24928))

(assert (=> d!36089 t!24924))

(assert (=> b!151910 t!24928))

(declare-fun t!24930 () Bool)

(declare-fun tb!5171 () Bool)

(assert (=> (and b!152129 (= (toChars!949 (transformation!455 (rule!962 (h!8020 (t!24769 (t!24769 tokens!465)))))) (toChars!949 (transformation!455 (rule!962 (ite c!30567 call!6111 (ite c!30568 separatorToken!170 call!6107)))))) t!24930) tb!5171))

(declare-fun result!7630 () Bool)

(assert (= result!7630 result!7610))

(assert (=> d!36559 t!24930))

(assert (=> b!151013 t!24926))

(declare-fun tb!5173 () Bool)

(declare-fun t!24932 () Bool)

(assert (=> (and b!152129 (= (toChars!949 (transformation!455 (rule!962 (h!8020 (t!24769 (t!24769 tokens!465)))))) (toChars!949 (transformation!455 (rule!962 (apply!341 lt!43920 0))))) t!24932) tb!5173))

(declare-fun result!7632 () Bool)

(assert (= result!7632 result!7570))

(assert (=> d!36367 t!24932))

(declare-fun t!24936 () Bool)

(declare-fun tb!5177 () Bool)

(assert (=> (and b!152129 (= (toChars!949 (transformation!455 (rule!962 (h!8020 (t!24769 (t!24769 tokens!465)))))) (toChars!949 (transformation!455 (rule!962 call!6107)))) t!24936) tb!5177))

(declare-fun result!7636 () Bool)

(assert (= result!7636 result!7600))

(assert (=> d!36489 t!24936))

(declare-fun tp!78913 () Bool)

(declare-fun b_and!8815 () Bool)

(assert (=> b!152129 (= tp!78913 (and (=> t!24924 result!7624) (=> t!24926 result!7626) (=> t!24930 result!7630) (=> t!24928 result!7628) (=> t!24932 result!7632) (=> t!24936 result!7636) b_and!8815))))

(declare-fun e!90881 () Bool)

(assert (=> b!151227 (= tp!78799 e!90881)))

(declare-fun tp!78914 () Bool)

(declare-fun e!90879 () Bool)

(declare-fun b!152126 () Bool)

(assert (=> b!152126 (= e!90881 (and (inv!3415 (h!8020 (t!24769 (t!24769 tokens!465)))) e!90879 tp!78914))))

(declare-fun e!90878 () Bool)

(assert (=> b!152129 (= e!90878 (and tp!78911 tp!78913))))

(declare-fun b!152128 () Bool)

(declare-fun tp!78910 () Bool)

(declare-fun e!90880 () Bool)

(assert (=> b!152128 (= e!90880 (and tp!78910 (inv!3412 (tag!633 (rule!962 (h!8020 (t!24769 (t!24769 tokens!465)))))) (inv!3416 (transformation!455 (rule!962 (h!8020 (t!24769 (t!24769 tokens!465)))))) e!90878))))

(declare-fun tp!78912 () Bool)

(declare-fun b!152127 () Bool)

(assert (=> b!152127 (= e!90879 (and (inv!21 (value!17283 (h!8020 (t!24769 (t!24769 tokens!465))))) e!90880 tp!78912))))

(assert (= b!152128 b!152129))

(assert (= b!152127 b!152128))

(assert (= b!152126 b!152127))

(assert (= (and b!151227 ((_ is Cons!2623) (t!24769 (t!24769 tokens!465)))) b!152126))

(declare-fun m!137181 () Bool)

(assert (=> b!152126 m!137181))

(declare-fun m!137183 () Bool)

(assert (=> b!152128 m!137183))

(declare-fun m!137185 () Bool)

(assert (=> b!152128 m!137185))

(declare-fun m!137187 () Bool)

(assert (=> b!152127 m!137187))

(declare-fun b!152138 () Bool)

(declare-fun e!90891 () Bool)

(declare-fun tp!78925 () Bool)

(assert (=> b!152138 (= e!90891 (and tp_is_empty!1611 tp!78925))))

(assert (=> b!151228 (= tp!78797 e!90891)))

(assert (= (and b!151228 ((_ is Cons!2621) (originalCharacters!498 (h!8020 (t!24769 tokens!465))))) b!152138))

(declare-fun b!152141 () Bool)

(declare-fun e!90894 () Bool)

(assert (=> b!152141 (= e!90894 true)))

(declare-fun b!152140 () Bool)

(declare-fun e!90893 () Bool)

(assert (=> b!152140 (= e!90893 e!90894)))

(declare-fun b!152139 () Bool)

(declare-fun e!90892 () Bool)

(assert (=> b!152139 (= e!90892 e!90893)))

(assert (=> b!151169 e!90892))

(assert (= b!152140 b!152141))

(assert (= b!152139 b!152140))

(assert (= (and b!151169 ((_ is Cons!2624) (t!24770 rules!1920))) b!152139))

(assert (=> b!152141 (< (dynLambda!911 order!1295 (toValue!1090 (transformation!455 (h!8021 (t!24770 rules!1920))))) (dynLambda!912 order!1297 lambda!3898))))

(assert (=> b!152141 (< (dynLambda!913 order!1299 (toChars!949 (transformation!455 (h!8021 (t!24770 rules!1920))))) (dynLambda!912 order!1297 lambda!3898))))

(declare-fun b!152144 () Bool)

(declare-fun e!90897 () Bool)

(assert (=> b!152144 (= e!90897 true)))

(declare-fun b!152143 () Bool)

(declare-fun e!90896 () Bool)

(assert (=> b!152143 (= e!90896 e!90897)))

(declare-fun b!152142 () Bool)

(declare-fun e!90895 () Bool)

(assert (=> b!152142 (= e!90895 e!90896)))

(assert (=> b!151156 e!90895))

(assert (= b!152143 b!152144))

(assert (= b!152142 b!152143))

(assert (= (and b!151156 ((_ is Cons!2624) (t!24770 rules!1920))) b!152142))

(assert (=> b!152144 (< (dynLambda!911 order!1295 (toValue!1090 (transformation!455 (h!8021 (t!24770 rules!1920))))) (dynLambda!912 order!1297 lambda!3897))))

(assert (=> b!152144 (< (dynLambda!913 order!1299 (toChars!949 (transformation!455 (h!8021 (t!24770 rules!1920))))) (dynLambda!912 order!1297 lambda!3897))))

(declare-fun b!152148 () Bool)

(declare-fun e!90901 () Bool)

(declare-fun tp!78926 () Bool)

(assert (=> b!152148 (= e!90901 (and tp_is_empty!1611 tp!78926))))

(assert (=> b!151215 (= tp!78783 e!90901)))

(assert (= (and b!151215 ((_ is Cons!2621) (t!24767 (originalCharacters!498 separatorToken!170)))) b!152148))

(declare-fun b!152149 () Bool)

(declare-fun e!90902 () Bool)

(assert (=> b!152149 (= e!90902 tp_is_empty!1611)))

(declare-fun b!152151 () Bool)

(declare-fun tp!78930 () Bool)

(assert (=> b!152151 (= e!90902 tp!78930)))

(declare-fun b!152150 () Bool)

(declare-fun tp!78931 () Bool)

(declare-fun tp!78927 () Bool)

(assert (=> b!152150 (= e!90902 (and tp!78931 tp!78927))))

(declare-fun b!152152 () Bool)

(declare-fun tp!78929 () Bool)

(declare-fun tp!78928 () Bool)

(assert (=> b!152152 (= e!90902 (and tp!78929 tp!78928))))

(assert (=> b!151201 (= tp!78768 e!90902)))

(assert (= (and b!151201 ((_ is ElementMatch!679) (regex!455 (h!8021 (t!24770 rules!1920))))) b!152149))

(assert (= (and b!151201 ((_ is Concat!1157) (regex!455 (h!8021 (t!24770 rules!1920))))) b!152150))

(assert (= (and b!151201 ((_ is Star!679) (regex!455 (h!8021 (t!24770 rules!1920))))) b!152151))

(assert (= (and b!151201 ((_ is Union!679) (regex!455 (h!8021 (t!24770 rules!1920))))) b!152152))

(declare-fun b!152161 () Bool)

(declare-fun b_free!5525 () Bool)

(declare-fun b_next!5525 () Bool)

(assert (=> b!152161 (= b_free!5525 (not b_next!5525))))

(declare-fun tp!78938 () Bool)

(declare-fun b_and!8821 () Bool)

(assert (=> b!152161 (= tp!78938 b_and!8821)))

(declare-fun b_free!5527 () Bool)

(declare-fun b_next!5527 () Bool)

(assert (=> b!152161 (= b_free!5527 (not b_next!5527))))

(declare-fun t!24948 () Bool)

(declare-fun tb!5189 () Bool)

(assert (=> (and b!152161 (= (toChars!949 (transformation!455 (h!8021 (t!24770 (t!24770 rules!1920))))) (toChars!949 (transformation!455 (rule!962 separatorToken!170)))) t!24948) tb!5189))

(declare-fun result!7648 () Bool)

(assert (= result!7648 result!7494))

(assert (=> b!150856 t!24948))

(declare-fun t!24950 () Bool)

(declare-fun tb!5191 () Bool)

(assert (=> (and b!152161 (= (toChars!949 (transformation!455 (h!8021 (t!24770 (t!24770 rules!1920))))) (toChars!949 (transformation!455 (rule!962 (h!8020 tokens!465))))) t!24950) tb!5191))

(declare-fun result!7650 () Bool)

(assert (= result!7650 result!7502))

(assert (=> d!36093 t!24950))

(declare-fun t!24952 () Bool)

(declare-fun tb!5193 () Bool)

(assert (=> (and b!152161 (= (toChars!949 (transformation!455 (h!8021 (t!24770 (t!24770 rules!1920))))) (toChars!949 (transformation!455 (rule!962 (h!8020 (t!24769 tokens!465)))))) t!24952) tb!5193))

(declare-fun result!7652 () Bool)

(assert (= result!7652 result!7560))

(assert (=> d!36267 t!24952))

(assert (=> d!36089 t!24948))

(assert (=> b!151910 t!24952))

(declare-fun t!24954 () Bool)

(declare-fun tb!5195 () Bool)

(assert (=> (and b!152161 (= (toChars!949 (transformation!455 (h!8021 (t!24770 (t!24770 rules!1920))))) (toChars!949 (transformation!455 (rule!962 (ite c!30567 call!6111 (ite c!30568 separatorToken!170 call!6107)))))) t!24954) tb!5195))

(declare-fun result!7654 () Bool)

(assert (= result!7654 result!7610))

(assert (=> d!36559 t!24954))

(assert (=> b!151013 t!24950))

(declare-fun tb!5197 () Bool)

(declare-fun t!24956 () Bool)

(assert (=> (and b!152161 (= (toChars!949 (transformation!455 (h!8021 (t!24770 (t!24770 rules!1920))))) (toChars!949 (transformation!455 (rule!962 (apply!341 lt!43920 0))))) t!24956) tb!5197))

(declare-fun result!7656 () Bool)

(assert (= result!7656 result!7570))

(assert (=> d!36367 t!24956))

(declare-fun tb!5199 () Bool)

(declare-fun t!24958 () Bool)

(assert (=> (and b!152161 (= (toChars!949 (transformation!455 (h!8021 (t!24770 (t!24770 rules!1920))))) (toChars!949 (transformation!455 (rule!962 call!6107)))) t!24958) tb!5199))

(declare-fun result!7658 () Bool)

(assert (= result!7658 result!7600))

(assert (=> d!36489 t!24958))

(declare-fun b_and!8823 () Bool)

(declare-fun tp!78935 () Bool)

(assert (=> b!152161 (= tp!78935 (and (=> t!24958 result!7658) (=> t!24948 result!7648) (=> t!24952 result!7652) (=> t!24956 result!7656) (=> t!24950 result!7650) (=> t!24954 result!7654) b_and!8823))))

(declare-fun e!90911 () Bool)

(assert (=> b!152161 (= e!90911 (and tp!78938 tp!78935))))

(declare-fun b!152160 () Bool)

(declare-fun tp!78936 () Bool)

(declare-fun e!90910 () Bool)

(assert (=> b!152160 (= e!90910 (and tp!78936 (inv!3412 (tag!633 (h!8021 (t!24770 (t!24770 rules!1920))))) (inv!3416 (transformation!455 (h!8021 (t!24770 (t!24770 rules!1920))))) e!90911))))

(declare-fun b!152159 () Bool)

(declare-fun e!90909 () Bool)

(declare-fun tp!78937 () Bool)

(assert (=> b!152159 (= e!90909 (and e!90910 tp!78937))))

(assert (=> b!151200 (= tp!78769 e!90909)))

(assert (= b!152160 b!152161))

(assert (= b!152159 b!152160))

(assert (= (and b!151200 ((_ is Cons!2624) (t!24770 (t!24770 rules!1920)))) b!152159))

(declare-fun m!137203 () Bool)

(assert (=> b!152160 m!137203))

(declare-fun m!137205 () Bool)

(assert (=> b!152160 m!137205))

(declare-fun b!152179 () Bool)

(declare-fun e!90920 () Bool)

(assert (=> b!152179 (= e!90920 true)))

(declare-fun b!152178 () Bool)

(declare-fun e!90919 () Bool)

(assert (=> b!152178 (= e!90919 e!90920)))

(declare-fun b!152177 () Bool)

(declare-fun e!90918 () Bool)

(assert (=> b!152177 (= e!90918 e!90919)))

(assert (=> b!150975 e!90918))

(assert (= b!152178 b!152179))

(assert (= b!152177 b!152178))

(assert (= (and b!150975 ((_ is Cons!2624) (t!24770 rules!1920))) b!152177))

(assert (=> b!152179 (< (dynLambda!911 order!1295 (toValue!1090 (transformation!455 (h!8021 (t!24770 rules!1920))))) (dynLambda!912 order!1297 lambda!3882))))

(assert (=> b!152179 (< (dynLambda!913 order!1299 (toChars!949 (transformation!455 (h!8021 (t!24770 rules!1920))))) (dynLambda!912 order!1297 lambda!3882))))

(declare-fun b!152183 () Bool)

(declare-fun e!90925 () Bool)

(assert (=> b!152183 (= e!90925 tp_is_empty!1611)))

(declare-fun b!152185 () Bool)

(declare-fun tp!78961 () Bool)

(assert (=> b!152185 (= e!90925 tp!78961)))

(declare-fun b!152184 () Bool)

(declare-fun tp!78962 () Bool)

(declare-fun tp!78958 () Bool)

(assert (=> b!152184 (= e!90925 (and tp!78962 tp!78958))))

(declare-fun b!152186 () Bool)

(declare-fun tp!78960 () Bool)

(declare-fun tp!78959 () Bool)

(assert (=> b!152186 (= e!90925 (and tp!78960 tp!78959))))

(assert (=> b!151210 (= tp!78778 e!90925)))

(assert (= (and b!151210 ((_ is ElementMatch!679) (regOne!1871 (regex!455 (rule!962 (h!8020 tokens!465)))))) b!152183))

(assert (= (and b!151210 ((_ is Concat!1157) (regOne!1871 (regex!455 (rule!962 (h!8020 tokens!465)))))) b!152184))

(assert (= (and b!151210 ((_ is Star!679) (regOne!1871 (regex!455 (rule!962 (h!8020 tokens!465)))))) b!152185))

(assert (= (and b!151210 ((_ is Union!679) (regOne!1871 (regex!455 (rule!962 (h!8020 tokens!465)))))) b!152186))

(declare-fun b!152187 () Bool)

(declare-fun e!90926 () Bool)

(assert (=> b!152187 (= e!90926 tp_is_empty!1611)))

(declare-fun b!152189 () Bool)

(declare-fun tp!78966 () Bool)

(assert (=> b!152189 (= e!90926 tp!78966)))

(declare-fun b!152188 () Bool)

(declare-fun tp!78967 () Bool)

(declare-fun tp!78963 () Bool)

(assert (=> b!152188 (= e!90926 (and tp!78967 tp!78963))))

(declare-fun b!152190 () Bool)

(declare-fun tp!78965 () Bool)

(declare-fun tp!78964 () Bool)

(assert (=> b!152190 (= e!90926 (and tp!78965 tp!78964))))

(assert (=> b!151210 (= tp!78777 e!90926)))

(assert (= (and b!151210 ((_ is ElementMatch!679) (regTwo!1871 (regex!455 (rule!962 (h!8020 tokens!465)))))) b!152187))

(assert (= (and b!151210 ((_ is Concat!1157) (regTwo!1871 (regex!455 (rule!962 (h!8020 tokens!465)))))) b!152188))

(assert (= (and b!151210 ((_ is Star!679) (regTwo!1871 (regex!455 (rule!962 (h!8020 tokens!465)))))) b!152189))

(assert (= (and b!151210 ((_ is Union!679) (regTwo!1871 (regex!455 (rule!962 (h!8020 tokens!465)))))) b!152190))

(declare-fun b!152191 () Bool)

(declare-fun e!90927 () Bool)

(assert (=> b!152191 (= e!90927 tp_is_empty!1611)))

(declare-fun b!152193 () Bool)

(declare-fun tp!78971 () Bool)

(assert (=> b!152193 (= e!90927 tp!78971)))

(declare-fun b!152192 () Bool)

(declare-fun tp!78972 () Bool)

(declare-fun tp!78968 () Bool)

(assert (=> b!152192 (= e!90927 (and tp!78972 tp!78968))))

(declare-fun b!152194 () Bool)

(declare-fun tp!78970 () Bool)

(declare-fun tp!78969 () Bool)

(assert (=> b!152194 (= e!90927 (and tp!78970 tp!78969))))

(assert (=> b!151209 (= tp!78779 e!90927)))

(assert (= (and b!151209 ((_ is ElementMatch!679) (reg!1008 (regex!455 (rule!962 (h!8020 tokens!465)))))) b!152191))

(assert (= (and b!151209 ((_ is Concat!1157) (reg!1008 (regex!455 (rule!962 (h!8020 tokens!465)))))) b!152192))

(assert (= (and b!151209 ((_ is Star!679) (reg!1008 (regex!455 (rule!962 (h!8020 tokens!465)))))) b!152193))

(assert (= (and b!151209 ((_ is Union!679) (reg!1008 (regex!455 (rule!962 (h!8020 tokens!465)))))) b!152194))

(declare-fun b!152195 () Bool)

(declare-fun e!90928 () Bool)

(assert (=> b!152195 (= e!90928 tp_is_empty!1611)))

(declare-fun b!152197 () Bool)

(declare-fun tp!78976 () Bool)

(assert (=> b!152197 (= e!90928 tp!78976)))

(declare-fun b!152196 () Bool)

(declare-fun tp!78977 () Bool)

(declare-fun tp!78973 () Bool)

(assert (=> b!152196 (= e!90928 (and tp!78977 tp!78973))))

(declare-fun b!152198 () Bool)

(declare-fun tp!78975 () Bool)

(declare-fun tp!78974 () Bool)

(assert (=> b!152198 (= e!90928 (and tp!78975 tp!78974))))

(assert (=> b!151190 (= tp!78757 e!90928)))

(assert (= (and b!151190 ((_ is ElementMatch!679) (reg!1008 (regex!455 (h!8021 rules!1920))))) b!152195))

(assert (= (and b!151190 ((_ is Concat!1157) (reg!1008 (regex!455 (h!8021 rules!1920))))) b!152196))

(assert (= (and b!151190 ((_ is Star!679) (reg!1008 (regex!455 (h!8021 rules!1920))))) b!152197))

(assert (= (and b!151190 ((_ is Union!679) (reg!1008 (regex!455 (h!8021 rules!1920))))) b!152198))

(declare-fun b!152199 () Bool)

(declare-fun e!90929 () Bool)

(declare-fun tp!78978 () Bool)

(assert (=> b!152199 (= e!90929 (and tp_is_empty!1611 tp!78978))))

(assert (=> b!151216 (= tp!78784 e!90929)))

(assert (= (and b!151216 ((_ is Cons!2621) (t!24767 (originalCharacters!498 (h!8020 tokens!465))))) b!152199))

(declare-fun b!152204 () Bool)

(declare-fun e!90931 () Bool)

(assert (=> b!152204 (= e!90931 tp_is_empty!1611)))

(declare-fun b!152206 () Bool)

(declare-fun tp!78987 () Bool)

(assert (=> b!152206 (= e!90931 tp!78987)))

(declare-fun b!152205 () Bool)

(declare-fun tp!78988 () Bool)

(declare-fun tp!78984 () Bool)

(assert (=> b!152205 (= e!90931 (and tp!78988 tp!78984))))

(declare-fun b!152207 () Bool)

(declare-fun tp!78986 () Bool)

(declare-fun tp!78985 () Bool)

(assert (=> b!152207 (= e!90931 (and tp!78986 tp!78985))))

(assert (=> b!151208 (= tp!78780 e!90931)))

(assert (= (and b!151208 ((_ is ElementMatch!679) (regOne!1870 (regex!455 (rule!962 (h!8020 tokens!465)))))) b!152204))

(assert (= (and b!151208 ((_ is Concat!1157) (regOne!1870 (regex!455 (rule!962 (h!8020 tokens!465)))))) b!152205))

(assert (= (and b!151208 ((_ is Star!679) (regOne!1870 (regex!455 (rule!962 (h!8020 tokens!465)))))) b!152206))

(assert (= (and b!151208 ((_ is Union!679) (regOne!1870 (regex!455 (rule!962 (h!8020 tokens!465)))))) b!152207))

(declare-fun b!152212 () Bool)

(declare-fun e!90933 () Bool)

(assert (=> b!152212 (= e!90933 tp_is_empty!1611)))

(declare-fun b!152214 () Bool)

(declare-fun tp!78997 () Bool)

(assert (=> b!152214 (= e!90933 tp!78997)))

(declare-fun b!152213 () Bool)

(declare-fun tp!78998 () Bool)

(declare-fun tp!78994 () Bool)

(assert (=> b!152213 (= e!90933 (and tp!78998 tp!78994))))

(declare-fun b!152215 () Bool)

(declare-fun tp!78996 () Bool)

(declare-fun tp!78995 () Bool)

(assert (=> b!152215 (= e!90933 (and tp!78996 tp!78995))))

(assert (=> b!151208 (= tp!78776 e!90933)))

(assert (= (and b!151208 ((_ is ElementMatch!679) (regTwo!1870 (regex!455 (rule!962 (h!8020 tokens!465)))))) b!152212))

(assert (= (and b!151208 ((_ is Concat!1157) (regTwo!1870 (regex!455 (rule!962 (h!8020 tokens!465)))))) b!152213))

(assert (= (and b!151208 ((_ is Star!679) (regTwo!1870 (regex!455 (rule!962 (h!8020 tokens!465)))))) b!152214))

(assert (= (and b!151208 ((_ is Union!679) (regTwo!1870 (regex!455 (rule!962 (h!8020 tokens!465)))))) b!152215))

(declare-fun b!152220 () Bool)

(declare-fun e!90935 () Bool)

(assert (=> b!152220 (= e!90935 tp_is_empty!1611)))

(declare-fun b!152222 () Bool)

(declare-fun tp!79007 () Bool)

(assert (=> b!152222 (= e!90935 tp!79007)))

(declare-fun b!152221 () Bool)

(declare-fun tp!79008 () Bool)

(declare-fun tp!79004 () Bool)

(assert (=> b!152221 (= e!90935 (and tp!79008 tp!79004))))

(declare-fun b!152223 () Bool)

(declare-fun tp!79006 () Bool)

(declare-fun tp!79005 () Bool)

(assert (=> b!152223 (= e!90935 (and tp!79006 tp!79005))))

(assert (=> b!151191 (= tp!78756 e!90935)))

(assert (= (and b!151191 ((_ is ElementMatch!679) (regOne!1871 (regex!455 (h!8021 rules!1920))))) b!152220))

(assert (= (and b!151191 ((_ is Concat!1157) (regOne!1871 (regex!455 (h!8021 rules!1920))))) b!152221))

(assert (= (and b!151191 ((_ is Star!679) (regOne!1871 (regex!455 (h!8021 rules!1920))))) b!152222))

(assert (= (and b!151191 ((_ is Union!679) (regOne!1871 (regex!455 (h!8021 rules!1920))))) b!152223))

(declare-fun b!152227 () Bool)

(declare-fun e!90939 () Bool)

(assert (=> b!152227 (= e!90939 tp_is_empty!1611)))

(declare-fun b!152229 () Bool)

(declare-fun tp!79012 () Bool)

(assert (=> b!152229 (= e!90939 tp!79012)))

(declare-fun b!152228 () Bool)

(declare-fun tp!79013 () Bool)

(declare-fun tp!79009 () Bool)

(assert (=> b!152228 (= e!90939 (and tp!79013 tp!79009))))

(declare-fun b!152230 () Bool)

(declare-fun tp!79011 () Bool)

(declare-fun tp!79010 () Bool)

(assert (=> b!152230 (= e!90939 (and tp!79011 tp!79010))))

(assert (=> b!151191 (= tp!78755 e!90939)))

(assert (= (and b!151191 ((_ is ElementMatch!679) (regTwo!1871 (regex!455 (h!8021 rules!1920))))) b!152227))

(assert (= (and b!151191 ((_ is Concat!1157) (regTwo!1871 (regex!455 (h!8021 rules!1920))))) b!152228))

(assert (= (and b!151191 ((_ is Star!679) (regTwo!1871 (regex!455 (h!8021 rules!1920))))) b!152229))

(assert (= (and b!151191 ((_ is Union!679) (regTwo!1871 (regex!455 (h!8021 rules!1920))))) b!152230))

(declare-fun b!152232 () Bool)

(declare-fun e!90941 () Bool)

(assert (=> b!152232 (= e!90941 tp_is_empty!1611)))

(declare-fun b!152234 () Bool)

(declare-fun tp!79018 () Bool)

(assert (=> b!152234 (= e!90941 tp!79018)))

(declare-fun b!152233 () Bool)

(declare-fun tp!79019 () Bool)

(declare-fun tp!79015 () Bool)

(assert (=> b!152233 (= e!90941 (and tp!79019 tp!79015))))

(declare-fun b!152235 () Bool)

(declare-fun tp!79017 () Bool)

(declare-fun tp!79016 () Bool)

(assert (=> b!152235 (= e!90941 (and tp!79017 tp!79016))))

(assert (=> b!151189 (= tp!78758 e!90941)))

(assert (= (and b!151189 ((_ is ElementMatch!679) (regOne!1870 (regex!455 (h!8021 rules!1920))))) b!152232))

(assert (= (and b!151189 ((_ is Concat!1157) (regOne!1870 (regex!455 (h!8021 rules!1920))))) b!152233))

(assert (= (and b!151189 ((_ is Star!679) (regOne!1870 (regex!455 (h!8021 rules!1920))))) b!152234))

(assert (= (and b!151189 ((_ is Union!679) (regOne!1870 (regex!455 (h!8021 rules!1920))))) b!152235))

(declare-fun b!152237 () Bool)

(declare-fun e!90943 () Bool)

(assert (=> b!152237 (= e!90943 tp_is_empty!1611)))

(declare-fun b!152239 () Bool)

(declare-fun tp!79024 () Bool)

(assert (=> b!152239 (= e!90943 tp!79024)))

(declare-fun b!152238 () Bool)

(declare-fun tp!79025 () Bool)

(declare-fun tp!79021 () Bool)

(assert (=> b!152238 (= e!90943 (and tp!79025 tp!79021))))

(declare-fun b!152240 () Bool)

(declare-fun tp!79023 () Bool)

(declare-fun tp!79022 () Bool)

(assert (=> b!152240 (= e!90943 (and tp!79023 tp!79022))))

(assert (=> b!151189 (= tp!78754 e!90943)))

(assert (= (and b!151189 ((_ is ElementMatch!679) (regTwo!1870 (regex!455 (h!8021 rules!1920))))) b!152237))

(assert (= (and b!151189 ((_ is Concat!1157) (regTwo!1870 (regex!455 (h!8021 rules!1920))))) b!152238))

(assert (= (and b!151189 ((_ is Star!679) (regTwo!1870 (regex!455 (h!8021 rules!1920))))) b!152239))

(assert (= (and b!151189 ((_ is Union!679) (regTwo!1870 (regex!455 (h!8021 rules!1920))))) b!152240))

(declare-fun b_lambda!2819 () Bool)

(assert (= b_lambda!2769 (or (and b!151230 b_free!5515) (and b!150754 b_free!5491 (= (toChars!949 (transformation!455 (h!8021 rules!1920))) (toChars!949 (transformation!455 (rule!962 (h!8020 (t!24769 tokens!465))))))) (and b!150757 b_free!5499 (= (toChars!949 (transformation!455 (rule!962 (h!8020 tokens!465)))) (toChars!949 (transformation!455 (rule!962 (h!8020 (t!24769 tokens!465))))))) (and b!152129 b_free!5519 (= (toChars!949 (transformation!455 (rule!962 (h!8020 (t!24769 (t!24769 tokens!465)))))) (toChars!949 (transformation!455 (rule!962 (h!8020 (t!24769 tokens!465))))))) (and b!150761 b_free!5495 (= (toChars!949 (transformation!455 (rule!962 separatorToken!170))) (toChars!949 (transformation!455 (rule!962 (h!8020 (t!24769 tokens!465))))))) (and b!151202 b_free!5511 (= (toChars!949 (transformation!455 (h!8021 (t!24770 rules!1920)))) (toChars!949 (transformation!455 (rule!962 (h!8020 (t!24769 tokens!465))))))) (and b!152161 b_free!5527 (= (toChars!949 (transformation!455 (h!8021 (t!24770 (t!24770 rules!1920))))) (toChars!949 (transformation!455 (rule!962 (h!8020 (t!24769 tokens!465))))))) b_lambda!2819)))

(declare-fun b_lambda!2821 () Bool)

(assert (= b_lambda!2773 (or d!36045 b_lambda!2821)))

(declare-fun bs!14003 () Bool)

(declare-fun d!36635 () Bool)

(assert (= bs!14003 (and d!36635 d!36045)))

(assert (=> bs!14003 (= (dynLambda!915 lambda!3869 (h!8020 (list!920 lt!43920))) (rulesProduceIndividualToken!90 thiss!17480 rules!1920 (h!8020 (list!920 lt!43920))))))

(assert (=> bs!14003 m!135297))

(assert (=> b!151548 d!36635))

(declare-fun b_lambda!2823 () Bool)

(assert (= b_lambda!2787 (or b!151166 b_lambda!2823)))

(declare-fun bs!14006 () Bool)

(declare-fun d!36641 () Bool)

(assert (= bs!14006 (and d!36641 b!151166)))

(assert (=> bs!14006 (= (dynLambda!915 lambda!3898 (h!8020 tokens!465)) (rulesProduceIndividualToken!90 thiss!17480 rules!1920 (h!8020 tokens!465)))))

(declare-fun m!137213 () Bool)

(assert (=> bs!14006 m!137213))

(assert (=> d!36471 d!36641))

(declare-fun b_lambda!2825 () Bool)

(assert (= b_lambda!2797 (or b!150772 b_lambda!2825)))

(declare-fun bs!14008 () Bool)

(declare-fun d!36645 () Bool)

(assert (= bs!14008 (and d!36645 b!150772)))

(assert (=> bs!14008 (= (dynLambda!915 lambda!3862 (h!8020 (t!24769 tokens!465))) (not (isSeparator!455 (rule!962 (h!8020 (t!24769 tokens!465))))))))

(assert (=> b!151914 d!36645))

(declare-fun b_lambda!2827 () Bool)

(assert (= b_lambda!2793 (or (and b!151230 b_free!5515) (and b!150754 b_free!5491 (= (toChars!949 (transformation!455 (h!8021 rules!1920))) (toChars!949 (transformation!455 (rule!962 (h!8020 (t!24769 tokens!465))))))) (and b!150757 b_free!5499 (= (toChars!949 (transformation!455 (rule!962 (h!8020 tokens!465)))) (toChars!949 (transformation!455 (rule!962 (h!8020 (t!24769 tokens!465))))))) (and b!152129 b_free!5519 (= (toChars!949 (transformation!455 (rule!962 (h!8020 (t!24769 (t!24769 tokens!465)))))) (toChars!949 (transformation!455 (rule!962 (h!8020 (t!24769 tokens!465))))))) (and b!150761 b_free!5495 (= (toChars!949 (transformation!455 (rule!962 separatorToken!170))) (toChars!949 (transformation!455 (rule!962 (h!8020 (t!24769 tokens!465))))))) (and b!151202 b_free!5511 (= (toChars!949 (transformation!455 (h!8021 (t!24770 rules!1920)))) (toChars!949 (transformation!455 (rule!962 (h!8020 (t!24769 tokens!465))))))) (and b!152161 b_free!5527 (= (toChars!949 (transformation!455 (h!8021 (t!24770 (t!24770 rules!1920))))) (toChars!949 (transformation!455 (rule!962 (h!8020 (t!24769 tokens!465))))))) b_lambda!2827)))

(declare-fun b_lambda!2829 () Bool)

(assert (= b_lambda!2775 (or b!151155 b_lambda!2829)))

(declare-fun bs!14010 () Bool)

(declare-fun d!36649 () Bool)

(assert (= bs!14010 (and d!36649 b!151155)))

(assert (=> bs!14010 (= (dynLambda!915 lambda!3897 (apply!341 lt!43920 0)) (rulesProduceIndividualToken!90 thiss!17480 rules!1920 (apply!341 lt!43920 0)))))

(assert (=> bs!14010 m!135051))

(declare-fun m!137217 () Bool)

(assert (=> bs!14010 m!137217))

(assert (=> d!36361 d!36649))

(declare-fun b_lambda!2831 () Bool)

(assert (= b_lambda!2761 (or d!36079 b_lambda!2831)))

(declare-fun bs!14011 () Bool)

(declare-fun d!36651 () Bool)

(assert (= bs!14011 (and d!36651 d!36079)))

(assert (=> bs!14011 (= (dynLambda!915 lambda!3876 (h!8020 (t!24769 tokens!465))) (rulesProduceIndividualToken!90 thiss!17480 rules!1920 (h!8020 (t!24769 tokens!465))))))

(assert (=> bs!14011 m!134823))

(assert (=> b!151326 d!36651))

(declare-fun b_lambda!2833 () Bool)

(assert (= b_lambda!2763 (or b!150972 b_lambda!2833)))

(declare-fun bs!14012 () Bool)

(declare-fun d!36653 () Bool)

(assert (= bs!14012 (and d!36653 b!150972)))

(assert (=> bs!14012 (= (dynLambda!915 lambda!3882 (h!8020 (t!24769 tokens!465))) (rulesProduceIndividualToken!90 thiss!17480 rules!1920 (h!8020 (t!24769 tokens!465))))))

(assert (=> bs!14012 m!134823))

(assert (=> d!36239 d!36653))

(check-sat (not b!152197) (not b!152186) (not b!152110) (not b!151774) (not d!36273) (not b!152193) (not b!151353) (not b!151591) (not b!151717) (not d!36529) (not b!151883) (not b!151975) (not b!152127) (not b!151404) (not bm!6118) (not b_lambda!2753) (not d!36313) (not bm!6152) (not b!151504) b_and!8645 (not d!36335) (not b!151806) (not b!151727) (not d!36237) (not b!151909) (not b!151908) (not b!151270) (not b_next!5495) (not b!152240) (not b!152148) (not d!36493) (not d!36191) (not b!151298) (not b!152081) (not d!36591) (not b!152194) (not b!152078) (not b_next!5497) (not b_lambda!2825) (not b!152188) (not b!152228) (not d!36213) (not d!36445) (not b!151985) (not d!36525) (not b!151290) (not b_lambda!2823) (not b!151402) (not b!151868) (not bm!6148) (not b!151405) (not d!36593) b_and!8823 (not bs!14010) (not d!36337) (not bm!6137) (not b!152069) (not b!151895) (not d!36489) (not b!152238) (not b!151852) b_and!8807 (not b!151418) (not d!36451) (not d!36547) (not b!152030) (not d!36351) (not b!152105) b_and!8815 (not b!151424) (not b!151399) (not d!36181) (not b!152233) (not b!151984) (not b!151850) (not b!151406) (not b!152021) (not b!151807) (not d!36581) (not b_next!5489) (not b!151337) (not b!151549) (not b!151773) b_and!8705 (not b!152198) (not b!152068) (not b!151724) (not d!36455) (not d!36373) (not b!152014) (not b!152090) (not b!151718) (not b!151350) (not d!36419) (not b!152152) (not b!151606) (not b!151971) (not b!152092) (not b_lambda!2819) (not b!151588) (not b!150978) (not b!152093) (not b!151866) (not d!36201) (not bm!6159) (not b!151800) (not bs!14012) (not b!151833) (not b!151320) (not b_lambda!2827) (not b!151283) (not b!151915) (not d!36323) (not b!151318) (not b!151843) (not b!152230) (not b!151266) (not d!36585) (not d!36495) (not b!152223) (not tb!5115) (not b!151505) (not b!152206) (not b!152075) (not d!36383) (not b!152177) (not d!36541) (not bs!14011) (not d!36467) b_and!8637 (not b!152074) (not b!151719) (not b!152091) (not d!36501) (not tb!5155) (not d!36415) (not d!36527) (not b_lambda!2751) (not d!36239) b_and!8641 (not b_lambda!2791) (not d!36195) (not b!151269) (not b!152073) (not b!152185) (not d!36223) (not b!151354) (not b!151725) (not b!151715) (not b!151874) (not b!152207) (not b!151955) (not b!152229) (not b!152020) (not b!152138) (not d!36215) (not b!151284) (not b!151878) b_and!8813 b_and!8811 (not b!151861) (not bm!6133) (not b_lambda!2757) (not b!151581) (not b!151351) (not b!151831) (not b!151979) (not d!36267) (not b!151327) (not b!150862) (not b!151411) (not b_next!5513) (not b!151957) (not b!151877) (not d!36473) (not d!36439) (not b!151882) (not d!36423) (not b_next!5509) (not d!36589) (not b!151303) (not d!36275) (not b!151940) (not b!151417) (not b!152151) (not b!151754) (not b!152109) (not bm!6153) (not b!152079) (not d!36189) (not b!151324) (not d!36421) (not d!36327) (not d!36443) (not b!152115) (not d!36431) (not d!36341) (not d!36311) (not d!36303) (not b!152128) (not bm!6135) (not b_next!5493) (not b_next!5511) (not b!151412) b_and!8805 (not d!36417) (not b!152077) (not b!151867) (not b!152213) (not b!151855) (not b!151911) (not bm!6114) (not bs!14006) (not b_lambda!2749) (not d!36623) (not b!152159) (not b!151728) (not b!151898) (not d!36321) (not b!151576) (not d!36231) (not b!151358) (not b!152104) (not b!152067) (not b!152189) (not b!151577) (not d!36429) (not b_lambda!2821) (not b!152089) (not b!151726) (not b!151285) (not b!151899) (not d!36205) (not d!36347) (not b!151954) (not b!151547) (not b_lambda!2755) (not b!151873) (not b!151400) (not d!36367) (not b!151296) (not b!152221) (not b!151945) (not tb!5105) (not b_next!5515) (not b!151273) (not b!152235) (not b!151301) (not b!151279) (not d!36339) (not d!36433) (not b!152192) (not b!152239) (not b!151910) (not b!152088) (not b!151338) (not b!151503) (not d!36233) (not b!151586) (not d!36543) (not b!151941) (not b!151771) (not b!151594) (not b!151540) (not b!151781) (not b!151721) (not b_next!5525) (not b!152214) (not d!36361) (not bm!6116) (not b!151885) (not d!36559) (not b!151403) (not b!151951) (not b!152142) (not b!152184) (not b!151278) (not b!152190) (not d!36425) (not d!36427) (not b_lambda!2799) (not b_next!5527) (not b!152019) (not d!36241) (not d!36479) tp_is_empty!1611 (not d!36461) (not b!151881) (not d!36271) (not b!151716) (not b!151583) (not b!151420) (not b!152160) (not b!151747) (not b!151407) (not b!151863) (not b!151772) (not d!36229) (not b!152083) (not b!151325) (not b!151572) (not b!151423) (not bm!6117) (not b!152082) (not b!151620) (not b!152139) (not b!151580) (not bs!14003) (not d!36471) (not b!152199) (not b_lambda!2833) b_and!8821 (not b_next!5499) (not b!152126) (not b!151876) (not b_next!5491) (not b_lambda!2829) (not b!151316) (not d!36511) (not d!36217) (not b!151592) (not b!152018) (not b!151597) (not b!151805) (not bm!6158) (not bm!6171) (not b!151573) (not b!151336) (not b!151267) (not d!36197) (not b_lambda!2831) b_and!8709 (not b!151756) (not b!151302) (not d!36509) (not b!152108) (not b!151720) (not b!151300) (not d!36487) (not b_next!5517) (not b!151801) (not b!151593) (not b!151880) (not d!36199) (not b!151282) (not b!151994) (not d!36457) (not bm!6151) (not bm!6168) (not b!151956) (not b!151944) (not b!152103) (not b!151339) (not d!36537) (not b!151829) (not b_next!5519) (not b!152222) (not d!36179) (not b!151542) (not b!151817) (not b!151763) (not d!36625) (not b!151845) (not b!152205) b_and!8803 (not b!151952) (not d!36465) (not b!151896) (not b!151582) (not b!151884) (not b!151844) (not d!36315) (not bm!6157) (not d!36539) (not tb!5145) (not b!151322) (not d!36307) (not b!152215) b_and!8809 (not b!152150) (not d!36319) (not b!152234) (not b!152196) (not b!151963) (not d!36265) (not b!151416) (not d!36203) (not b_lambda!2777))
(check-sat b_and!8645 (not b_next!5495) (not b_next!5497) b_and!8815 (not b_next!5489) b_and!8705 (not b_next!5513) (not b_next!5509) (not b_next!5515) (not b_next!5525) (not b_next!5527) (not b_next!5519) b_and!8803 b_and!8809 b_and!8823 b_and!8807 b_and!8641 b_and!8637 b_and!8813 b_and!8811 (not b_next!5493) (not b_next!5511) b_and!8805 (not b_next!5491) b_and!8821 (not b_next!5499) b_and!8709 (not b_next!5517))
