; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!95648 () Bool)

(assert start!95648)

(declare-fun b!1107587 () Bool)

(declare-fun b_free!26885 () Bool)

(declare-fun b_next!26949 () Bool)

(assert (=> b!1107587 (= b_free!26885 (not b_next!26949))))

(declare-fun tp!328680 () Bool)

(declare-fun b_and!79205 () Bool)

(assert (=> b!1107587 (= tp!328680 b_and!79205)))

(declare-fun b_free!26887 () Bool)

(declare-fun b_next!26951 () Bool)

(assert (=> b!1107587 (= b_free!26887 (not b_next!26951))))

(declare-fun tp!328683 () Bool)

(declare-fun b_and!79207 () Bool)

(assert (=> b!1107587 (= tp!328683 b_and!79207)))

(declare-fun b!1107581 () Bool)

(declare-fun res!490454 () Bool)

(declare-fun e!702317 () Bool)

(assert (=> b!1107581 (=> (not res!490454) (not e!702317))))

(declare-datatypes ((LexerInterface!1581 0))(
  ( (LexerInterfaceExt!1578 (__x!7575 Int)) (Lexer!1579) )
))
(declare-fun thiss!11199 () LexerInterface!1581)

(declare-datatypes ((List!10872 0))(
  ( (Nil!10848) (Cons!10848 (h!16249 (_ BitVec 16)) (t!105444 List!10872)) )
))
(declare-datatypes ((TokenValue!1936 0))(
  ( (FloatLiteralValue!3872 (text!13997 List!10872)) (TokenValueExt!1935 (__x!7576 Int)) (Broken!9680 (value!61267 List!10872)) (Object!1959) (End!1936) (Def!1936) (Underscore!1936) (Match!1936) (Else!1936) (Error!1936) (Case!1936) (If!1936) (Extends!1936) (Abstract!1936) (Class!1936) (Val!1936) (DelimiterValue!3872 (del!1996 List!10872)) (KeywordValue!1942 (value!61268 List!10872)) (CommentValue!3872 (value!61269 List!10872)) (WhitespaceValue!3872 (value!61270 List!10872)) (IndentationValue!1936 (value!61271 List!10872)) (String!13269) (Int32!1936) (Broken!9681 (value!61272 List!10872)) (Boolean!1937) (Unit!16468) (OperatorValue!1939 (op!1996 List!10872)) (IdentifierValue!3872 (value!61273 List!10872)) (IdentifierValue!3873 (value!61274 List!10872)) (WhitespaceValue!3873 (value!61275 List!10872)) (True!3872) (False!3872) (Broken!9682 (value!61276 List!10872)) (Broken!9683 (value!61277 List!10872)) (True!3873) (RightBrace!1936) (RightBracket!1936) (Colon!1936) (Null!1936) (Comma!1936) (LeftBracket!1936) (False!3873) (LeftBrace!1936) (ImaginaryLiteralValue!1936 (text!13998 List!10872)) (StringLiteralValue!5808 (value!61278 List!10872)) (EOFValue!1936 (value!61279 List!10872)) (IdentValue!1936 (value!61280 List!10872)) (DelimiterValue!3873 (value!61281 List!10872)) (DedentValue!1936 (value!61282 List!10872)) (NewLineValue!1936 (value!61283 List!10872)) (IntegerValue!5808 (value!61284 (_ BitVec 32)) (text!13999 List!10872)) (IntegerValue!5809 (value!61285 Int) (text!14000 List!10872)) (Times!1936) (Or!1936) (Equal!1936) (Minus!1936) (Broken!9684 (value!61286 List!10872)) (And!1936) (Div!1936) (LessEqual!1936) (Mod!1936) (Concat!5076) (Not!1936) (Plus!1936) (SpaceValue!1936 (value!61287 List!10872)) (IntegerValue!5810 (value!61288 Int) (text!14001 List!10872)) (StringLiteralValue!5809 (text!14002 List!10872)) (FloatLiteralValue!3873 (text!14003 List!10872)) (BytesLiteralValue!1936 (value!61289 List!10872)) (CommentValue!3873 (value!61290 List!10872)) (StringLiteralValue!5810 (value!61291 List!10872)) (ErrorTokenValue!1936 (msg!1997 List!10872)) )
))
(declare-datatypes ((C!6670 0))(
  ( (C!6671 (val!3591 Int)) )
))
(declare-datatypes ((Regex!3140 0))(
  ( (ElementMatch!3140 (c!187978 C!6670)) (Concat!5077 (regOne!6792 Regex!3140) (regTwo!6792 Regex!3140)) (EmptyExpr!3140) (Star!3140 (reg!3469 Regex!3140)) (EmptyLang!3140) (Union!3140 (regOne!6793 Regex!3140) (regTwo!6793 Regex!3140)) )
))
(declare-datatypes ((String!13270 0))(
  ( (String!13271 (value!61292 String)) )
))
(declare-datatypes ((List!10873 0))(
  ( (Nil!10849) (Cons!10849 (h!16250 C!6670) (t!105445 List!10873)) )
))
(declare-datatypes ((IArray!6865 0))(
  ( (IArray!6866 (innerList!3490 List!10873)) )
))
(declare-datatypes ((Conc!3430 0))(
  ( (Node!3430 (left!9409 Conc!3430) (right!9739 Conc!3430) (csize!7090 Int) (cheight!3641 Int)) (Leaf!5376 (xs!6123 IArray!6865) (csize!7091 Int)) (Empty!3430) )
))
(declare-datatypes ((BalanceConc!6882 0))(
  ( (BalanceConc!6883 (c!187979 Conc!3430)) )
))
(declare-datatypes ((TokenValueInjection!3572 0))(
  ( (TokenValueInjection!3573 (toValue!2947 Int) (toChars!2806 Int)) )
))
(declare-datatypes ((Rule!3540 0))(
  ( (Rule!3541 (regex!1870 Regex!3140) (tag!2132 String!13270) (isSeparator!1870 Bool) (transformation!1870 TokenValueInjection!3572)) )
))
(declare-datatypes ((List!10874 0))(
  ( (Nil!10850) (Cons!10850 (h!16251 Rule!3540) (t!105446 List!10874)) )
))
(declare-fun rules!1093 () List!10874)

(declare-datatypes ((Token!3402 0))(
  ( (Token!3403 (value!61293 TokenValue!1936) (rule!3291 Rule!3540) (size!8415 Int) (originalCharacters!2424 List!10873)) )
))
(declare-datatypes ((List!10875 0))(
  ( (Nil!10851) (Cons!10851 (h!16252 Token!3402) (t!105447 List!10875)) )
))
(declare-datatypes ((IArray!6867 0))(
  ( (IArray!6868 (innerList!3491 List!10875)) )
))
(declare-datatypes ((Conc!3431 0))(
  ( (Node!3431 (left!9410 Conc!3431) (right!9740 Conc!3431) (csize!7092 Int) (cheight!3642 Int)) (Leaf!5377 (xs!6124 IArray!6867) (csize!7093 Int)) (Empty!3431) )
))
(declare-datatypes ((BalanceConc!6884 0))(
  ( (BalanceConc!6885 (c!187980 Conc!3431)) )
))
(declare-fun tokens!410 () BalanceConc!6884)

(declare-fun rulesProduceEachTokenIndividually!624 (LexerInterface!1581 List!10874 BalanceConc!6884) Bool)

(assert (=> b!1107581 (= res!490454 (rulesProduceEachTokenIndividually!624 thiss!11199 rules!1093 tokens!410))))

(declare-fun b!1107582 () Bool)

(declare-fun res!490452 () Bool)

(assert (=> b!1107582 (=> (not res!490452) (not e!702317))))

(declare-fun isEmpty!6737 (List!10874) Bool)

(assert (=> b!1107582 (= res!490452 (not (isEmpty!6737 rules!1093)))))

(declare-fun b!1107583 () Bool)

(declare-fun res!490453 () Bool)

(assert (=> b!1107583 (=> (not res!490453) (not e!702317))))

(declare-fun rulesInvariant!1456 (LexerInterface!1581 List!10874) Bool)

(assert (=> b!1107583 (= res!490453 (rulesInvariant!1456 thiss!11199 rules!1093))))

(declare-fun b!1107584 () Bool)

(declare-fun size!8416 (BalanceConc!6884) Int)

(assert (=> b!1107584 (= e!702317 (> 0 (size!8416 tokens!410)))))

(declare-fun b!1107585 () Bool)

(declare-fun e!702313 () Bool)

(declare-fun tp!328679 () Bool)

(declare-fun inv!13931 (Conc!3431) Bool)

(assert (=> b!1107585 (= e!702313 (and (inv!13931 (c!187980 tokens!410)) tp!328679))))

(declare-fun e!702314 () Bool)

(assert (=> b!1107587 (= e!702314 (and tp!328680 tp!328683))))

(declare-fun e!702312 () Bool)

(declare-fun b!1107588 () Bool)

(declare-fun tp!328681 () Bool)

(declare-fun inv!13928 (String!13270) Bool)

(declare-fun inv!13932 (TokenValueInjection!3572) Bool)

(assert (=> b!1107588 (= e!702312 (and tp!328681 (inv!13928 (tag!2132 (h!16251 rules!1093))) (inv!13932 (transformation!1870 (h!16251 rules!1093))) e!702314))))

(declare-fun res!490451 () Bool)

(assert (=> start!95648 (=> (not res!490451) (not e!702317))))

(assert (=> start!95648 (= res!490451 (is-Lexer!1579 thiss!11199))))

(assert (=> start!95648 e!702317))

(assert (=> start!95648 true))

(declare-fun e!702316 () Bool)

(assert (=> start!95648 e!702316))

(declare-fun inv!13933 (BalanceConc!6884) Bool)

(assert (=> start!95648 (and (inv!13933 tokens!410) e!702313)))

(declare-fun b!1107586 () Bool)

(declare-fun tp!328682 () Bool)

(assert (=> b!1107586 (= e!702316 (and e!702312 tp!328682))))

(assert (= (and start!95648 res!490451) b!1107582))

(assert (= (and b!1107582 res!490452) b!1107583))

(assert (= (and b!1107583 res!490453) b!1107581))

(assert (= (and b!1107581 res!490454) b!1107584))

(assert (= b!1107588 b!1107587))

(assert (= b!1107586 b!1107588))

(assert (= (and start!95648 (is-Cons!10850 rules!1093)) b!1107586))

(assert (= start!95648 b!1107585))

(declare-fun m!1264727 () Bool)

(assert (=> b!1107583 m!1264727))

(declare-fun m!1264729 () Bool)

(assert (=> b!1107585 m!1264729))

(declare-fun m!1264731 () Bool)

(assert (=> b!1107584 m!1264731))

(declare-fun m!1264733 () Bool)

(assert (=> b!1107588 m!1264733))

(declare-fun m!1264735 () Bool)

(assert (=> b!1107588 m!1264735))

(declare-fun m!1264737 () Bool)

(assert (=> start!95648 m!1264737))

(declare-fun m!1264739 () Bool)

(assert (=> b!1107582 m!1264739))

(declare-fun m!1264741 () Bool)

(assert (=> b!1107581 m!1264741))

(push 1)

(assert (not b!1107583))

(assert (not b!1107586))

(assert (not start!95648))

(assert b_and!79205)

(assert (not b_next!26949))

(assert (not b!1107581))

(assert (not b!1107582))

(assert b_and!79207)

(assert (not b_next!26951))

(assert (not b!1107585))

(assert (not b!1107584))

(assert (not b!1107588))

(check-sat)

(pop 1)

(push 1)

(assert b_and!79205)

(assert b_and!79207)

(assert (not b_next!26951))

(assert (not b_next!26949))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!313478 () Bool)

(assert (=> d!313478 (= (isEmpty!6737 rules!1093) (is-Nil!10850 rules!1093))))

(assert (=> b!1107582 d!313478))

(declare-fun d!313480 () Bool)

(assert (=> d!313480 (= (inv!13928 (tag!2132 (h!16251 rules!1093))) (= (mod (str.len (value!61292 (tag!2132 (h!16251 rules!1093)))) 2) 0))))

(assert (=> b!1107588 d!313480))

(declare-fun d!313482 () Bool)

(declare-fun res!490472 () Bool)

(declare-fun e!702341 () Bool)

(assert (=> d!313482 (=> (not res!490472) (not e!702341))))

(declare-fun semiInverseModEq!709 (Int Int) Bool)

(assert (=> d!313482 (= res!490472 (semiInverseModEq!709 (toChars!2806 (transformation!1870 (h!16251 rules!1093))) (toValue!2947 (transformation!1870 (h!16251 rules!1093)))))))

(assert (=> d!313482 (= (inv!13932 (transformation!1870 (h!16251 rules!1093))) e!702341)))

(declare-fun b!1107618 () Bool)

(declare-fun equivClasses!676 (Int Int) Bool)

(assert (=> b!1107618 (= e!702341 (equivClasses!676 (toChars!2806 (transformation!1870 (h!16251 rules!1093))) (toValue!2947 (transformation!1870 (h!16251 rules!1093)))))))

(assert (= (and d!313482 res!490472) b!1107618))

(declare-fun m!1264763 () Bool)

(assert (=> d!313482 m!1264763))

(declare-fun m!1264765 () Bool)

(assert (=> b!1107618 m!1264765))

(assert (=> b!1107588 d!313482))

(declare-fun d!313486 () Bool)

(declare-fun isBalanced!940 (Conc!3431) Bool)

(assert (=> d!313486 (= (inv!13933 tokens!410) (isBalanced!940 (c!187980 tokens!410)))))

(declare-fun bs!260071 () Bool)

(assert (= bs!260071 d!313486))

(declare-fun m!1264767 () Bool)

(assert (=> bs!260071 m!1264767))

(assert (=> start!95648 d!313486))

(declare-fun d!313488 () Bool)

(declare-fun res!490478 () Bool)

(declare-fun e!702350 () Bool)

(assert (=> d!313488 (=> (not res!490478) (not e!702350))))

(declare-fun rulesValid!640 (LexerInterface!1581 List!10874) Bool)

(assert (=> d!313488 (= res!490478 (rulesValid!640 thiss!11199 rules!1093))))

(assert (=> d!313488 (= (rulesInvariant!1456 thiss!11199 rules!1093) e!702350)))

(declare-fun b!1107630 () Bool)

(declare-datatypes ((List!10880 0))(
  ( (Nil!10856) (Cons!10856 (h!16257 String!13270) (t!105458 List!10880)) )
))
(declare-fun noDuplicateTag!640 (LexerInterface!1581 List!10874 List!10880) Bool)

(assert (=> b!1107630 (= e!702350 (noDuplicateTag!640 thiss!11199 rules!1093 Nil!10856))))

(assert (= (and d!313488 res!490478) b!1107630))

(declare-fun m!1264773 () Bool)

(assert (=> d!313488 m!1264773))

(declare-fun m!1264775 () Bool)

(assert (=> b!1107630 m!1264775))

(assert (=> b!1107583 d!313488))

(declare-fun d!313494 () Bool)

(declare-fun c!187989 () Bool)

(assert (=> d!313494 (= c!187989 (is-Node!3431 (c!187980 tokens!410)))))

(declare-fun e!702357 () Bool)

(assert (=> d!313494 (= (inv!13931 (c!187980 tokens!410)) e!702357)))

(declare-fun b!1107639 () Bool)

(declare-fun inv!13937 (Conc!3431) Bool)

(assert (=> b!1107639 (= e!702357 (inv!13937 (c!187980 tokens!410)))))

(declare-fun b!1107640 () Bool)

(declare-fun e!702358 () Bool)

(assert (=> b!1107640 (= e!702357 e!702358)))

(declare-fun res!490483 () Bool)

(assert (=> b!1107640 (= res!490483 (not (is-Leaf!5377 (c!187980 tokens!410))))))

(assert (=> b!1107640 (=> res!490483 e!702358)))

(declare-fun b!1107641 () Bool)

(declare-fun inv!13938 (Conc!3431) Bool)

(assert (=> b!1107641 (= e!702358 (inv!13938 (c!187980 tokens!410)))))

(assert (= (and d!313494 c!187989) b!1107639))

(assert (= (and d!313494 (not c!187989)) b!1107640))

(assert (= (and b!1107640 (not res!490483)) b!1107641))

(declare-fun m!1264777 () Bool)

(assert (=> b!1107639 m!1264777))

(declare-fun m!1264779 () Bool)

(assert (=> b!1107641 m!1264779))

(assert (=> b!1107585 d!313494))

(declare-fun d!313496 () Bool)

(declare-fun lt!376086 () Int)

(declare-fun size!8419 (List!10875) Int)

(declare-fun list!3895 (BalanceConc!6884) List!10875)

(assert (=> d!313496 (= lt!376086 (size!8419 (list!3895 tokens!410)))))

(declare-fun size!8420 (Conc!3431) Int)

(assert (=> d!313496 (= lt!376086 (size!8420 (c!187980 tokens!410)))))

(assert (=> d!313496 (= (size!8416 tokens!410) lt!376086)))

(declare-fun bs!260072 () Bool)

(assert (= bs!260072 d!313496))

(declare-fun m!1264785 () Bool)

(assert (=> bs!260072 m!1264785))

(assert (=> bs!260072 m!1264785))

(declare-fun m!1264787 () Bool)

(assert (=> bs!260072 m!1264787))

(declare-fun m!1264789 () Bool)

(assert (=> bs!260072 m!1264789))

(assert (=> b!1107584 d!313496))

(declare-fun b!1107656 () Bool)

(declare-fun e!702371 () Bool)

(assert (=> b!1107656 (= e!702371 true)))

(declare-fun b!1107655 () Bool)

(declare-fun e!702370 () Bool)

(assert (=> b!1107655 (= e!702370 e!702371)))

(declare-fun b!1107654 () Bool)

(declare-fun e!702369 () Bool)

(assert (=> b!1107654 (= e!702369 e!702370)))

(declare-fun d!313500 () Bool)

(assert (=> d!313500 e!702369))

(assert (= b!1107655 b!1107656))

(assert (= b!1107654 b!1107655))

(assert (= (and d!313500 (is-Cons!10850 rules!1093)) b!1107654))

(declare-fun lambda!44743 () Int)

(declare-fun order!6623 () Int)

(declare-fun order!6621 () Int)

(declare-fun dynLambda!4761 (Int Int) Int)

(declare-fun dynLambda!4762 (Int Int) Int)

(assert (=> b!1107656 (< (dynLambda!4761 order!6621 (toValue!2947 (transformation!1870 (h!16251 rules!1093)))) (dynLambda!4762 order!6623 lambda!44743))))

(declare-fun order!6625 () Int)

(declare-fun dynLambda!4763 (Int Int) Int)

(assert (=> b!1107656 (< (dynLambda!4763 order!6625 (toChars!2806 (transformation!1870 (h!16251 rules!1093)))) (dynLambda!4762 order!6623 lambda!44743))))

(assert (=> d!313500 true))

(declare-fun e!702362 () Bool)

(assert (=> d!313500 e!702362))

(declare-fun res!490487 () Bool)

(assert (=> d!313500 (=> (not res!490487) (not e!702362))))

(declare-fun lt!376091 () Bool)

(declare-fun forall!2545 (List!10875 Int) Bool)

(assert (=> d!313500 (= res!490487 (= lt!376091 (forall!2545 (list!3895 tokens!410) lambda!44743)))))

(declare-fun forall!2546 (BalanceConc!6884 Int) Bool)

(assert (=> d!313500 (= lt!376091 (forall!2546 tokens!410 lambda!44743))))

(assert (=> d!313500 (not (isEmpty!6737 rules!1093))))

(assert (=> d!313500 (= (rulesProduceEachTokenIndividually!624 thiss!11199 rules!1093 tokens!410) lt!376091)))

(declare-fun b!1107645 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!461 (LexerInterface!1581 List!10874 List!10875) Bool)

(assert (=> b!1107645 (= e!702362 (= lt!376091 (rulesProduceEachTokenIndividuallyList!461 thiss!11199 rules!1093 (list!3895 tokens!410))))))

(assert (= (and d!313500 res!490487) b!1107645))

(assert (=> d!313500 m!1264785))

(assert (=> d!313500 m!1264785))

(declare-fun m!1264791 () Bool)

(assert (=> d!313500 m!1264791))

(declare-fun m!1264793 () Bool)

(assert (=> d!313500 m!1264793))

(assert (=> d!313500 m!1264739))

(assert (=> b!1107645 m!1264785))

(assert (=> b!1107645 m!1264785))

(declare-fun m!1264795 () Bool)

(assert (=> b!1107645 m!1264795))

(assert (=> b!1107581 d!313500))

(declare-fun b!1107670 () Bool)

(declare-fun e!702374 () Bool)

(declare-fun tp!328709 () Bool)

(declare-fun tp!328713 () Bool)

(assert (=> b!1107670 (= e!702374 (and tp!328709 tp!328713))))

(assert (=> b!1107588 (= tp!328681 e!702374)))

(declare-fun b!1107669 () Bool)

(declare-fun tp_is_empty!5719 () Bool)

(assert (=> b!1107669 (= e!702374 tp_is_empty!5719)))

(declare-fun b!1107672 () Bool)

(declare-fun tp!328711 () Bool)

(declare-fun tp!328710 () Bool)

(assert (=> b!1107672 (= e!702374 (and tp!328711 tp!328710))))

(declare-fun b!1107671 () Bool)

(declare-fun tp!328712 () Bool)

(assert (=> b!1107671 (= e!702374 tp!328712)))

(assert (= (and b!1107588 (is-ElementMatch!3140 (regex!1870 (h!16251 rules!1093)))) b!1107669))

(assert (= (and b!1107588 (is-Concat!5077 (regex!1870 (h!16251 rules!1093)))) b!1107670))

(assert (= (and b!1107588 (is-Star!3140 (regex!1870 (h!16251 rules!1093)))) b!1107671))

(assert (= (and b!1107588 (is-Union!3140 (regex!1870 (h!16251 rules!1093)))) b!1107672))

(declare-fun tp!328720 () Bool)

(declare-fun e!702380 () Bool)

(declare-fun tp!328722 () Bool)

(declare-fun b!1107681 () Bool)

(assert (=> b!1107681 (= e!702380 (and (inv!13931 (left!9410 (c!187980 tokens!410))) tp!328720 (inv!13931 (right!9740 (c!187980 tokens!410))) tp!328722))))

(declare-fun b!1107683 () Bool)

(declare-fun e!702379 () Bool)

(declare-fun tp!328721 () Bool)

(assert (=> b!1107683 (= e!702379 tp!328721)))

(declare-fun b!1107682 () Bool)

(declare-fun inv!13939 (IArray!6867) Bool)

(assert (=> b!1107682 (= e!702380 (and (inv!13939 (xs!6124 (c!187980 tokens!410))) e!702379))))

(assert (=> b!1107585 (= tp!328679 (and (inv!13931 (c!187980 tokens!410)) e!702380))))

(assert (= (and b!1107585 (is-Node!3431 (c!187980 tokens!410))) b!1107681))

(assert (= b!1107682 b!1107683))

(assert (= (and b!1107585 (is-Leaf!5377 (c!187980 tokens!410))) b!1107682))

(declare-fun m!1264797 () Bool)

(assert (=> b!1107681 m!1264797))

(declare-fun m!1264799 () Bool)

(assert (=> b!1107681 m!1264799))

(declare-fun m!1264801 () Bool)

(assert (=> b!1107682 m!1264801))

(assert (=> b!1107585 m!1264729))

(declare-fun b!1107694 () Bool)

(declare-fun b_free!26893 () Bool)

(declare-fun b_next!26957 () Bool)

(assert (=> b!1107694 (= b_free!26893 (not b_next!26957))))

(declare-fun tp!328732 () Bool)

(declare-fun b_and!79213 () Bool)

(assert (=> b!1107694 (= tp!328732 b_and!79213)))

(declare-fun b_free!26895 () Bool)

(declare-fun b_next!26959 () Bool)

(assert (=> b!1107694 (= b_free!26895 (not b_next!26959))))

(declare-fun tp!328733 () Bool)

(declare-fun b_and!79215 () Bool)

(assert (=> b!1107694 (= tp!328733 b_and!79215)))

(declare-fun e!702389 () Bool)

(assert (=> b!1107694 (= e!702389 (and tp!328732 tp!328733))))

(declare-fun b!1107693 () Bool)

(declare-fun e!702392 () Bool)

(declare-fun tp!328731 () Bool)

(assert (=> b!1107693 (= e!702392 (and tp!328731 (inv!13928 (tag!2132 (h!16251 (t!105446 rules!1093)))) (inv!13932 (transformation!1870 (h!16251 (t!105446 rules!1093)))) e!702389))))

(declare-fun b!1107692 () Bool)

(declare-fun e!702390 () Bool)

(declare-fun tp!328734 () Bool)

(assert (=> b!1107692 (= e!702390 (and e!702392 tp!328734))))

(assert (=> b!1107586 (= tp!328682 e!702390)))

(assert (= b!1107693 b!1107694))

(assert (= b!1107692 b!1107693))

(assert (= (and b!1107586 (is-Cons!10850 (t!105446 rules!1093))) b!1107692))

(declare-fun m!1264803 () Bool)

(assert (=> b!1107693 m!1264803))

(declare-fun m!1264805 () Bool)

(assert (=> b!1107693 m!1264805))

(push 1)

(assert (not d!313496))

(assert (not b!1107645))

(assert b_and!79215)

(assert (not b!1107641))

(assert tp_is_empty!5719)

(assert (not b!1107683))

(assert (not d!313488))

(assert b_and!79207)

(assert (not b!1107654))

(assert (not b_next!26951))

(assert (not b!1107585))

(assert (not d!313500))

(assert (not b_next!26959))

(assert (not b!1107630))

(assert (not b!1107639))

(assert (not b!1107693))

(assert (not b!1107681))

(assert (not d!313486))

(assert b_and!79205)

(assert (not b_next!26957))

(assert (not d!313482))

(assert (not b!1107682))

(assert (not b_next!26949))

(assert (not b!1107671))

(assert (not b!1107618))

(assert (not b!1107672))

(assert b_and!79213)

(assert (not b!1107692))

(assert (not b!1107670))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!26951))

(assert (not b_next!26959))

(assert (not b_next!26949))

(assert b_and!79215)

(assert b_and!79213)

(assert b_and!79207)

(assert b_and!79205)

(assert (not b_next!26957))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!313508 () Bool)

(assert (=> d!313508 true))

(declare-fun lambda!44751 () Int)

(declare-fun order!6633 () Int)

(declare-fun dynLambda!4767 (Int Int) Int)

(assert (=> d!313508 (< (dynLambda!4763 order!6625 (toChars!2806 (transformation!1870 (h!16251 rules!1093)))) (dynLambda!4767 order!6633 lambda!44751))))

(assert (=> d!313508 true))

(assert (=> d!313508 (< (dynLambda!4761 order!6621 (toValue!2947 (transformation!1870 (h!16251 rules!1093)))) (dynLambda!4767 order!6633 lambda!44751))))

(declare-fun Forall!430 (Int) Bool)

(assert (=> d!313508 (= (semiInverseModEq!709 (toChars!2806 (transformation!1870 (h!16251 rules!1093))) (toValue!2947 (transformation!1870 (h!16251 rules!1093)))) (Forall!430 lambda!44751))))

(declare-fun bs!260075 () Bool)

(assert (= bs!260075 d!313508))

(declare-fun m!1264831 () Bool)

(assert (=> bs!260075 m!1264831))

(assert (=> d!313482 d!313508))

(declare-fun d!313510 () Bool)

(assert (=> d!313510 true))

(declare-fun order!6635 () Int)

(declare-fun lambda!44754 () Int)

(declare-fun dynLambda!4768 (Int Int) Int)

(assert (=> d!313510 (< (dynLambda!4761 order!6621 (toValue!2947 (transformation!1870 (h!16251 rules!1093)))) (dynLambda!4768 order!6635 lambda!44754))))

(declare-fun Forall2!340 (Int) Bool)

(assert (=> d!313510 (= (equivClasses!676 (toChars!2806 (transformation!1870 (h!16251 rules!1093))) (toValue!2947 (transformation!1870 (h!16251 rules!1093)))) (Forall2!340 lambda!44754))))

(declare-fun bs!260076 () Bool)

(assert (= bs!260076 d!313510))

(declare-fun m!1264833 () Bool)

(assert (=> bs!260076 m!1264833))

(assert (=> b!1107618 d!313510))

(assert (=> b!1107585 d!313494))

(declare-fun d!313512 () Bool)

(assert (=> d!313512 (= (inv!13928 (tag!2132 (h!16251 (t!105446 rules!1093)))) (= (mod (str.len (value!61292 (tag!2132 (h!16251 (t!105446 rules!1093))))) 2) 0))))

(assert (=> b!1107693 d!313512))

(declare-fun d!313514 () Bool)

(declare-fun res!490495 () Bool)

(declare-fun e!702428 () Bool)

(assert (=> d!313514 (=> (not res!490495) (not e!702428))))

(assert (=> d!313514 (= res!490495 (semiInverseModEq!709 (toChars!2806 (transformation!1870 (h!16251 (t!105446 rules!1093)))) (toValue!2947 (transformation!1870 (h!16251 (t!105446 rules!1093))))))))

(assert (=> d!313514 (= (inv!13932 (transformation!1870 (h!16251 (t!105446 rules!1093)))) e!702428)))

(declare-fun b!1107755 () Bool)

(assert (=> b!1107755 (= e!702428 (equivClasses!676 (toChars!2806 (transformation!1870 (h!16251 (t!105446 rules!1093)))) (toValue!2947 (transformation!1870 (h!16251 (t!105446 rules!1093))))))))

(assert (= (and d!313514 res!490495) b!1107755))

(declare-fun m!1264835 () Bool)

(assert (=> d!313514 m!1264835))

(declare-fun m!1264837 () Bool)

(assert (=> b!1107755 m!1264837))

(assert (=> b!1107693 d!313514))

(declare-fun d!313516 () Bool)

(declare-fun res!490500 () Bool)

(declare-fun e!702433 () Bool)

(assert (=> d!313516 (=> res!490500 e!702433)))

(assert (=> d!313516 (= res!490500 (is-Nil!10850 rules!1093))))

(assert (=> d!313516 (= (noDuplicateTag!640 thiss!11199 rules!1093 Nil!10856) e!702433)))

(declare-fun b!1107760 () Bool)

(declare-fun e!702434 () Bool)

(assert (=> b!1107760 (= e!702433 e!702434)))

(declare-fun res!490501 () Bool)

(assert (=> b!1107760 (=> (not res!490501) (not e!702434))))

(declare-fun contains!1942 (List!10880 String!13270) Bool)

(assert (=> b!1107760 (= res!490501 (not (contains!1942 Nil!10856 (tag!2132 (h!16251 rules!1093)))))))

(declare-fun b!1107761 () Bool)

(assert (=> b!1107761 (= e!702434 (noDuplicateTag!640 thiss!11199 (t!105446 rules!1093) (Cons!10856 (tag!2132 (h!16251 rules!1093)) Nil!10856)))))

(assert (= (and d!313516 (not res!490500)) b!1107760))

(assert (= (and b!1107760 res!490501) b!1107761))

(declare-fun m!1264839 () Bool)

(assert (=> b!1107760 m!1264839))

(declare-fun m!1264841 () Bool)

(assert (=> b!1107761 m!1264841))

(assert (=> b!1107630 d!313516))

(declare-fun d!313518 () Bool)

(assert (=> d!313518 true))

(declare-fun lt!376098 () Bool)

(declare-fun rulesValidInductive!628 (LexerInterface!1581 List!10874) Bool)

(assert (=> d!313518 (= lt!376098 (rulesValidInductive!628 thiss!11199 rules!1093))))

(declare-fun lambda!44757 () Int)

(declare-fun forall!2549 (List!10874 Int) Bool)

(assert (=> d!313518 (= lt!376098 (forall!2549 rules!1093 lambda!44757))))

(assert (=> d!313518 (= (rulesValid!640 thiss!11199 rules!1093) lt!376098)))

(declare-fun bs!260077 () Bool)

(assert (= bs!260077 d!313518))

(declare-fun m!1264843 () Bool)

(assert (=> bs!260077 m!1264843))

(declare-fun m!1264845 () Bool)

(assert (=> bs!260077 m!1264845))

(assert (=> d!313488 d!313518))

(declare-fun d!313520 () Bool)

(declare-fun res!490506 () Bool)

(declare-fun e!702437 () Bool)

(assert (=> d!313520 (=> (not res!490506) (not e!702437))))

(declare-fun list!3897 (IArray!6867) List!10875)

(assert (=> d!313520 (= res!490506 (<= (size!8419 (list!3897 (xs!6124 (c!187980 tokens!410)))) 512))))

(assert (=> d!313520 (= (inv!13938 (c!187980 tokens!410)) e!702437)))

(declare-fun b!1107768 () Bool)

(declare-fun res!490507 () Bool)

(assert (=> b!1107768 (=> (not res!490507) (not e!702437))))

(assert (=> b!1107768 (= res!490507 (= (csize!7093 (c!187980 tokens!410)) (size!8419 (list!3897 (xs!6124 (c!187980 tokens!410))))))))

(declare-fun b!1107769 () Bool)

(assert (=> b!1107769 (= e!702437 (and (> (csize!7093 (c!187980 tokens!410)) 0) (<= (csize!7093 (c!187980 tokens!410)) 512)))))

(assert (= (and d!313520 res!490506) b!1107768))

(assert (= (and b!1107768 res!490507) b!1107769))

(declare-fun m!1264847 () Bool)

(assert (=> d!313520 m!1264847))

(assert (=> d!313520 m!1264847))

(declare-fun m!1264849 () Bool)

(assert (=> d!313520 m!1264849))

(assert (=> b!1107768 m!1264847))

(assert (=> b!1107768 m!1264847))

(assert (=> b!1107768 m!1264849))

(assert (=> b!1107641 d!313520))

(declare-fun d!313522 () Bool)

(assert (=> d!313522 (= (inv!13939 (xs!6124 (c!187980 tokens!410))) (<= (size!8419 (innerList!3491 (xs!6124 (c!187980 tokens!410)))) 2147483647))))

(declare-fun bs!260078 () Bool)

(assert (= bs!260078 d!313522))

(declare-fun m!1264851 () Bool)

(assert (=> bs!260078 m!1264851))

(assert (=> b!1107682 d!313522))

(declare-fun b!1107782 () Bool)

(declare-fun res!490521 () Bool)

(declare-fun e!702443 () Bool)

(assert (=> b!1107782 (=> (not res!490521) (not e!702443))))

(assert (=> b!1107782 (= res!490521 (isBalanced!940 (left!9410 (c!187980 tokens!410))))))

(declare-fun b!1107783 () Bool)

(declare-fun res!490525 () Bool)

(assert (=> b!1107783 (=> (not res!490525) (not e!702443))))

(declare-fun height!434 (Conc!3431) Int)

(assert (=> b!1107783 (= res!490525 (<= (- (height!434 (left!9410 (c!187980 tokens!410))) (height!434 (right!9740 (c!187980 tokens!410)))) 1))))

(declare-fun b!1107784 () Bool)

(declare-fun res!490520 () Bool)

(assert (=> b!1107784 (=> (not res!490520) (not e!702443))))

(assert (=> b!1107784 (= res!490520 (isBalanced!940 (right!9740 (c!187980 tokens!410))))))

(declare-fun b!1107785 () Bool)

(declare-fun res!490523 () Bool)

(assert (=> b!1107785 (=> (not res!490523) (not e!702443))))

(declare-fun isEmpty!6739 (Conc!3431) Bool)

(assert (=> b!1107785 (= res!490523 (not (isEmpty!6739 (left!9410 (c!187980 tokens!410)))))))

(declare-fun b!1107786 () Bool)

(declare-fun e!702442 () Bool)

(assert (=> b!1107786 (= e!702442 e!702443)))

(declare-fun res!490524 () Bool)

(assert (=> b!1107786 (=> (not res!490524) (not e!702443))))

(assert (=> b!1107786 (= res!490524 (<= (- 1) (- (height!434 (left!9410 (c!187980 tokens!410))) (height!434 (right!9740 (c!187980 tokens!410))))))))

(declare-fun d!313524 () Bool)

(declare-fun res!490522 () Bool)

(assert (=> d!313524 (=> res!490522 e!702442)))

(assert (=> d!313524 (= res!490522 (not (is-Node!3431 (c!187980 tokens!410))))))

(assert (=> d!313524 (= (isBalanced!940 (c!187980 tokens!410)) e!702442)))

(declare-fun b!1107787 () Bool)

(assert (=> b!1107787 (= e!702443 (not (isEmpty!6739 (right!9740 (c!187980 tokens!410)))))))

(assert (= (and d!313524 (not res!490522)) b!1107786))

(assert (= (and b!1107786 res!490524) b!1107783))

(assert (= (and b!1107783 res!490525) b!1107782))

(assert (= (and b!1107782 res!490521) b!1107784))

(assert (= (and b!1107784 res!490520) b!1107785))

(assert (= (and b!1107785 res!490523) b!1107787))

(declare-fun m!1264853 () Bool)

(assert (=> b!1107784 m!1264853))

(declare-fun m!1264855 () Bool)

(assert (=> b!1107782 m!1264855))

(declare-fun m!1264857 () Bool)

(assert (=> b!1107785 m!1264857))

(declare-fun m!1264859 () Bool)

(assert (=> b!1107783 m!1264859))

(declare-fun m!1264861 () Bool)

(assert (=> b!1107783 m!1264861))

(declare-fun m!1264863 () Bool)

(assert (=> b!1107787 m!1264863))

(assert (=> b!1107786 m!1264859))

(assert (=> b!1107786 m!1264861))

(assert (=> d!313486 d!313524))

(declare-fun bs!260085 () Bool)

(declare-fun d!313526 () Bool)

(assert (= bs!260085 (and d!313526 d!313500)))

(declare-fun lambda!44768 () Int)

(assert (=> bs!260085 (= lambda!44768 lambda!44743)))

(declare-fun b!1107820 () Bool)

(declare-fun e!702467 () Bool)

(assert (=> b!1107820 (= e!702467 true)))

(declare-fun b!1107819 () Bool)

(declare-fun e!702466 () Bool)

(assert (=> b!1107819 (= e!702466 e!702467)))

(declare-fun b!1107818 () Bool)

(declare-fun e!702465 () Bool)

(assert (=> b!1107818 (= e!702465 e!702466)))

(assert (=> d!313526 e!702465))

(assert (= b!1107819 b!1107820))

(assert (= b!1107818 b!1107819))

(assert (= (and d!313526 (is-Cons!10850 rules!1093)) b!1107818))

(assert (=> b!1107820 (< (dynLambda!4761 order!6621 (toValue!2947 (transformation!1870 (h!16251 rules!1093)))) (dynLambda!4762 order!6623 lambda!44768))))

(assert (=> b!1107820 (< (dynLambda!4763 order!6625 (toChars!2806 (transformation!1870 (h!16251 rules!1093)))) (dynLambda!4762 order!6623 lambda!44768))))

(assert (=> d!313526 true))

(declare-fun lt!376113 () Bool)

(assert (=> d!313526 (= lt!376113 (forall!2545 (list!3895 tokens!410) lambda!44768))))

(declare-fun e!702464 () Bool)

(assert (=> d!313526 (= lt!376113 e!702464)))

(declare-fun res!490543 () Bool)

(assert (=> d!313526 (=> res!490543 e!702464)))

(assert (=> d!313526 (= res!490543 (not (is-Cons!10851 (list!3895 tokens!410))))))

(assert (=> d!313526 (not (isEmpty!6737 rules!1093))))

(assert (=> d!313526 (= (rulesProduceEachTokenIndividuallyList!461 thiss!11199 rules!1093 (list!3895 tokens!410)) lt!376113)))

(declare-fun b!1107816 () Bool)

(declare-fun e!702463 () Bool)

(assert (=> b!1107816 (= e!702464 e!702463)))

(declare-fun res!490542 () Bool)

(assert (=> b!1107816 (=> (not res!490542) (not e!702463))))

(declare-fun rulesProduceIndividualToken!633 (LexerInterface!1581 List!10874 Token!3402) Bool)

(assert (=> b!1107816 (= res!490542 (rulesProduceIndividualToken!633 thiss!11199 rules!1093 (h!16252 (list!3895 tokens!410))))))

(declare-fun b!1107817 () Bool)

(assert (=> b!1107817 (= e!702463 (rulesProduceEachTokenIndividuallyList!461 thiss!11199 rules!1093 (t!105447 (list!3895 tokens!410))))))

(assert (= (and d!313526 (not res!490543)) b!1107816))

(assert (= (and b!1107816 res!490542) b!1107817))

(assert (=> d!313526 m!1264785))

(declare-fun m!1264893 () Bool)

(assert (=> d!313526 m!1264893))

(assert (=> d!313526 m!1264739))

(declare-fun m!1264895 () Bool)

(assert (=> b!1107816 m!1264895))

(declare-fun m!1264897 () Bool)

(assert (=> b!1107817 m!1264897))

(assert (=> b!1107645 d!313526))

(declare-fun d!313550 () Bool)

(declare-fun list!3898 (Conc!3431) List!10875)

(assert (=> d!313550 (= (list!3895 tokens!410) (list!3898 (c!187980 tokens!410)))))

(declare-fun bs!260087 () Bool)

(assert (= bs!260087 d!313550))

(declare-fun m!1264901 () Bool)

(assert (=> bs!260087 m!1264901))

(assert (=> b!1107645 d!313550))

(declare-fun d!313554 () Bool)

(declare-fun res!490550 () Bool)

(declare-fun e!702470 () Bool)

(assert (=> d!313554 (=> (not res!490550) (not e!702470))))

(assert (=> d!313554 (= res!490550 (= (csize!7092 (c!187980 tokens!410)) (+ (size!8420 (left!9410 (c!187980 tokens!410))) (size!8420 (right!9740 (c!187980 tokens!410))))))))

(assert (=> d!313554 (= (inv!13937 (c!187980 tokens!410)) e!702470)))

(declare-fun b!1107831 () Bool)

(declare-fun res!490551 () Bool)

(assert (=> b!1107831 (=> (not res!490551) (not e!702470))))

(assert (=> b!1107831 (= res!490551 (and (not (= (left!9410 (c!187980 tokens!410)) Empty!3431)) (not (= (right!9740 (c!187980 tokens!410)) Empty!3431))))))

(declare-fun b!1107832 () Bool)

(declare-fun res!490552 () Bool)

(assert (=> b!1107832 (=> (not res!490552) (not e!702470))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1107832 (= res!490552 (= (cheight!3642 (c!187980 tokens!410)) (+ (max!0 (height!434 (left!9410 (c!187980 tokens!410))) (height!434 (right!9740 (c!187980 tokens!410)))) 1)))))

(declare-fun b!1107833 () Bool)

(assert (=> b!1107833 (= e!702470 (<= 0 (cheight!3642 (c!187980 tokens!410))))))

(assert (= (and d!313554 res!490550) b!1107831))

(assert (= (and b!1107831 res!490551) b!1107832))

(assert (= (and b!1107832 res!490552) b!1107833))

(declare-fun m!1264903 () Bool)

(assert (=> d!313554 m!1264903))

(declare-fun m!1264905 () Bool)

(assert (=> d!313554 m!1264905))

(assert (=> b!1107832 m!1264859))

(assert (=> b!1107832 m!1264861))

(assert (=> b!1107832 m!1264859))

(assert (=> b!1107832 m!1264861))

(declare-fun m!1264907 () Bool)

(assert (=> b!1107832 m!1264907))

(assert (=> b!1107639 d!313554))

(declare-fun d!313556 () Bool)

(declare-fun res!490557 () Bool)

(declare-fun e!702475 () Bool)

(assert (=> d!313556 (=> res!490557 e!702475)))

(assert (=> d!313556 (= res!490557 (is-Nil!10851 (list!3895 tokens!410)))))

(assert (=> d!313556 (= (forall!2545 (list!3895 tokens!410) lambda!44743) e!702475)))

(declare-fun b!1107838 () Bool)

(declare-fun e!702476 () Bool)

(assert (=> b!1107838 (= e!702475 e!702476)))

(declare-fun res!490558 () Bool)

(assert (=> b!1107838 (=> (not res!490558) (not e!702476))))

(declare-fun dynLambda!4769 (Int Token!3402) Bool)

(assert (=> b!1107838 (= res!490558 (dynLambda!4769 lambda!44743 (h!16252 (list!3895 tokens!410))))))

(declare-fun b!1107839 () Bool)

(assert (=> b!1107839 (= e!702476 (forall!2545 (t!105447 (list!3895 tokens!410)) lambda!44743))))

(assert (= (and d!313556 (not res!490557)) b!1107838))

(assert (= (and b!1107838 res!490558) b!1107839))

(declare-fun b_lambda!32781 () Bool)

(assert (=> (not b_lambda!32781) (not b!1107838)))

(declare-fun m!1264909 () Bool)

(assert (=> b!1107838 m!1264909))

(declare-fun m!1264911 () Bool)

(assert (=> b!1107839 m!1264911))

(assert (=> d!313500 d!313556))

(assert (=> d!313500 d!313550))

(declare-fun d!313558 () Bool)

(declare-fun lt!376116 () Bool)

(assert (=> d!313558 (= lt!376116 (forall!2545 (list!3895 tokens!410) lambda!44743))))

(declare-fun forall!2550 (Conc!3431 Int) Bool)

(assert (=> d!313558 (= lt!376116 (forall!2550 (c!187980 tokens!410) lambda!44743))))

(assert (=> d!313558 (= (forall!2546 tokens!410 lambda!44743) lt!376116)))

(declare-fun bs!260088 () Bool)

(assert (= bs!260088 d!313558))

(assert (=> bs!260088 m!1264785))

(assert (=> bs!260088 m!1264785))

(assert (=> bs!260088 m!1264791))

(declare-fun m!1264913 () Bool)

(assert (=> bs!260088 m!1264913))

(assert (=> d!313500 d!313558))

(assert (=> d!313500 d!313478))

(declare-fun d!313560 () Bool)

(declare-fun lt!376119 () Int)

(assert (=> d!313560 (>= lt!376119 0)))

(declare-fun e!702479 () Int)

(assert (=> d!313560 (= lt!376119 e!702479)))

(declare-fun c!187997 () Bool)

(assert (=> d!313560 (= c!187997 (is-Nil!10851 (list!3895 tokens!410)))))

(assert (=> d!313560 (= (size!8419 (list!3895 tokens!410)) lt!376119)))

(declare-fun b!1107844 () Bool)

(assert (=> b!1107844 (= e!702479 0)))

(declare-fun b!1107845 () Bool)

(assert (=> b!1107845 (= e!702479 (+ 1 (size!8419 (t!105447 (list!3895 tokens!410)))))))

(assert (= (and d!313560 c!187997) b!1107844))

(assert (= (and d!313560 (not c!187997)) b!1107845))

(declare-fun m!1264915 () Bool)

(assert (=> b!1107845 m!1264915))

(assert (=> d!313496 d!313560))

(assert (=> d!313496 d!313550))

(declare-fun d!313562 () Bool)

(declare-fun lt!376122 () Int)

(assert (=> d!313562 (= lt!376122 (size!8419 (list!3898 (c!187980 tokens!410))))))

(assert (=> d!313562 (= lt!376122 (ite (is-Empty!3431 (c!187980 tokens!410)) 0 (ite (is-Leaf!5377 (c!187980 tokens!410)) (csize!7093 (c!187980 tokens!410)) (csize!7092 (c!187980 tokens!410)))))))

(assert (=> d!313562 (= (size!8420 (c!187980 tokens!410)) lt!376122)))

(declare-fun bs!260089 () Bool)

(assert (= bs!260089 d!313562))

(assert (=> bs!260089 m!1264901))

(assert (=> bs!260089 m!1264901))

(declare-fun m!1264917 () Bool)

(assert (=> bs!260089 m!1264917))

(assert (=> d!313496 d!313562))

(declare-fun d!313564 () Bool)

(declare-fun c!187998 () Bool)

(assert (=> d!313564 (= c!187998 (is-Node!3431 (left!9410 (c!187980 tokens!410))))))

(declare-fun e!702480 () Bool)

(assert (=> d!313564 (= (inv!13931 (left!9410 (c!187980 tokens!410))) e!702480)))

(declare-fun b!1107846 () Bool)

(assert (=> b!1107846 (= e!702480 (inv!13937 (left!9410 (c!187980 tokens!410))))))

(declare-fun b!1107847 () Bool)

(declare-fun e!702481 () Bool)

(assert (=> b!1107847 (= e!702480 e!702481)))

(declare-fun res!490559 () Bool)

(assert (=> b!1107847 (= res!490559 (not (is-Leaf!5377 (left!9410 (c!187980 tokens!410)))))))

(assert (=> b!1107847 (=> res!490559 e!702481)))

(declare-fun b!1107848 () Bool)

(assert (=> b!1107848 (= e!702481 (inv!13938 (left!9410 (c!187980 tokens!410))))))

(assert (= (and d!313564 c!187998) b!1107846))

(assert (= (and d!313564 (not c!187998)) b!1107847))

(assert (= (and b!1107847 (not res!490559)) b!1107848))

(declare-fun m!1264919 () Bool)

(assert (=> b!1107846 m!1264919))

(declare-fun m!1264921 () Bool)

(assert (=> b!1107848 m!1264921))

(assert (=> b!1107681 d!313564))

(declare-fun d!313566 () Bool)

(declare-fun c!187999 () Bool)

(assert (=> d!313566 (= c!187999 (is-Node!3431 (right!9740 (c!187980 tokens!410))))))

(declare-fun e!702482 () Bool)

(assert (=> d!313566 (= (inv!13931 (right!9740 (c!187980 tokens!410))) e!702482)))

(declare-fun b!1107849 () Bool)

(assert (=> b!1107849 (= e!702482 (inv!13937 (right!9740 (c!187980 tokens!410))))))

(declare-fun b!1107850 () Bool)

(declare-fun e!702483 () Bool)

(assert (=> b!1107850 (= e!702482 e!702483)))

(declare-fun res!490560 () Bool)

(assert (=> b!1107850 (= res!490560 (not (is-Leaf!5377 (right!9740 (c!187980 tokens!410)))))))

(assert (=> b!1107850 (=> res!490560 e!702483)))

(declare-fun b!1107851 () Bool)

(assert (=> b!1107851 (= e!702483 (inv!13938 (right!9740 (c!187980 tokens!410))))))

(assert (= (and d!313566 c!187999) b!1107849))

(assert (= (and d!313566 (not c!187999)) b!1107850))

(assert (= (and b!1107850 (not res!490560)) b!1107851))

(declare-fun m!1264923 () Bool)

(assert (=> b!1107849 m!1264923))

(declare-fun m!1264925 () Bool)

(assert (=> b!1107851 m!1264925))

(assert (=> b!1107681 d!313566))

(declare-fun b!1107854 () Bool)

(declare-fun b_free!26901 () Bool)

(declare-fun b_next!26965 () Bool)

(assert (=> b!1107854 (= b_free!26901 (not b_next!26965))))

(declare-fun tp!328772 () Bool)

(declare-fun b_and!79221 () Bool)

(assert (=> b!1107854 (= tp!328772 b_and!79221)))

(declare-fun b_free!26903 () Bool)

(declare-fun b_next!26967 () Bool)

(assert (=> b!1107854 (= b_free!26903 (not b_next!26967))))

(declare-fun tp!328773 () Bool)

(declare-fun b_and!79223 () Bool)

(assert (=> b!1107854 (= tp!328773 b_and!79223)))

(declare-fun e!702484 () Bool)

(assert (=> b!1107854 (= e!702484 (and tp!328772 tp!328773))))

(declare-fun b!1107853 () Bool)

(declare-fun e!702487 () Bool)

(declare-fun tp!328771 () Bool)

(assert (=> b!1107853 (= e!702487 (and tp!328771 (inv!13928 (tag!2132 (h!16251 (t!105446 (t!105446 rules!1093))))) (inv!13932 (transformation!1870 (h!16251 (t!105446 (t!105446 rules!1093))))) e!702484))))

(declare-fun b!1107852 () Bool)

(declare-fun e!702485 () Bool)

(declare-fun tp!328774 () Bool)

(assert (=> b!1107852 (= e!702485 (and e!702487 tp!328774))))

(assert (=> b!1107692 (= tp!328734 e!702485)))

(assert (= b!1107853 b!1107854))

(assert (= b!1107852 b!1107853))

(assert (= (and b!1107692 (is-Cons!10850 (t!105446 (t!105446 rules!1093)))) b!1107852))

(declare-fun m!1264927 () Bool)

(assert (=> b!1107853 m!1264927))

(declare-fun m!1264929 () Bool)

(assert (=> b!1107853 m!1264929))

(declare-fun b!1107856 () Bool)

(declare-fun e!702488 () Bool)

(declare-fun tp!328775 () Bool)

(declare-fun tp!328779 () Bool)

(assert (=> b!1107856 (= e!702488 (and tp!328775 tp!328779))))

(assert (=> b!1107670 (= tp!328709 e!702488)))

(declare-fun b!1107855 () Bool)

(assert (=> b!1107855 (= e!702488 tp_is_empty!5719)))

(declare-fun b!1107858 () Bool)

(declare-fun tp!328777 () Bool)

(declare-fun tp!328776 () Bool)

(assert (=> b!1107858 (= e!702488 (and tp!328777 tp!328776))))

(declare-fun b!1107857 () Bool)

(declare-fun tp!328778 () Bool)

(assert (=> b!1107857 (= e!702488 tp!328778)))

(assert (= (and b!1107670 (is-ElementMatch!3140 (regOne!6792 (regex!1870 (h!16251 rules!1093))))) b!1107855))

(assert (= (and b!1107670 (is-Concat!5077 (regOne!6792 (regex!1870 (h!16251 rules!1093))))) b!1107856))

(assert (= (and b!1107670 (is-Star!3140 (regOne!6792 (regex!1870 (h!16251 rules!1093))))) b!1107857))

(assert (= (and b!1107670 (is-Union!3140 (regOne!6792 (regex!1870 (h!16251 rules!1093))))) b!1107858))

(declare-fun b!1107860 () Bool)

(declare-fun e!702489 () Bool)

(declare-fun tp!328780 () Bool)

(declare-fun tp!328784 () Bool)

(assert (=> b!1107860 (= e!702489 (and tp!328780 tp!328784))))

(assert (=> b!1107670 (= tp!328713 e!702489)))

(declare-fun b!1107859 () Bool)

(assert (=> b!1107859 (= e!702489 tp_is_empty!5719)))

(declare-fun b!1107862 () Bool)

(declare-fun tp!328782 () Bool)

(declare-fun tp!328781 () Bool)

(assert (=> b!1107862 (= e!702489 (and tp!328782 tp!328781))))

(declare-fun b!1107861 () Bool)

(declare-fun tp!328783 () Bool)

(assert (=> b!1107861 (= e!702489 tp!328783)))

(assert (= (and b!1107670 (is-ElementMatch!3140 (regTwo!6792 (regex!1870 (h!16251 rules!1093))))) b!1107859))

(assert (= (and b!1107670 (is-Concat!5077 (regTwo!6792 (regex!1870 (h!16251 rules!1093))))) b!1107860))

(assert (= (and b!1107670 (is-Star!3140 (regTwo!6792 (regex!1870 (h!16251 rules!1093))))) b!1107861))

(assert (= (and b!1107670 (is-Union!3140 (regTwo!6792 (regex!1870 (h!16251 rules!1093))))) b!1107862))

(declare-fun b!1107876 () Bool)

(declare-fun b_free!26905 () Bool)

(declare-fun b_next!26969 () Bool)

(assert (=> b!1107876 (= b_free!26905 (not b_next!26969))))

(declare-fun tp!328799 () Bool)

(declare-fun b_and!79225 () Bool)

(assert (=> b!1107876 (= tp!328799 b_and!79225)))

(declare-fun b_free!26907 () Bool)

(declare-fun b_next!26971 () Bool)

(assert (=> b!1107876 (= b_free!26907 (not b_next!26971))))

(declare-fun tp!328797 () Bool)

(declare-fun b_and!79227 () Bool)

(assert (=> b!1107876 (= tp!328797 b_and!79227)))

(declare-fun e!702502 () Bool)

(declare-fun tp!328798 () Bool)

(declare-fun b!1107874 () Bool)

(declare-fun e!702504 () Bool)

(declare-fun inv!21 (TokenValue!1936) Bool)

(assert (=> b!1107874 (= e!702504 (and (inv!21 (value!61293 (h!16252 (innerList!3491 (xs!6124 (c!187980 tokens!410)))))) e!702502 tp!328798))))

(declare-fun e!702505 () Bool)

(assert (=> b!1107876 (= e!702505 (and tp!328799 tp!328797))))

(declare-fun e!702503 () Bool)

(assert (=> b!1107683 (= tp!328721 e!702503)))

(declare-fun tp!328795 () Bool)

(declare-fun b!1107875 () Bool)

(assert (=> b!1107875 (= e!702502 (and tp!328795 (inv!13928 (tag!2132 (rule!3291 (h!16252 (innerList!3491 (xs!6124 (c!187980 tokens!410))))))) (inv!13932 (transformation!1870 (rule!3291 (h!16252 (innerList!3491 (xs!6124 (c!187980 tokens!410))))))) e!702505))))

(declare-fun b!1107873 () Bool)

(declare-fun tp!328796 () Bool)

(declare-fun inv!13943 (Token!3402) Bool)

(assert (=> b!1107873 (= e!702503 (and (inv!13943 (h!16252 (innerList!3491 (xs!6124 (c!187980 tokens!410))))) e!702504 tp!328796))))

(assert (= b!1107875 b!1107876))

(assert (= b!1107874 b!1107875))

(assert (= b!1107873 b!1107874))

(assert (= (and b!1107683 (is-Cons!10851 (innerList!3491 (xs!6124 (c!187980 tokens!410))))) b!1107873))

(declare-fun m!1264931 () Bool)

(assert (=> b!1107874 m!1264931))

(declare-fun m!1264933 () Bool)

(assert (=> b!1107875 m!1264933))

(declare-fun m!1264935 () Bool)

(assert (=> b!1107875 m!1264935))

(declare-fun m!1264937 () Bool)

(assert (=> b!1107873 m!1264937))

(declare-fun b!1107878 () Bool)

(declare-fun e!702508 () Bool)

(declare-fun tp!328800 () Bool)

(declare-fun tp!328804 () Bool)

(assert (=> b!1107878 (= e!702508 (and tp!328800 tp!328804))))

(assert (=> b!1107671 (= tp!328712 e!702508)))

(declare-fun b!1107877 () Bool)

(assert (=> b!1107877 (= e!702508 tp_is_empty!5719)))

(declare-fun b!1107880 () Bool)

(declare-fun tp!328802 () Bool)

(declare-fun tp!328801 () Bool)

(assert (=> b!1107880 (= e!702508 (and tp!328802 tp!328801))))

(declare-fun b!1107879 () Bool)

(declare-fun tp!328803 () Bool)

(assert (=> b!1107879 (= e!702508 tp!328803)))

(assert (= (and b!1107671 (is-ElementMatch!3140 (reg!3469 (regex!1870 (h!16251 rules!1093))))) b!1107877))

(assert (= (and b!1107671 (is-Concat!5077 (reg!3469 (regex!1870 (h!16251 rules!1093))))) b!1107878))

(assert (= (and b!1107671 (is-Star!3140 (reg!3469 (regex!1870 (h!16251 rules!1093))))) b!1107879))

(assert (= (and b!1107671 (is-Union!3140 (reg!3469 (regex!1870 (h!16251 rules!1093))))) b!1107880))

(declare-fun b!1107882 () Bool)

(declare-fun e!702509 () Bool)

(declare-fun tp!328805 () Bool)

(declare-fun tp!328809 () Bool)

(assert (=> b!1107882 (= e!702509 (and tp!328805 tp!328809))))

(assert (=> b!1107693 (= tp!328731 e!702509)))

(declare-fun b!1107881 () Bool)

(assert (=> b!1107881 (= e!702509 tp_is_empty!5719)))

(declare-fun b!1107884 () Bool)

(declare-fun tp!328807 () Bool)

(declare-fun tp!328806 () Bool)

(assert (=> b!1107884 (= e!702509 (and tp!328807 tp!328806))))

(declare-fun b!1107883 () Bool)

(declare-fun tp!328808 () Bool)

(assert (=> b!1107883 (= e!702509 tp!328808)))

(assert (= (and b!1107693 (is-ElementMatch!3140 (regex!1870 (h!16251 (t!105446 rules!1093))))) b!1107881))

(assert (= (and b!1107693 (is-Concat!5077 (regex!1870 (h!16251 (t!105446 rules!1093))))) b!1107882))

(assert (= (and b!1107693 (is-Star!3140 (regex!1870 (h!16251 (t!105446 rules!1093))))) b!1107883))

(assert (= (and b!1107693 (is-Union!3140 (regex!1870 (h!16251 (t!105446 rules!1093))))) b!1107884))

(declare-fun b!1107886 () Bool)

(declare-fun e!702510 () Bool)

(declare-fun tp!328810 () Bool)

(declare-fun tp!328814 () Bool)

(assert (=> b!1107886 (= e!702510 (and tp!328810 tp!328814))))

(assert (=> b!1107672 (= tp!328711 e!702510)))

(declare-fun b!1107885 () Bool)

(assert (=> b!1107885 (= e!702510 tp_is_empty!5719)))

(declare-fun b!1107888 () Bool)

(declare-fun tp!328812 () Bool)

(declare-fun tp!328811 () Bool)

(assert (=> b!1107888 (= e!702510 (and tp!328812 tp!328811))))

(declare-fun b!1107887 () Bool)

(declare-fun tp!328813 () Bool)

(assert (=> b!1107887 (= e!702510 tp!328813)))

(assert (= (and b!1107672 (is-ElementMatch!3140 (regOne!6793 (regex!1870 (h!16251 rules!1093))))) b!1107885))

(assert (= (and b!1107672 (is-Concat!5077 (regOne!6793 (regex!1870 (h!16251 rules!1093))))) b!1107886))

(assert (= (and b!1107672 (is-Star!3140 (regOne!6793 (regex!1870 (h!16251 rules!1093))))) b!1107887))

(assert (= (and b!1107672 (is-Union!3140 (regOne!6793 (regex!1870 (h!16251 rules!1093))))) b!1107888))

(declare-fun b!1107890 () Bool)

(declare-fun e!702511 () Bool)

(declare-fun tp!328815 () Bool)

(declare-fun tp!328819 () Bool)

(assert (=> b!1107890 (= e!702511 (and tp!328815 tp!328819))))

(assert (=> b!1107672 (= tp!328710 e!702511)))

(declare-fun b!1107889 () Bool)

(assert (=> b!1107889 (= e!702511 tp_is_empty!5719)))

(declare-fun b!1107892 () Bool)

(declare-fun tp!328817 () Bool)

(declare-fun tp!328816 () Bool)

(assert (=> b!1107892 (= e!702511 (and tp!328817 tp!328816))))

(declare-fun b!1107891 () Bool)

(declare-fun tp!328818 () Bool)

(assert (=> b!1107891 (= e!702511 tp!328818)))

(assert (= (and b!1107672 (is-ElementMatch!3140 (regTwo!6793 (regex!1870 (h!16251 rules!1093))))) b!1107889))

(assert (= (and b!1107672 (is-Concat!5077 (regTwo!6793 (regex!1870 (h!16251 rules!1093))))) b!1107890))

(assert (= (and b!1107672 (is-Star!3140 (regTwo!6793 (regex!1870 (h!16251 rules!1093))))) b!1107891))

(assert (= (and b!1107672 (is-Union!3140 (regTwo!6793 (regex!1870 (h!16251 rules!1093))))) b!1107892))

(declare-fun b!1107895 () Bool)

(declare-fun e!702514 () Bool)

(assert (=> b!1107895 (= e!702514 true)))

(declare-fun b!1107894 () Bool)

(declare-fun e!702513 () Bool)

(assert (=> b!1107894 (= e!702513 e!702514)))

(declare-fun b!1107893 () Bool)

(declare-fun e!702512 () Bool)

(assert (=> b!1107893 (= e!702512 e!702513)))

(assert (=> b!1107654 e!702512))

(assert (= b!1107894 b!1107895))

(assert (= b!1107893 b!1107894))

(assert (= (and b!1107654 (is-Cons!10850 (t!105446 rules!1093))) b!1107893))

(assert (=> b!1107895 (< (dynLambda!4761 order!6621 (toValue!2947 (transformation!1870 (h!16251 (t!105446 rules!1093))))) (dynLambda!4762 order!6623 lambda!44743))))

(assert (=> b!1107895 (< (dynLambda!4763 order!6625 (toChars!2806 (transformation!1870 (h!16251 (t!105446 rules!1093))))) (dynLambda!4762 order!6623 lambda!44743))))

(declare-fun tp!328820 () Bool)

(declare-fun tp!328822 () Bool)

(declare-fun e!702516 () Bool)

(declare-fun b!1107896 () Bool)

(assert (=> b!1107896 (= e!702516 (and (inv!13931 (left!9410 (left!9410 (c!187980 tokens!410)))) tp!328820 (inv!13931 (right!9740 (left!9410 (c!187980 tokens!410)))) tp!328822))))

(declare-fun b!1107898 () Bool)

(declare-fun e!702515 () Bool)

(declare-fun tp!328821 () Bool)

(assert (=> b!1107898 (= e!702515 tp!328821)))

(declare-fun b!1107897 () Bool)

(assert (=> b!1107897 (= e!702516 (and (inv!13939 (xs!6124 (left!9410 (c!187980 tokens!410)))) e!702515))))

(assert (=> b!1107681 (= tp!328720 (and (inv!13931 (left!9410 (c!187980 tokens!410))) e!702516))))

(assert (= (and b!1107681 (is-Node!3431 (left!9410 (c!187980 tokens!410)))) b!1107896))

(assert (= b!1107897 b!1107898))

(assert (= (and b!1107681 (is-Leaf!5377 (left!9410 (c!187980 tokens!410)))) b!1107897))

(declare-fun m!1264939 () Bool)

(assert (=> b!1107896 m!1264939))

(declare-fun m!1264941 () Bool)

(assert (=> b!1107896 m!1264941))

(declare-fun m!1264943 () Bool)

(assert (=> b!1107897 m!1264943))

(assert (=> b!1107681 m!1264797))

(declare-fun tp!328825 () Bool)

(declare-fun b!1107899 () Bool)

(declare-fun tp!328823 () Bool)

(declare-fun e!702518 () Bool)

(assert (=> b!1107899 (= e!702518 (and (inv!13931 (left!9410 (right!9740 (c!187980 tokens!410)))) tp!328823 (inv!13931 (right!9740 (right!9740 (c!187980 tokens!410)))) tp!328825))))

(declare-fun b!1107901 () Bool)

(declare-fun e!702517 () Bool)

(declare-fun tp!328824 () Bool)

(assert (=> b!1107901 (= e!702517 tp!328824)))

(declare-fun b!1107900 () Bool)

(assert (=> b!1107900 (= e!702518 (and (inv!13939 (xs!6124 (right!9740 (c!187980 tokens!410)))) e!702517))))

(assert (=> b!1107681 (= tp!328722 (and (inv!13931 (right!9740 (c!187980 tokens!410))) e!702518))))

(assert (= (and b!1107681 (is-Node!3431 (right!9740 (c!187980 tokens!410)))) b!1107899))

(assert (= b!1107900 b!1107901))

(assert (= (and b!1107681 (is-Leaf!5377 (right!9740 (c!187980 tokens!410)))) b!1107900))

(declare-fun m!1264945 () Bool)

(assert (=> b!1107899 m!1264945))

(declare-fun m!1264947 () Bool)

(assert (=> b!1107899 m!1264947))

(declare-fun m!1264949 () Bool)

(assert (=> b!1107900 m!1264949))

(assert (=> b!1107681 m!1264799))

(declare-fun b_lambda!32783 () Bool)

(assert (= b_lambda!32781 (or d!313500 b_lambda!32783)))

(declare-fun bs!260090 () Bool)

(declare-fun d!313568 () Bool)

(assert (= bs!260090 (and d!313568 d!313500)))

(assert (=> bs!260090 (= (dynLambda!4769 lambda!44743 (h!16252 (list!3895 tokens!410))) (rulesProduceIndividualToken!633 thiss!11199 rules!1093 (h!16252 (list!3895 tokens!410))))))

(assert (=> bs!260090 m!1264895))

(assert (=> b!1107838 d!313568))

(push 1)

(assert (not b!1107892))

(assert (not b!1107896))

(assert (not b!1107875))

(assert (not b!1107845))

(assert (not b!1107857))

(assert (not b_lambda!32783))

(assert (not b!1107761))

(assert (not b!1107893))

(assert (not b!1107890))

(assert (not b!1107887))

(assert (not b!1107817))

(assert (not b!1107883))

(assert (not b!1107862))

(assert (not b!1107787))

(assert (not b!1107768))

(assert (not b_next!26951))

(assert (not b!1107783))

(assert (not d!313522))

(assert (not b!1107784))

(assert (not b!1107874))

(assert (not b!1107786))

(assert (not b!1107849))

(assert (not bs!260090))

(assert (not b!1107897))

(assert (not b!1107901))

(assert (not b!1107839))

(assert (not b_next!26959))

(assert (not b!1107873))

(assert (not b!1107884))

(assert (not b!1107882))

(assert b_and!79223)

(assert (not b!1107879))

(assert (not b!1107899))

(assert (not b!1107681))

(assert b_and!79205)

(assert (not b_next!26957))

(assert (not d!313558))

(assert (not d!313508))

(assert (not b!1107851))

(assert (not b!1107880))

(assert (not b_next!26967))

(assert (not b!1107846))

(assert (not b!1107760))

(assert (not b!1107755))

(assert (not d!313550))

(assert (not b_next!26949))

(assert (not b!1107900))

(assert (not b!1107782))

(assert (not b!1107818))

(assert (not b!1107891))

(assert (not b_next!26969))

(assert (not d!313526))

(assert b_and!79215)

(assert (not d!313554))

(assert (not d!313510))

(assert (not b!1107888))

(assert tp_is_empty!5719)

(assert (not b!1107852))

(assert (not b!1107858))

(assert (not b_next!26965))

(assert (not b!1107898))

(assert (not d!313562))

(assert (not b!1107785))

(assert (not b!1107853))

(assert b_and!79221)

(assert (not b_next!26971))

(assert (not d!313520))

(assert (not b!1107886))

(assert b_and!79227)

(assert (not b!1107816))

(assert (not d!313518))

(assert (not b!1107861))

(assert (not b!1107860))

(assert (not b!1107856))

(assert (not d!313514))

(assert b_and!79213)

(assert (not b!1107878))

(assert (not b!1107832))

(assert b_and!79207)

(assert (not b!1107848))

(assert b_and!79225)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!26951))

(assert (not b_next!26959))

(assert b_and!79223)

(assert (not b_next!26967))

(assert (not b_next!26949))

(assert (not b_next!26969))

(assert b_and!79215)

(assert (not b_next!26965))

(assert b_and!79227)

(assert b_and!79213)

(assert b_and!79207)

(assert b_and!79225)

(assert b_and!79205)

(assert (not b_next!26957))

(assert b_and!79221)

(assert (not b_next!26971))

(check-sat)

(pop 1)

