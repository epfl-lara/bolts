; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!253840 () Bool)

(assert start!253840)

(declare-fun b!2611507 () Bool)

(declare-fun b_free!73469 () Bool)

(declare-fun b_next!74173 () Bool)

(assert (=> b!2611507 (= b_free!73469 (not b_next!74173))))

(declare-fun tp!829728 () Bool)

(declare-fun b_and!191035 () Bool)

(assert (=> b!2611507 (= tp!829728 b_and!191035)))

(declare-fun b_free!73471 () Bool)

(declare-fun b_next!74175 () Bool)

(assert (=> b!2611507 (= b_free!73471 (not b_next!74175))))

(declare-fun tp!829727 () Bool)

(declare-fun b_and!191037 () Bool)

(assert (=> b!2611507 (= tp!829727 b_and!191037)))

(declare-fun b!2611491 () Bool)

(declare-fun b_free!73473 () Bool)

(declare-fun b_next!74177 () Bool)

(assert (=> b!2611491 (= b_free!73473 (not b_next!74177))))

(declare-fun tp!829734 () Bool)

(declare-fun b_and!191039 () Bool)

(assert (=> b!2611491 (= tp!829734 b_and!191039)))

(declare-fun b_free!73475 () Bool)

(declare-fun b_next!74179 () Bool)

(assert (=> b!2611491 (= b_free!73475 (not b_next!74179))))

(declare-fun tp!829730 () Bool)

(declare-fun b_and!191041 () Bool)

(assert (=> b!2611491 (= tp!829730 b_and!191041)))

(declare-fun bs!473910 () Bool)

(declare-fun b!2611497 () Bool)

(declare-fun b!2611505 () Bool)

(assert (= bs!473910 (and b!2611497 b!2611505)))

(declare-fun lambda!97766 () Int)

(declare-fun lambda!97765 () Int)

(assert (=> bs!473910 (not (= lambda!97766 lambda!97765))))

(declare-fun b!2611518 () Bool)

(declare-fun e!1647811 () Bool)

(assert (=> b!2611518 (= e!1647811 true)))

(declare-fun b!2611517 () Bool)

(declare-fun e!1647810 () Bool)

(assert (=> b!2611517 (= e!1647810 e!1647811)))

(declare-fun b!2611516 () Bool)

(declare-fun e!1647809 () Bool)

(assert (=> b!2611516 (= e!1647809 e!1647810)))

(assert (=> b!2611497 e!1647809))

(assert (= b!2611517 b!2611518))

(assert (= b!2611516 b!2611517))

(declare-datatypes ((List!30291 0))(
  ( (Nil!30191) (Cons!30191 (h!35611 (_ BitVec 16)) (t!214152 List!30291)) )
))
(declare-datatypes ((C!15578 0))(
  ( (C!15579 (val!9723 Int)) )
))
(declare-datatypes ((Regex!7710 0))(
  ( (ElementMatch!7710 (c!419707 C!15578)) (Concat!12498 (regOne!15932 Regex!7710) (regTwo!15932 Regex!7710)) (EmptyExpr!7710) (Star!7710 (reg!8039 Regex!7710)) (EmptyLang!7710) (Union!7710 (regOne!15933 Regex!7710) (regTwo!15933 Regex!7710)) )
))
(declare-datatypes ((TokenValue!4788 0))(
  ( (FloatLiteralValue!9576 (text!33961 List!30291)) (TokenValueExt!4787 (__x!19409 Int)) (Broken!23940 (value!147711 List!30291)) (Object!4887) (End!4788) (Def!4788) (Underscore!4788) (Match!4788) (Else!4788) (Error!4788) (Case!4788) (If!4788) (Extends!4788) (Abstract!4788) (Class!4788) (Val!4788) (DelimiterValue!9576 (del!4848 List!30291)) (KeywordValue!4794 (value!147712 List!30291)) (CommentValue!9576 (value!147713 List!30291)) (WhitespaceValue!9576 (value!147714 List!30291)) (IndentationValue!4788 (value!147715 List!30291)) (String!33825) (Int32!4788) (Broken!23941 (value!147716 List!30291)) (Boolean!4789) (Unit!44163) (OperatorValue!4791 (op!4848 List!30291)) (IdentifierValue!9576 (value!147717 List!30291)) (IdentifierValue!9577 (value!147718 List!30291)) (WhitespaceValue!9577 (value!147719 List!30291)) (True!9576) (False!9576) (Broken!23942 (value!147720 List!30291)) (Broken!23943 (value!147721 List!30291)) (True!9577) (RightBrace!4788) (RightBracket!4788) (Colon!4788) (Null!4788) (Comma!4788) (LeftBracket!4788) (False!9577) (LeftBrace!4788) (ImaginaryLiteralValue!4788 (text!33962 List!30291)) (StringLiteralValue!14364 (value!147722 List!30291)) (EOFValue!4788 (value!147723 List!30291)) (IdentValue!4788 (value!147724 List!30291)) (DelimiterValue!9577 (value!147725 List!30291)) (DedentValue!4788 (value!147726 List!30291)) (NewLineValue!4788 (value!147727 List!30291)) (IntegerValue!14364 (value!147728 (_ BitVec 32)) (text!33963 List!30291)) (IntegerValue!14365 (value!147729 Int) (text!33964 List!30291)) (Times!4788) (Or!4788) (Equal!4788) (Minus!4788) (Broken!23944 (value!147730 List!30291)) (And!4788) (Div!4788) (LessEqual!4788) (Mod!4788) (Concat!12499) (Not!4788) (Plus!4788) (SpaceValue!4788 (value!147731 List!30291)) (IntegerValue!14366 (value!147732 Int) (text!33965 List!30291)) (StringLiteralValue!14365 (text!33966 List!30291)) (FloatLiteralValue!9577 (text!33967 List!30291)) (BytesLiteralValue!4788 (value!147733 List!30291)) (CommentValue!9577 (value!147734 List!30291)) (StringLiteralValue!14366 (value!147735 List!30291)) (ErrorTokenValue!4788 (msg!4849 List!30291)) )
))
(declare-datatypes ((List!30292 0))(
  ( (Nil!30192) (Cons!30192 (h!35612 C!15578) (t!214153 List!30292)) )
))
(declare-datatypes ((IArray!18753 0))(
  ( (IArray!18754 (innerList!9434 List!30292)) )
))
(declare-datatypes ((Conc!9374 0))(
  ( (Node!9374 (left!23235 Conc!9374) (right!23565 Conc!9374) (csize!18978 Int) (cheight!9585 Int)) (Leaf!14398 (xs!12358 IArray!18753) (csize!18979 Int)) (Empty!9374) )
))
(declare-datatypes ((BalanceConc!18362 0))(
  ( (BalanceConc!18363 (c!419708 Conc!9374)) )
))
(declare-datatypes ((TokenValueInjection!9016 0))(
  ( (TokenValueInjection!9017 (toValue!6468 Int) (toChars!6327 Int)) )
))
(declare-datatypes ((String!33826 0))(
  ( (String!33827 (value!147736 String)) )
))
(declare-datatypes ((Rule!8932 0))(
  ( (Rule!8933 (regex!4566 Regex!7710) (tag!5056 String!33826) (isSeparator!4566 Bool) (transformation!4566 TokenValueInjection!9016)) )
))
(declare-datatypes ((List!30293 0))(
  ( (Nil!30193) (Cons!30193 (h!35613 Rule!8932) (t!214154 List!30293)) )
))
(declare-fun rules!1726 () List!30293)

(assert (= (and b!2611497 (is-Cons!30193 rules!1726)) b!2611516))

(declare-fun order!16067 () Int)

(declare-fun order!16065 () Int)

(declare-fun dynLambda!12790 (Int Int) Int)

(declare-fun dynLambda!12791 (Int Int) Int)

(assert (=> b!2611518 (< (dynLambda!12790 order!16065 (toValue!6468 (transformation!4566 (h!35613 rules!1726)))) (dynLambda!12791 order!16067 lambda!97766))))

(declare-fun order!16069 () Int)

(declare-fun dynLambda!12792 (Int Int) Int)

(assert (=> b!2611518 (< (dynLambda!12792 order!16069 (toChars!6327 (transformation!4566 (h!35613 rules!1726)))) (dynLambda!12791 order!16067 lambda!97766))))

(assert (=> b!2611497 true))

(declare-fun b!2611489 () Bool)

(declare-fun res!1099283 () Bool)

(declare-fun e!1647795 () Bool)

(assert (=> b!2611489 (=> (not res!1099283) (not e!1647795))))

(declare-datatypes ((LexerInterface!4163 0))(
  ( (LexerInterfaceExt!4160 (__x!19410 Int)) (Lexer!4161) )
))
(declare-fun thiss!14197 () LexerInterface!4163)

(declare-datatypes ((Token!8602 0))(
  ( (Token!8603 (value!147737 TokenValue!4788) (rule!6936 Rule!8932) (size!23370 Int) (originalCharacters!5332 List!30292)) )
))
(declare-fun separatorToken!156 () Token!8602)

(declare-fun rulesProduceIndividualToken!1875 (LexerInterface!4163 List!30293 Token!8602) Bool)

(assert (=> b!2611489 (= res!1099283 (rulesProduceIndividualToken!1875 thiss!14197 rules!1726 separatorToken!156))))

(declare-fun tp!829731 () Bool)

(declare-fun b!2611490 () Bool)

(declare-fun e!1647798 () Bool)

(declare-fun e!1647794 () Bool)

(declare-fun inv!21 (TokenValue!4788) Bool)

(assert (=> b!2611490 (= e!1647798 (and (inv!21 (value!147737 separatorToken!156)) e!1647794 tp!829731))))

(declare-fun e!1647796 () Bool)

(assert (=> b!2611491 (= e!1647796 (and tp!829734 tp!829730))))

(declare-fun b!2611492 () Bool)

(declare-fun e!1647799 () Bool)

(declare-fun tp!829729 () Bool)

(declare-fun e!1647789 () Bool)

(declare-fun inv!40858 (String!33826) Bool)

(declare-fun inv!40861 (TokenValueInjection!9016) Bool)

(assert (=> b!2611492 (= e!1647789 (and tp!829729 (inv!40858 (tag!5056 (h!35613 rules!1726))) (inv!40861 (transformation!4566 (h!35613 rules!1726))) e!1647799))))

(declare-fun b!2611493 () Bool)

(declare-fun res!1099293 () Bool)

(assert (=> b!2611493 (=> (not res!1099293) (not e!1647795))))

(assert (=> b!2611493 (= res!1099293 (isSeparator!4566 (rule!6936 separatorToken!156)))))

(declare-fun b!2611494 () Bool)

(declare-fun res!1099285 () Bool)

(assert (=> b!2611494 (=> (not res!1099285) (not e!1647795))))

(declare-fun rulesInvariant!3663 (LexerInterface!4163 List!30293) Bool)

(assert (=> b!2611494 (= res!1099285 (rulesInvariant!3663 thiss!14197 rules!1726))))

(declare-fun b!2611495 () Bool)

(declare-fun e!1647791 () Bool)

(declare-fun e!1647800 () Bool)

(assert (=> b!2611495 (= e!1647791 (not e!1647800))))

(declare-fun res!1099288 () Bool)

(assert (=> b!2611495 (=> res!1099288 e!1647800)))

(declare-datatypes ((List!30294 0))(
  ( (Nil!30194) (Cons!30194 (h!35614 Token!8602) (t!214155 List!30294)) )
))
(declare-datatypes ((IArray!18755 0))(
  ( (IArray!18756 (innerList!9435 List!30294)) )
))
(declare-datatypes ((Conc!9375 0))(
  ( (Node!9375 (left!23236 Conc!9375) (right!23566 Conc!9375) (csize!18980 Int) (cheight!9586 Int)) (Leaf!14399 (xs!12359 IArray!18755) (csize!18981 Int)) (Empty!9375) )
))
(declare-datatypes ((BalanceConc!18364 0))(
  ( (BalanceConc!18365 (c!419709 Conc!9375)) )
))
(declare-fun v!6381 () BalanceConc!18364)

(declare-fun lt!917632 () Token!8602)

(declare-fun contains!5608 (BalanceConc!18364 Token!8602) Bool)

(assert (=> b!2611495 (= res!1099288 (not (contains!5608 v!6381 lt!917632)))))

(declare-fun from!862 () Int)

(declare-fun apply!7094 (BalanceConc!18364 Int) Token!8602)

(assert (=> b!2611495 (= lt!917632 (apply!7094 v!6381 from!862))))

(declare-fun lt!917634 () List!30294)

(declare-fun lt!917628 () List!30294)

(declare-fun tail!4199 (List!30294) List!30294)

(declare-fun drop!1562 (List!30294 Int) List!30294)

(assert (=> b!2611495 (= (tail!4199 lt!917634) (drop!1562 lt!917628 (+ 1 from!862)))))

(declare-datatypes ((Unit!44164 0))(
  ( (Unit!44165) )
))
(declare-fun lt!917631 () Unit!44164)

(declare-fun lemmaDropTail!751 (List!30294 Int) Unit!44164)

(assert (=> b!2611495 (= lt!917631 (lemmaDropTail!751 lt!917628 from!862))))

(declare-fun head!5961 (List!30294) Token!8602)

(declare-fun apply!7095 (List!30294 Int) Token!8602)

(assert (=> b!2611495 (= (head!5961 lt!917634) (apply!7095 lt!917628 from!862))))

(assert (=> b!2611495 (= lt!917634 (drop!1562 lt!917628 from!862))))

(declare-fun lt!917627 () Unit!44164)

(declare-fun lemmaDropApply!777 (List!30294 Int) Unit!44164)

(assert (=> b!2611495 (= lt!917627 (lemmaDropApply!777 lt!917628 from!862))))

(declare-fun tp!829733 () Bool)

(declare-fun b!2611496 () Bool)

(assert (=> b!2611496 (= e!1647794 (and tp!829733 (inv!40858 (tag!5056 (rule!6936 separatorToken!156))) (inv!40861 (transformation!4566 (rule!6936 separatorToken!156))) e!1647796))))

(declare-fun res!1099290 () Bool)

(declare-fun e!1647801 () Bool)

(assert (=> start!253840 (=> (not res!1099290) (not e!1647801))))

(assert (=> start!253840 (= res!1099290 (and (is-Lexer!4161 thiss!14197) (>= from!862 0)))))

(assert (=> start!253840 e!1647801))

(assert (=> start!253840 true))

(declare-fun e!1647793 () Bool)

(assert (=> start!253840 e!1647793))

(declare-fun inv!40862 (Token!8602) Bool)

(assert (=> start!253840 (and (inv!40862 separatorToken!156) e!1647798)))

(declare-fun e!1647792 () Bool)

(declare-fun inv!40863 (BalanceConc!18364) Bool)

(assert (=> start!253840 (and (inv!40863 v!6381) e!1647792)))

(declare-fun rulesValidInductive!1600 (LexerInterface!4163 List!30293) Bool)

(assert (=> b!2611497 (= e!1647800 (rulesValidInductive!1600 thiss!14197 rules!1726))))

(declare-fun lt!917626 () BalanceConc!18362)

(declare-fun ++!7326 (BalanceConc!18362 BalanceConc!18362) BalanceConc!18362)

(declare-fun charsOf!2857 (Token!8602) BalanceConc!18362)

(declare-fun printWithSeparatorTokenWhenNeededRec!441 (LexerInterface!4163 List!30293 BalanceConc!18364 Token!8602 Int) BalanceConc!18362)

(assert (=> b!2611497 (= lt!917626 (++!7326 (charsOf!2857 lt!917632) (printWithSeparatorTokenWhenNeededRec!441 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862))))))

(declare-fun lt!917630 () Unit!44164)

(declare-fun forallContained!922 (List!30294 Int Token!8602) Unit!44164)

(assert (=> b!2611497 (= lt!917630 (forallContained!922 lt!917628 lambda!97766 lt!917632))))

(declare-fun b!2611498 () Bool)

(declare-fun res!1099284 () Bool)

(assert (=> b!2611498 (=> (not res!1099284) (not e!1647795))))

(declare-fun sepAndNonSepRulesDisjointChars!1139 (List!30293 List!30293) Bool)

(assert (=> b!2611498 (= res!1099284 (sepAndNonSepRulesDisjointChars!1139 rules!1726 rules!1726))))

(declare-fun b!2611499 () Bool)

(assert (=> b!2611499 (= e!1647795 e!1647791)))

(declare-fun res!1099289 () Bool)

(assert (=> b!2611499 (=> (not res!1099289) (not e!1647791))))

(declare-fun lt!917629 () Int)

(assert (=> b!2611499 (= res!1099289 (< from!862 lt!917629))))

(declare-fun lt!917633 () Unit!44164)

(declare-fun lemmaContentSubsetPreservesForall!235 (List!30294 List!30294 Int) Unit!44164)

(declare-fun dropList!869 (BalanceConc!18364 Int) List!30294)

(assert (=> b!2611499 (= lt!917633 (lemmaContentSubsetPreservesForall!235 lt!917628 (dropList!869 v!6381 from!862) lambda!97765))))

(declare-fun list!11328 (BalanceConc!18364) List!30294)

(assert (=> b!2611499 (= lt!917628 (list!11328 v!6381))))

(declare-fun b!2611500 () Bool)

(assert (=> b!2611500 (= e!1647801 e!1647795)))

(declare-fun res!1099286 () Bool)

(assert (=> b!2611500 (=> (not res!1099286) (not e!1647795))))

(assert (=> b!2611500 (= res!1099286 (<= from!862 lt!917629))))

(declare-fun size!23371 (BalanceConc!18364) Int)

(assert (=> b!2611500 (= lt!917629 (size!23371 v!6381))))

(declare-fun b!2611501 () Bool)

(declare-fun res!1099292 () Bool)

(assert (=> b!2611501 (=> res!1099292 e!1647800)))

(declare-fun contains!5609 (List!30294 Token!8602) Bool)

(assert (=> b!2611501 (= res!1099292 (not (contains!5609 lt!917628 lt!917632)))))

(declare-fun b!2611502 () Bool)

(declare-fun tp!829735 () Bool)

(assert (=> b!2611502 (= e!1647793 (and e!1647789 tp!829735))))

(declare-fun b!2611503 () Bool)

(declare-fun res!1099282 () Bool)

(assert (=> b!2611503 (=> (not res!1099282) (not e!1647795))))

(declare-fun rulesProduceEachTokenIndividually!983 (LexerInterface!4163 List!30293 BalanceConc!18364) Bool)

(assert (=> b!2611503 (= res!1099282 (rulesProduceEachTokenIndividually!983 thiss!14197 rules!1726 v!6381))))

(declare-fun b!2611504 () Bool)

(declare-fun tp!829732 () Bool)

(declare-fun inv!40864 (Conc!9375) Bool)

(assert (=> b!2611504 (= e!1647792 (and (inv!40864 (c!419709 v!6381)) tp!829732))))

(declare-fun res!1099291 () Bool)

(assert (=> b!2611505 (=> (not res!1099291) (not e!1647795))))

(declare-fun forall!6262 (BalanceConc!18364 Int) Bool)

(assert (=> b!2611505 (= res!1099291 (forall!6262 v!6381 lambda!97765))))

(declare-fun b!2611506 () Bool)

(declare-fun res!1099287 () Bool)

(assert (=> b!2611506 (=> (not res!1099287) (not e!1647795))))

(declare-fun isEmpty!17243 (List!30293) Bool)

(assert (=> b!2611506 (= res!1099287 (not (isEmpty!17243 rules!1726)))))

(assert (=> b!2611507 (= e!1647799 (and tp!829728 tp!829727))))

(assert (= (and start!253840 res!1099290) b!2611500))

(assert (= (and b!2611500 res!1099286) b!2611506))

(assert (= (and b!2611506 res!1099287) b!2611494))

(assert (= (and b!2611494 res!1099285) b!2611503))

(assert (= (and b!2611503 res!1099282) b!2611489))

(assert (= (and b!2611489 res!1099283) b!2611493))

(assert (= (and b!2611493 res!1099293) b!2611505))

(assert (= (and b!2611505 res!1099291) b!2611498))

(assert (= (and b!2611498 res!1099284) b!2611499))

(assert (= (and b!2611499 res!1099289) b!2611495))

(assert (= (and b!2611495 (not res!1099288)) b!2611501))

(assert (= (and b!2611501 (not res!1099292)) b!2611497))

(assert (= b!2611492 b!2611507))

(assert (= b!2611502 b!2611492))

(assert (= (and start!253840 (is-Cons!30193 rules!1726)) b!2611502))

(assert (= b!2611496 b!2611491))

(assert (= b!2611490 b!2611496))

(assert (= start!253840 b!2611490))

(assert (= start!253840 b!2611504))

(declare-fun m!2945949 () Bool)

(assert (=> b!2611489 m!2945949))

(declare-fun m!2945951 () Bool)

(assert (=> b!2611505 m!2945951))

(declare-fun m!2945953 () Bool)

(assert (=> b!2611506 m!2945953))

(declare-fun m!2945955 () Bool)

(assert (=> b!2611490 m!2945955))

(declare-fun m!2945957 () Bool)

(assert (=> b!2611503 m!2945957))

(declare-fun m!2945959 () Bool)

(assert (=> b!2611504 m!2945959))

(declare-fun m!2945961 () Bool)

(assert (=> b!2611501 m!2945961))

(declare-fun m!2945963 () Bool)

(assert (=> start!253840 m!2945963))

(declare-fun m!2945965 () Bool)

(assert (=> start!253840 m!2945965))

(declare-fun m!2945967 () Bool)

(assert (=> b!2611500 m!2945967))

(declare-fun m!2945969 () Bool)

(assert (=> b!2611495 m!2945969))

(declare-fun m!2945971 () Bool)

(assert (=> b!2611495 m!2945971))

(declare-fun m!2945973 () Bool)

(assert (=> b!2611495 m!2945973))

(declare-fun m!2945975 () Bool)

(assert (=> b!2611495 m!2945975))

(declare-fun m!2945977 () Bool)

(assert (=> b!2611495 m!2945977))

(declare-fun m!2945979 () Bool)

(assert (=> b!2611495 m!2945979))

(declare-fun m!2945981 () Bool)

(assert (=> b!2611495 m!2945981))

(declare-fun m!2945983 () Bool)

(assert (=> b!2611495 m!2945983))

(declare-fun m!2945985 () Bool)

(assert (=> b!2611495 m!2945985))

(declare-fun m!2945987 () Bool)

(assert (=> b!2611499 m!2945987))

(assert (=> b!2611499 m!2945987))

(declare-fun m!2945989 () Bool)

(assert (=> b!2611499 m!2945989))

(declare-fun m!2945991 () Bool)

(assert (=> b!2611499 m!2945991))

(declare-fun m!2945993 () Bool)

(assert (=> b!2611494 m!2945993))

(declare-fun m!2945995 () Bool)

(assert (=> b!2611498 m!2945995))

(declare-fun m!2945997 () Bool)

(assert (=> b!2611492 m!2945997))

(declare-fun m!2945999 () Bool)

(assert (=> b!2611492 m!2945999))

(declare-fun m!2946001 () Bool)

(assert (=> b!2611497 m!2946001))

(declare-fun m!2946003 () Bool)

(assert (=> b!2611497 m!2946003))

(assert (=> b!2611497 m!2946001))

(assert (=> b!2611497 m!2946003))

(declare-fun m!2946005 () Bool)

(assert (=> b!2611497 m!2946005))

(declare-fun m!2946007 () Bool)

(assert (=> b!2611497 m!2946007))

(declare-fun m!2946009 () Bool)

(assert (=> b!2611497 m!2946009))

(declare-fun m!2946011 () Bool)

(assert (=> b!2611496 m!2946011))

(declare-fun m!2946013 () Bool)

(assert (=> b!2611496 m!2946013))

(push 1)

(assert (not b_next!74179))

(assert (not b!2611495))

(assert (not b!2611506))

(assert (not b!2611494))

(assert (not start!253840))

(assert (not b!2611496))

(assert b_and!191035)

(assert (not b!2611500))

(assert (not b!2611490))

(assert (not b!2611497))

(assert (not b!2611498))

(assert (not b_next!74175))

(assert b_and!191041)

(assert (not b!2611489))

(assert b_and!191037)

(assert (not b!2611502))

(assert (not b_next!74177))

(assert (not b!2611492))

(assert b_and!191039)

(assert (not b!2611516))

(assert (not b!2611503))

(assert (not b!2611505))

(assert (not b!2611499))

(assert (not b_next!74173))

(assert (not b!2611504))

(assert (not b!2611501))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!74179))

(assert b_and!191037)

(assert (not b_next!74177))

(assert b_and!191039)

(assert b_and!191035)

(assert (not b_next!74173))

(assert (not b_next!74175))

(assert b_and!191041)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!739770 () Bool)

(assert (=> d!739770 (= (tail!4199 (drop!1562 lt!917628 from!862)) (drop!1562 lt!917628 (+ from!862 1)))))

(declare-fun lt!917664 () Unit!44164)

(declare-fun choose!15496 (List!30294 Int) Unit!44164)

(assert (=> d!739770 (= lt!917664 (choose!15496 lt!917628 from!862))))

(declare-fun e!1647865 () Bool)

(assert (=> d!739770 e!1647865))

(declare-fun res!1099337 () Bool)

(assert (=> d!739770 (=> (not res!1099337) (not e!1647865))))

(assert (=> d!739770 (= res!1099337 (>= from!862 0))))

(assert (=> d!739770 (= (lemmaDropTail!751 lt!917628 from!862) lt!917664)))

(declare-fun b!2611593 () Bool)

(declare-fun size!23374 (List!30294) Int)

(assert (=> b!2611593 (= e!1647865 (< from!862 (size!23374 lt!917628)))))

(assert (= (and d!739770 res!1099337) b!2611593))

(assert (=> d!739770 m!2945981))

(assert (=> d!739770 m!2945981))

(declare-fun m!2946081 () Bool)

(assert (=> d!739770 m!2946081))

(declare-fun m!2946083 () Bool)

(assert (=> d!739770 m!2946083))

(declare-fun m!2946085 () Bool)

(assert (=> d!739770 m!2946085))

(declare-fun m!2946087 () Bool)

(assert (=> b!2611593 m!2946087))

(assert (=> b!2611495 d!739770))

(declare-fun d!739772 () Bool)

(assert (=> d!739772 (= (tail!4199 lt!917634) (t!214155 lt!917634))))

(assert (=> b!2611495 d!739772))

(declare-fun d!739774 () Bool)

(assert (=> d!739774 (= (head!5961 lt!917634) (h!35614 lt!917634))))

(assert (=> b!2611495 d!739774))

(declare-fun b!2611612 () Bool)

(declare-fun e!1647878 () List!30294)

(assert (=> b!2611612 (= e!1647878 Nil!30194)))

(declare-fun d!739776 () Bool)

(declare-fun e!1647880 () Bool)

(assert (=> d!739776 e!1647880))

(declare-fun res!1099340 () Bool)

(assert (=> d!739776 (=> (not res!1099340) (not e!1647880))))

(declare-fun lt!917667 () List!30294)

(declare-fun content!4276 (List!30294) (Set Token!8602))

(assert (=> d!739776 (= res!1099340 (set.subset (content!4276 lt!917667) (content!4276 lt!917628)))))

(assert (=> d!739776 (= lt!917667 e!1647878)))

(declare-fun c!419721 () Bool)

(assert (=> d!739776 (= c!419721 (is-Nil!30194 lt!917628))))

(assert (=> d!739776 (= (drop!1562 lt!917628 (+ 1 from!862)) lt!917667)))

(declare-fun bm!167536 () Bool)

(declare-fun call!167541 () Int)

(assert (=> bm!167536 (= call!167541 (size!23374 lt!917628))))

(declare-fun b!2611613 () Bool)

(declare-fun e!1647879 () Int)

(assert (=> b!2611613 (= e!1647879 call!167541)))

(declare-fun b!2611614 () Bool)

(declare-fun e!1647877 () Int)

(assert (=> b!2611614 (= e!1647879 e!1647877)))

(declare-fun c!419722 () Bool)

(assert (=> b!2611614 (= c!419722 (>= (+ 1 from!862) call!167541))))

(declare-fun b!2611615 () Bool)

(assert (=> b!2611615 (= e!1647877 (- call!167541 (+ 1 from!862)))))

(declare-fun b!2611616 () Bool)

(declare-fun e!1647876 () List!30294)

(assert (=> b!2611616 (= e!1647876 lt!917628)))

(declare-fun b!2611617 () Bool)

(assert (=> b!2611617 (= e!1647880 (= (size!23374 lt!917667) e!1647879))))

(declare-fun c!419724 () Bool)

(assert (=> b!2611617 (= c!419724 (<= (+ 1 from!862) 0))))

(declare-fun b!2611618 () Bool)

(assert (=> b!2611618 (= e!1647877 0)))

(declare-fun b!2611619 () Bool)

(assert (=> b!2611619 (= e!1647876 (drop!1562 (t!214155 lt!917628) (- (+ 1 from!862) 1)))))

(declare-fun b!2611620 () Bool)

(assert (=> b!2611620 (= e!1647878 e!1647876)))

(declare-fun c!419723 () Bool)

(assert (=> b!2611620 (= c!419723 (<= (+ 1 from!862) 0))))

(assert (= (and d!739776 c!419721) b!2611612))

(assert (= (and d!739776 (not c!419721)) b!2611620))

(assert (= (and b!2611620 c!419723) b!2611616))

(assert (= (and b!2611620 (not c!419723)) b!2611619))

(assert (= (and d!739776 res!1099340) b!2611617))

(assert (= (and b!2611617 c!419724) b!2611613))

(assert (= (and b!2611617 (not c!419724)) b!2611614))

(assert (= (and b!2611614 c!419722) b!2611618))

(assert (= (and b!2611614 (not c!419722)) b!2611615))

(assert (= (or b!2611613 b!2611614 b!2611615) bm!167536))

(declare-fun m!2946089 () Bool)

(assert (=> d!739776 m!2946089))

(declare-fun m!2946091 () Bool)

(assert (=> d!739776 m!2946091))

(assert (=> bm!167536 m!2946087))

(declare-fun m!2946093 () Bool)

(assert (=> b!2611617 m!2946093))

(declare-fun m!2946095 () Bool)

(assert (=> b!2611619 m!2946095))

(assert (=> b!2611495 d!739776))

(declare-fun d!739778 () Bool)

(declare-fun lt!917670 () Bool)

(assert (=> d!739778 (= lt!917670 (contains!5609 (list!11328 v!6381) lt!917632))))

(declare-fun contains!5612 (Conc!9375 Token!8602) Bool)

(assert (=> d!739778 (= lt!917670 (contains!5612 (c!419709 v!6381) lt!917632))))

(assert (=> d!739778 (= (contains!5608 v!6381 lt!917632) lt!917670)))

(declare-fun bs!473912 () Bool)

(assert (= bs!473912 d!739778))

(assert (=> bs!473912 m!2945991))

(assert (=> bs!473912 m!2945991))

(declare-fun m!2946097 () Bool)

(assert (=> bs!473912 m!2946097))

(declare-fun m!2946099 () Bool)

(assert (=> bs!473912 m!2946099))

(assert (=> b!2611495 d!739778))

(declare-fun d!739780 () Bool)

(declare-fun lt!917673 () Token!8602)

(assert (=> d!739780 (contains!5609 lt!917628 lt!917673)))

(declare-fun e!1647885 () Token!8602)

(assert (=> d!739780 (= lt!917673 e!1647885)))

(declare-fun c!419727 () Bool)

(assert (=> d!739780 (= c!419727 (= from!862 0))))

(declare-fun e!1647886 () Bool)

(assert (=> d!739780 e!1647886))

(declare-fun res!1099343 () Bool)

(assert (=> d!739780 (=> (not res!1099343) (not e!1647886))))

(assert (=> d!739780 (= res!1099343 (<= 0 from!862))))

(assert (=> d!739780 (= (apply!7095 lt!917628 from!862) lt!917673)))

(declare-fun b!2611627 () Bool)

(assert (=> b!2611627 (= e!1647886 (< from!862 (size!23374 lt!917628)))))

(declare-fun b!2611628 () Bool)

(assert (=> b!2611628 (= e!1647885 (head!5961 lt!917628))))

(declare-fun b!2611629 () Bool)

(assert (=> b!2611629 (= e!1647885 (apply!7095 (tail!4199 lt!917628) (- from!862 1)))))

(assert (= (and d!739780 res!1099343) b!2611627))

(assert (= (and d!739780 c!419727) b!2611628))

(assert (= (and d!739780 (not c!419727)) b!2611629))

(declare-fun m!2946101 () Bool)

(assert (=> d!739780 m!2946101))

(assert (=> b!2611627 m!2946087))

(declare-fun m!2946103 () Bool)

(assert (=> b!2611628 m!2946103))

(declare-fun m!2946105 () Bool)

(assert (=> b!2611629 m!2946105))

(assert (=> b!2611629 m!2946105))

(declare-fun m!2946107 () Bool)

(assert (=> b!2611629 m!2946107))

(assert (=> b!2611495 d!739780))

(declare-fun d!739782 () Bool)

(declare-fun lt!917676 () Token!8602)

(assert (=> d!739782 (= lt!917676 (apply!7095 (list!11328 v!6381) from!862))))

(declare-fun apply!7098 (Conc!9375 Int) Token!8602)

(assert (=> d!739782 (= lt!917676 (apply!7098 (c!419709 v!6381) from!862))))

(declare-fun e!1647889 () Bool)

(assert (=> d!739782 e!1647889))

(declare-fun res!1099346 () Bool)

(assert (=> d!739782 (=> (not res!1099346) (not e!1647889))))

(assert (=> d!739782 (= res!1099346 (<= 0 from!862))))

(assert (=> d!739782 (= (apply!7094 v!6381 from!862) lt!917676)))

(declare-fun b!2611632 () Bool)

(assert (=> b!2611632 (= e!1647889 (< from!862 (size!23371 v!6381)))))

(assert (= (and d!739782 res!1099346) b!2611632))

(assert (=> d!739782 m!2945991))

(assert (=> d!739782 m!2945991))

(declare-fun m!2946109 () Bool)

(assert (=> d!739782 m!2946109))

(declare-fun m!2946111 () Bool)

(assert (=> d!739782 m!2946111))

(assert (=> b!2611632 m!2945967))

(assert (=> b!2611495 d!739782))

(declare-fun d!739784 () Bool)

(assert (=> d!739784 (= (head!5961 (drop!1562 lt!917628 from!862)) (apply!7095 lt!917628 from!862))))

(declare-fun lt!917679 () Unit!44164)

(declare-fun choose!15497 (List!30294 Int) Unit!44164)

(assert (=> d!739784 (= lt!917679 (choose!15497 lt!917628 from!862))))

(declare-fun e!1647892 () Bool)

(assert (=> d!739784 e!1647892))

(declare-fun res!1099349 () Bool)

(assert (=> d!739784 (=> (not res!1099349) (not e!1647892))))

(assert (=> d!739784 (= res!1099349 (>= from!862 0))))

(assert (=> d!739784 (= (lemmaDropApply!777 lt!917628 from!862) lt!917679)))

(declare-fun b!2611635 () Bool)

(assert (=> b!2611635 (= e!1647892 (< from!862 (size!23374 lt!917628)))))

(assert (= (and d!739784 res!1099349) b!2611635))

(assert (=> d!739784 m!2945981))

(assert (=> d!739784 m!2945981))

(declare-fun m!2946113 () Bool)

(assert (=> d!739784 m!2946113))

(assert (=> d!739784 m!2945983))

(declare-fun m!2946115 () Bool)

(assert (=> d!739784 m!2946115))

(assert (=> b!2611635 m!2946087))

(assert (=> b!2611495 d!739784))

(declare-fun b!2611636 () Bool)

(declare-fun e!1647895 () List!30294)

(assert (=> b!2611636 (= e!1647895 Nil!30194)))

(declare-fun d!739786 () Bool)

(declare-fun e!1647897 () Bool)

(assert (=> d!739786 e!1647897))

(declare-fun res!1099350 () Bool)

(assert (=> d!739786 (=> (not res!1099350) (not e!1647897))))

(declare-fun lt!917680 () List!30294)

(assert (=> d!739786 (= res!1099350 (set.subset (content!4276 lt!917680) (content!4276 lt!917628)))))

(assert (=> d!739786 (= lt!917680 e!1647895)))

(declare-fun c!419728 () Bool)

(assert (=> d!739786 (= c!419728 (is-Nil!30194 lt!917628))))

(assert (=> d!739786 (= (drop!1562 lt!917628 from!862) lt!917680)))

(declare-fun bm!167537 () Bool)

(declare-fun call!167542 () Int)

(assert (=> bm!167537 (= call!167542 (size!23374 lt!917628))))

(declare-fun b!2611637 () Bool)

(declare-fun e!1647896 () Int)

(assert (=> b!2611637 (= e!1647896 call!167542)))

(declare-fun b!2611638 () Bool)

(declare-fun e!1647894 () Int)

(assert (=> b!2611638 (= e!1647896 e!1647894)))

(declare-fun c!419729 () Bool)

(assert (=> b!2611638 (= c!419729 (>= from!862 call!167542))))

(declare-fun b!2611639 () Bool)

(assert (=> b!2611639 (= e!1647894 (- call!167542 from!862))))

(declare-fun b!2611640 () Bool)

(declare-fun e!1647893 () List!30294)

(assert (=> b!2611640 (= e!1647893 lt!917628)))

(declare-fun b!2611641 () Bool)

(assert (=> b!2611641 (= e!1647897 (= (size!23374 lt!917680) e!1647896))))

(declare-fun c!419731 () Bool)

(assert (=> b!2611641 (= c!419731 (<= from!862 0))))

(declare-fun b!2611642 () Bool)

(assert (=> b!2611642 (= e!1647894 0)))

(declare-fun b!2611643 () Bool)

(assert (=> b!2611643 (= e!1647893 (drop!1562 (t!214155 lt!917628) (- from!862 1)))))

(declare-fun b!2611644 () Bool)

(assert (=> b!2611644 (= e!1647895 e!1647893)))

(declare-fun c!419730 () Bool)

(assert (=> b!2611644 (= c!419730 (<= from!862 0))))

(assert (= (and d!739786 c!419728) b!2611636))

(assert (= (and d!739786 (not c!419728)) b!2611644))

(assert (= (and b!2611644 c!419730) b!2611640))

(assert (= (and b!2611644 (not c!419730)) b!2611643))

(assert (= (and d!739786 res!1099350) b!2611641))

(assert (= (and b!2611641 c!419731) b!2611637))

(assert (= (and b!2611641 (not c!419731)) b!2611638))

(assert (= (and b!2611638 c!419729) b!2611642))

(assert (= (and b!2611638 (not c!419729)) b!2611639))

(assert (= (or b!2611637 b!2611638 b!2611639) bm!167537))

(declare-fun m!2946117 () Bool)

(assert (=> d!739786 m!2946117))

(assert (=> d!739786 m!2946091))

(assert (=> bm!167537 m!2946087))

(declare-fun m!2946119 () Bool)

(assert (=> b!2611641 m!2946119))

(declare-fun m!2946121 () Bool)

(assert (=> b!2611643 m!2946121))

(assert (=> b!2611495 d!739786))

(declare-fun d!739788 () Bool)

(assert (=> d!739788 (= (isEmpty!17243 rules!1726) (is-Nil!30193 rules!1726))))

(assert (=> b!2611506 d!739788))

(declare-fun d!739790 () Bool)

(declare-fun c!419734 () Bool)

(assert (=> d!739790 (= c!419734 (is-Node!9375 (c!419709 v!6381)))))

(declare-fun e!1647902 () Bool)

(assert (=> d!739790 (= (inv!40864 (c!419709 v!6381)) e!1647902)))

(declare-fun b!2611651 () Bool)

(declare-fun inv!40869 (Conc!9375) Bool)

(assert (=> b!2611651 (= e!1647902 (inv!40869 (c!419709 v!6381)))))

(declare-fun b!2611652 () Bool)

(declare-fun e!1647903 () Bool)

(assert (=> b!2611652 (= e!1647902 e!1647903)))

(declare-fun res!1099353 () Bool)

(assert (=> b!2611652 (= res!1099353 (not (is-Leaf!14399 (c!419709 v!6381))))))

(assert (=> b!2611652 (=> res!1099353 e!1647903)))

(declare-fun b!2611653 () Bool)

(declare-fun inv!40870 (Conc!9375) Bool)

(assert (=> b!2611653 (= e!1647903 (inv!40870 (c!419709 v!6381)))))

(assert (= (and d!739790 c!419734) b!2611651))

(assert (= (and d!739790 (not c!419734)) b!2611652))

(assert (= (and b!2611652 (not res!1099353)) b!2611653))

(declare-fun m!2946123 () Bool)

(assert (=> b!2611651 m!2946123))

(declare-fun m!2946125 () Bool)

(assert (=> b!2611653 m!2946125))

(assert (=> b!2611504 d!739790))

(declare-fun d!739796 () Bool)

(declare-fun lt!917683 () Bool)

(declare-fun forall!6264 (List!30294 Int) Bool)

(assert (=> d!739796 (= lt!917683 (forall!6264 (list!11328 v!6381) lambda!97765))))

(declare-fun forall!6265 (Conc!9375 Int) Bool)

(assert (=> d!739796 (= lt!917683 (forall!6265 (c!419709 v!6381) lambda!97765))))

(assert (=> d!739796 (= (forall!6262 v!6381 lambda!97765) lt!917683)))

(declare-fun bs!473913 () Bool)

(assert (= bs!473913 d!739796))

(assert (=> bs!473913 m!2945991))

(assert (=> bs!473913 m!2945991))

(declare-fun m!2946127 () Bool)

(assert (=> bs!473913 m!2946127))

(declare-fun m!2946129 () Bool)

(assert (=> bs!473913 m!2946129))

(assert (=> b!2611505 d!739796))

(declare-fun d!739798 () Bool)

(declare-fun res!1099358 () Bool)

(declare-fun e!1647910 () Bool)

(assert (=> d!739798 (=> (not res!1099358) (not e!1647910))))

(declare-fun rulesValid!1705 (LexerInterface!4163 List!30293) Bool)

(assert (=> d!739798 (= res!1099358 (rulesValid!1705 thiss!14197 rules!1726))))

(assert (=> d!739798 (= (rulesInvariant!3663 thiss!14197 rules!1726) e!1647910)))

(declare-fun b!2611662 () Bool)

(declare-datatypes ((List!30299 0))(
  ( (Nil!30199) (Cons!30199 (h!35619 String!33826) (t!214194 List!30299)) )
))
(declare-fun noDuplicateTag!1701 (LexerInterface!4163 List!30293 List!30299) Bool)

(assert (=> b!2611662 (= e!1647910 (noDuplicateTag!1701 thiss!14197 rules!1726 Nil!30199))))

(assert (= (and d!739798 res!1099358) b!2611662))

(declare-fun m!2946131 () Bool)

(assert (=> d!739798 m!2946131))

(declare-fun m!2946133 () Bool)

(assert (=> b!2611662 m!2946133))

(assert (=> b!2611494 d!739798))

(declare-fun bs!473914 () Bool)

(declare-fun d!739800 () Bool)

(assert (= bs!473914 (and d!739800 b!2611505)))

(declare-fun lambda!97779 () Int)

(assert (=> bs!473914 (not (= lambda!97779 lambda!97765))))

(declare-fun bs!473915 () Bool)

(assert (= bs!473915 (and d!739800 b!2611497)))

(assert (=> bs!473915 (= lambda!97779 lambda!97766)))

(declare-fun b!2611671 () Bool)

(declare-fun e!1647918 () Bool)

(assert (=> b!2611671 (= e!1647918 true)))

(declare-fun b!2611670 () Bool)

(declare-fun e!1647917 () Bool)

(assert (=> b!2611670 (= e!1647917 e!1647918)))

(declare-fun b!2611669 () Bool)

(declare-fun e!1647916 () Bool)

(assert (=> b!2611669 (= e!1647916 e!1647917)))

(assert (=> d!739800 e!1647916))

(assert (= b!2611670 b!2611671))

(assert (= b!2611669 b!2611670))

(assert (= (and d!739800 (is-Cons!30193 rules!1726)) b!2611669))

(assert (=> b!2611671 (< (dynLambda!12790 order!16065 (toValue!6468 (transformation!4566 (h!35613 rules!1726)))) (dynLambda!12791 order!16067 lambda!97779))))

(assert (=> b!2611671 (< (dynLambda!12792 order!16069 (toChars!6327 (transformation!4566 (h!35613 rules!1726)))) (dynLambda!12791 order!16067 lambda!97779))))

(assert (=> d!739800 true))

(declare-fun e!1647915 () Bool)

(assert (=> d!739800 e!1647915))

(declare-fun res!1099362 () Bool)

(assert (=> d!739800 (=> (not res!1099362) (not e!1647915))))

(declare-fun lt!917686 () Bool)

(assert (=> d!739800 (= res!1099362 (= lt!917686 (forall!6264 (list!11328 v!6381) lambda!97779)))))

(assert (=> d!739800 (= lt!917686 (forall!6262 v!6381 lambda!97779))))

(assert (=> d!739800 (not (isEmpty!17243 rules!1726))))

(assert (=> d!739800 (= (rulesProduceEachTokenIndividually!983 thiss!14197 rules!1726 v!6381) lt!917686)))

(declare-fun b!2611668 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!1436 (LexerInterface!4163 List!30293 List!30294) Bool)

(assert (=> b!2611668 (= e!1647915 (= lt!917686 (rulesProduceEachTokenIndividuallyList!1436 thiss!14197 rules!1726 (list!11328 v!6381))))))

(assert (= (and d!739800 res!1099362) b!2611668))

(assert (=> d!739800 m!2945991))

(assert (=> d!739800 m!2945991))

(declare-fun m!2946139 () Bool)

(assert (=> d!739800 m!2946139))

(declare-fun m!2946141 () Bool)

(assert (=> d!739800 m!2946141))

(assert (=> d!739800 m!2945953))

(assert (=> b!2611668 m!2945991))

(assert (=> b!2611668 m!2945991))

(declare-fun m!2946143 () Bool)

(assert (=> b!2611668 m!2946143))

(assert (=> b!2611503 d!739800))

(declare-fun d!739804 () Bool)

(assert (=> d!739804 (= (inv!40858 (tag!5056 (h!35613 rules!1726))) (= (mod (str.len (value!147736 (tag!5056 (h!35613 rules!1726)))) 2) 0))))

(assert (=> b!2611492 d!739804))

(declare-fun d!739806 () Bool)

(declare-fun res!1099365 () Bool)

(declare-fun e!1647921 () Bool)

(assert (=> d!739806 (=> (not res!1099365) (not e!1647921))))

(declare-fun semiInverseModEq!1900 (Int Int) Bool)

(assert (=> d!739806 (= res!1099365 (semiInverseModEq!1900 (toChars!6327 (transformation!4566 (h!35613 rules!1726))) (toValue!6468 (transformation!4566 (h!35613 rules!1726)))))))

(assert (=> d!739806 (= (inv!40861 (transformation!4566 (h!35613 rules!1726))) e!1647921)))

(declare-fun b!2611674 () Bool)

(declare-fun equivClasses!1801 (Int Int) Bool)

(assert (=> b!2611674 (= e!1647921 (equivClasses!1801 (toChars!6327 (transformation!4566 (h!35613 rules!1726))) (toValue!6468 (transformation!4566 (h!35613 rules!1726)))))))

(assert (= (and d!739806 res!1099365) b!2611674))

(declare-fun m!2946145 () Bool)

(assert (=> d!739806 m!2946145))

(declare-fun m!2946147 () Bool)

(assert (=> b!2611674 m!2946147))

(assert (=> b!2611492 d!739806))

(declare-fun d!739808 () Bool)

(declare-fun res!1099370 () Bool)

(declare-fun e!1647924 () Bool)

(assert (=> d!739808 (=> (not res!1099370) (not e!1647924))))

(declare-fun isEmpty!17245 (List!30292) Bool)

(assert (=> d!739808 (= res!1099370 (not (isEmpty!17245 (originalCharacters!5332 separatorToken!156))))))

(assert (=> d!739808 (= (inv!40862 separatorToken!156) e!1647924)))

(declare-fun b!2611679 () Bool)

(declare-fun res!1099371 () Bool)

(assert (=> b!2611679 (=> (not res!1099371) (not e!1647924))))

(declare-fun list!11330 (BalanceConc!18362) List!30292)

(declare-fun dynLambda!12796 (Int TokenValue!4788) BalanceConc!18362)

(assert (=> b!2611679 (= res!1099371 (= (originalCharacters!5332 separatorToken!156) (list!11330 (dynLambda!12796 (toChars!6327 (transformation!4566 (rule!6936 separatorToken!156))) (value!147737 separatorToken!156)))))))

(declare-fun b!2611680 () Bool)

(declare-fun size!23375 (List!30292) Int)

(assert (=> b!2611680 (= e!1647924 (= (size!23370 separatorToken!156) (size!23375 (originalCharacters!5332 separatorToken!156))))))

(assert (= (and d!739808 res!1099370) b!2611679))

(assert (= (and b!2611679 res!1099371) b!2611680))

(declare-fun b_lambda!78327 () Bool)

(assert (=> (not b_lambda!78327) (not b!2611679)))

(declare-fun tb!142115 () Bool)

(declare-fun t!214169 () Bool)

(assert (=> (and b!2611507 (= (toChars!6327 (transformation!4566 (h!35613 rules!1726))) (toChars!6327 (transformation!4566 (rule!6936 separatorToken!156)))) t!214169) tb!142115))

(declare-fun b!2611685 () Bool)

(declare-fun e!1647927 () Bool)

(declare-fun tp!829765 () Bool)

(declare-fun inv!40871 (Conc!9374) Bool)

(assert (=> b!2611685 (= e!1647927 (and (inv!40871 (c!419708 (dynLambda!12796 (toChars!6327 (transformation!4566 (rule!6936 separatorToken!156))) (value!147737 separatorToken!156)))) tp!829765))))

(declare-fun result!176798 () Bool)

(declare-fun inv!40872 (BalanceConc!18362) Bool)

(assert (=> tb!142115 (= result!176798 (and (inv!40872 (dynLambda!12796 (toChars!6327 (transformation!4566 (rule!6936 separatorToken!156))) (value!147737 separatorToken!156))) e!1647927))))

(assert (= tb!142115 b!2611685))

(declare-fun m!2946149 () Bool)

(assert (=> b!2611685 m!2946149))

(declare-fun m!2946151 () Bool)

(assert (=> tb!142115 m!2946151))

(assert (=> b!2611679 t!214169))

(declare-fun b_and!191051 () Bool)

(assert (= b_and!191037 (and (=> t!214169 result!176798) b_and!191051)))

(declare-fun t!214171 () Bool)

(declare-fun tb!142117 () Bool)

(assert (=> (and b!2611491 (= (toChars!6327 (transformation!4566 (rule!6936 separatorToken!156))) (toChars!6327 (transformation!4566 (rule!6936 separatorToken!156)))) t!214171) tb!142117))

(declare-fun result!176802 () Bool)

(assert (= result!176802 result!176798))

(assert (=> b!2611679 t!214171))

(declare-fun b_and!191053 () Bool)

(assert (= b_and!191041 (and (=> t!214171 result!176802) b_and!191053)))

(declare-fun m!2946153 () Bool)

(assert (=> d!739808 m!2946153))

(declare-fun m!2946155 () Bool)

(assert (=> b!2611679 m!2946155))

(assert (=> b!2611679 m!2946155))

(declare-fun m!2946157 () Bool)

(assert (=> b!2611679 m!2946157))

(declare-fun m!2946159 () Bool)

(assert (=> b!2611680 m!2946159))

(assert (=> start!253840 d!739808))

(declare-fun d!739810 () Bool)

(declare-fun isBalanced!2848 (Conc!9375) Bool)

(assert (=> d!739810 (= (inv!40863 v!6381) (isBalanced!2848 (c!419709 v!6381)))))

(declare-fun bs!473916 () Bool)

(assert (= bs!473916 d!739810))

(declare-fun m!2946161 () Bool)

(assert (=> bs!473916 m!2946161))

(assert (=> start!253840 d!739810))

(declare-fun d!739812 () Bool)

(declare-fun lt!917689 () Int)

(assert (=> d!739812 (= lt!917689 (size!23374 (list!11328 v!6381)))))

(declare-fun size!23376 (Conc!9375) Int)

(assert (=> d!739812 (= lt!917689 (size!23376 (c!419709 v!6381)))))

(assert (=> d!739812 (= (size!23371 v!6381) lt!917689)))

(declare-fun bs!473917 () Bool)

(assert (= bs!473917 d!739812))

(assert (=> bs!473917 m!2945991))

(assert (=> bs!473917 m!2945991))

(declare-fun m!2946163 () Bool)

(assert (=> bs!473917 m!2946163))

(declare-fun m!2946165 () Bool)

(assert (=> bs!473917 m!2946165))

(assert (=> b!2611500 d!739812))

(declare-fun d!739814 () Bool)

(declare-fun lt!917692 () Bool)

(assert (=> d!739814 (= lt!917692 (set.member lt!917632 (content!4276 lt!917628)))))

(declare-fun e!1647932 () Bool)

(assert (=> d!739814 (= lt!917692 e!1647932)))

(declare-fun res!1099376 () Bool)

(assert (=> d!739814 (=> (not res!1099376) (not e!1647932))))

(assert (=> d!739814 (= res!1099376 (is-Cons!30194 lt!917628))))

(assert (=> d!739814 (= (contains!5609 lt!917628 lt!917632) lt!917692)))

(declare-fun b!2611690 () Bool)

(declare-fun e!1647933 () Bool)

(assert (=> b!2611690 (= e!1647932 e!1647933)))

(declare-fun res!1099377 () Bool)

(assert (=> b!2611690 (=> res!1099377 e!1647933)))

(assert (=> b!2611690 (= res!1099377 (= (h!35614 lt!917628) lt!917632))))

(declare-fun b!2611691 () Bool)

(assert (=> b!2611691 (= e!1647933 (contains!5609 (t!214155 lt!917628) lt!917632))))

(assert (= (and d!739814 res!1099376) b!2611690))

(assert (= (and b!2611690 (not res!1099377)) b!2611691))

(assert (=> d!739814 m!2946091))

(declare-fun m!2946167 () Bool)

(assert (=> d!739814 m!2946167))

(declare-fun m!2946169 () Bool)

(assert (=> b!2611691 m!2946169))

(assert (=> b!2611501 d!739814))

(declare-fun d!739816 () Bool)

(declare-fun c!419743 () Bool)

(assert (=> d!739816 (= c!419743 (is-IntegerValue!14364 (value!147737 separatorToken!156)))))

(declare-fun e!1647941 () Bool)

(assert (=> d!739816 (= (inv!21 (value!147737 separatorToken!156)) e!1647941)))

(declare-fun b!2611702 () Bool)

(declare-fun e!1647942 () Bool)

(assert (=> b!2611702 (= e!1647941 e!1647942)))

(declare-fun c!419742 () Bool)

(assert (=> b!2611702 (= c!419742 (is-IntegerValue!14365 (value!147737 separatorToken!156)))))

(declare-fun b!2611703 () Bool)

(declare-fun res!1099380 () Bool)

(declare-fun e!1647940 () Bool)

(assert (=> b!2611703 (=> res!1099380 e!1647940)))

(assert (=> b!2611703 (= res!1099380 (not (is-IntegerValue!14366 (value!147737 separatorToken!156))))))

(assert (=> b!2611703 (= e!1647942 e!1647940)))

(declare-fun b!2611704 () Bool)

(declare-fun inv!17 (TokenValue!4788) Bool)

(assert (=> b!2611704 (= e!1647942 (inv!17 (value!147737 separatorToken!156)))))

(declare-fun b!2611705 () Bool)

(declare-fun inv!15 (TokenValue!4788) Bool)

(assert (=> b!2611705 (= e!1647940 (inv!15 (value!147737 separatorToken!156)))))

(declare-fun b!2611706 () Bool)

(declare-fun inv!16 (TokenValue!4788) Bool)

(assert (=> b!2611706 (= e!1647941 (inv!16 (value!147737 separatorToken!156)))))

(assert (= (and d!739816 c!419743) b!2611706))

(assert (= (and d!739816 (not c!419743)) b!2611702))

(assert (= (and b!2611702 c!419742) b!2611704))

(assert (= (and b!2611702 (not c!419742)) b!2611703))

(assert (= (and b!2611703 (not res!1099380)) b!2611705))

(declare-fun m!2946171 () Bool)

(assert (=> b!2611704 m!2946171))

(declare-fun m!2946173 () Bool)

(assert (=> b!2611705 m!2946173))

(declare-fun m!2946175 () Bool)

(assert (=> b!2611706 m!2946175))

(assert (=> b!2611490 d!739816))

(declare-fun d!739818 () Bool)

(assert (=> d!739818 (forall!6264 (dropList!869 v!6381 from!862) lambda!97765)))

(declare-fun lt!917695 () Unit!44164)

(declare-fun choose!15498 (List!30294 List!30294 Int) Unit!44164)

(assert (=> d!739818 (= lt!917695 (choose!15498 lt!917628 (dropList!869 v!6381 from!862) lambda!97765))))

(assert (=> d!739818 (forall!6264 lt!917628 lambda!97765)))

(assert (=> d!739818 (= (lemmaContentSubsetPreservesForall!235 lt!917628 (dropList!869 v!6381 from!862) lambda!97765) lt!917695)))

(declare-fun bs!473918 () Bool)

(assert (= bs!473918 d!739818))

(assert (=> bs!473918 m!2945987))

(declare-fun m!2946177 () Bool)

(assert (=> bs!473918 m!2946177))

(assert (=> bs!473918 m!2945987))

(declare-fun m!2946179 () Bool)

(assert (=> bs!473918 m!2946179))

(declare-fun m!2946181 () Bool)

(assert (=> bs!473918 m!2946181))

(assert (=> b!2611499 d!739818))

(declare-fun d!739820 () Bool)

(declare-fun list!11331 (Conc!9375) List!30294)

(assert (=> d!739820 (= (dropList!869 v!6381 from!862) (drop!1562 (list!11331 (c!419709 v!6381)) from!862))))

(declare-fun bs!473919 () Bool)

(assert (= bs!473919 d!739820))

(declare-fun m!2946183 () Bool)

(assert (=> bs!473919 m!2946183))

(assert (=> bs!473919 m!2946183))

(declare-fun m!2946185 () Bool)

(assert (=> bs!473919 m!2946185))

(assert (=> b!2611499 d!739820))

(declare-fun d!739822 () Bool)

(assert (=> d!739822 (= (list!11328 v!6381) (list!11331 (c!419709 v!6381)))))

(declare-fun bs!473920 () Bool)

(assert (= bs!473920 d!739822))

(assert (=> bs!473920 m!2946183))

(assert (=> b!2611499 d!739822))

(declare-fun d!739824 () Bool)

(declare-fun lt!917700 () Bool)

(declare-fun e!1647948 () Bool)

(assert (=> d!739824 (= lt!917700 e!1647948)))

(declare-fun res!1099388 () Bool)

(assert (=> d!739824 (=> (not res!1099388) (not e!1647948))))

(declare-datatypes ((tuple2!29762 0))(
  ( (tuple2!29763 (_1!17423 BalanceConc!18364) (_2!17423 BalanceConc!18362)) )
))
(declare-fun lex!1877 (LexerInterface!4163 List!30293 BalanceConc!18362) tuple2!29762)

(declare-fun print!1599 (LexerInterface!4163 BalanceConc!18364) BalanceConc!18362)

(declare-fun singletonSeq!2016 (Token!8602) BalanceConc!18364)

(assert (=> d!739824 (= res!1099388 (= (list!11328 (_1!17423 (lex!1877 thiss!14197 rules!1726 (print!1599 thiss!14197 (singletonSeq!2016 separatorToken!156))))) (list!11328 (singletonSeq!2016 separatorToken!156))))))

(declare-fun e!1647947 () Bool)

(assert (=> d!739824 (= lt!917700 e!1647947)))

(declare-fun res!1099387 () Bool)

(assert (=> d!739824 (=> (not res!1099387) (not e!1647947))))

(declare-fun lt!917701 () tuple2!29762)

(assert (=> d!739824 (= res!1099387 (= (size!23371 (_1!17423 lt!917701)) 1))))

(assert (=> d!739824 (= lt!917701 (lex!1877 thiss!14197 rules!1726 (print!1599 thiss!14197 (singletonSeq!2016 separatorToken!156))))))

(assert (=> d!739824 (not (isEmpty!17243 rules!1726))))

(assert (=> d!739824 (= (rulesProduceIndividualToken!1875 thiss!14197 rules!1726 separatorToken!156) lt!917700)))

(declare-fun b!2611713 () Bool)

(declare-fun res!1099389 () Bool)

(assert (=> b!2611713 (=> (not res!1099389) (not e!1647947))))

(assert (=> b!2611713 (= res!1099389 (= (apply!7094 (_1!17423 lt!917701) 0) separatorToken!156))))

(declare-fun b!2611714 () Bool)

(declare-fun isEmpty!17246 (BalanceConc!18362) Bool)

(assert (=> b!2611714 (= e!1647947 (isEmpty!17246 (_2!17423 lt!917701)))))

(declare-fun b!2611715 () Bool)

(assert (=> b!2611715 (= e!1647948 (isEmpty!17246 (_2!17423 (lex!1877 thiss!14197 rules!1726 (print!1599 thiss!14197 (singletonSeq!2016 separatorToken!156))))))))

(assert (= (and d!739824 res!1099387) b!2611713))

(assert (= (and b!2611713 res!1099389) b!2611714))

(assert (= (and d!739824 res!1099388) b!2611715))

(declare-fun m!2946187 () Bool)

(assert (=> d!739824 m!2946187))

(declare-fun m!2946189 () Bool)

(assert (=> d!739824 m!2946189))

(declare-fun m!2946191 () Bool)

(assert (=> d!739824 m!2946191))

(assert (=> d!739824 m!2945953))

(declare-fun m!2946193 () Bool)

(assert (=> d!739824 m!2946193))

(assert (=> d!739824 m!2946193))

(declare-fun m!2946195 () Bool)

(assert (=> d!739824 m!2946195))

(assert (=> d!739824 m!2946193))

(assert (=> d!739824 m!2946187))

(declare-fun m!2946197 () Bool)

(assert (=> d!739824 m!2946197))

(declare-fun m!2946199 () Bool)

(assert (=> b!2611713 m!2946199))

(declare-fun m!2946201 () Bool)

(assert (=> b!2611714 m!2946201))

(assert (=> b!2611715 m!2946193))

(assert (=> b!2611715 m!2946193))

(assert (=> b!2611715 m!2946187))

(assert (=> b!2611715 m!2946187))

(assert (=> b!2611715 m!2946189))

(declare-fun m!2946203 () Bool)

(assert (=> b!2611715 m!2946203))

(assert (=> b!2611489 d!739824))

(declare-fun d!739826 () Bool)

(declare-fun res!1099394 () Bool)

(declare-fun e!1647953 () Bool)

(assert (=> d!739826 (=> res!1099394 e!1647953)))

(assert (=> d!739826 (= res!1099394 (not (is-Cons!30193 rules!1726)))))

(assert (=> d!739826 (= (sepAndNonSepRulesDisjointChars!1139 rules!1726 rules!1726) e!1647953)))

(declare-fun b!2611720 () Bool)

(declare-fun e!1647954 () Bool)

(assert (=> b!2611720 (= e!1647953 e!1647954)))

(declare-fun res!1099395 () Bool)

(assert (=> b!2611720 (=> (not res!1099395) (not e!1647954))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!507 (Rule!8932 List!30293) Bool)

(assert (=> b!2611720 (= res!1099395 (ruleDisjointCharsFromAllFromOtherType!507 (h!35613 rules!1726) rules!1726))))

(declare-fun b!2611721 () Bool)

(assert (=> b!2611721 (= e!1647954 (sepAndNonSepRulesDisjointChars!1139 rules!1726 (t!214154 rules!1726)))))

(assert (= (and d!739826 (not res!1099394)) b!2611720))

(assert (= (and b!2611720 res!1099395) b!2611721))

(declare-fun m!2946205 () Bool)

(assert (=> b!2611720 m!2946205))

(declare-fun m!2946207 () Bool)

(assert (=> b!2611721 m!2946207))

(assert (=> b!2611498 d!739826))

(declare-fun d!739828 () Bool)

(assert (=> d!739828 (= (inv!40858 (tag!5056 (rule!6936 separatorToken!156))) (= (mod (str.len (value!147736 (tag!5056 (rule!6936 separatorToken!156)))) 2) 0))))

(assert (=> b!2611496 d!739828))

(declare-fun d!739830 () Bool)

(declare-fun res!1099396 () Bool)

(declare-fun e!1647955 () Bool)

(assert (=> d!739830 (=> (not res!1099396) (not e!1647955))))

(assert (=> d!739830 (= res!1099396 (semiInverseModEq!1900 (toChars!6327 (transformation!4566 (rule!6936 separatorToken!156))) (toValue!6468 (transformation!4566 (rule!6936 separatorToken!156)))))))

(assert (=> d!739830 (= (inv!40861 (transformation!4566 (rule!6936 separatorToken!156))) e!1647955)))

(declare-fun b!2611722 () Bool)

(assert (=> b!2611722 (= e!1647955 (equivClasses!1801 (toChars!6327 (transformation!4566 (rule!6936 separatorToken!156))) (toValue!6468 (transformation!4566 (rule!6936 separatorToken!156)))))))

(assert (= (and d!739830 res!1099396) b!2611722))

(declare-fun m!2946209 () Bool)

(assert (=> d!739830 m!2946209))

(declare-fun m!2946211 () Bool)

(assert (=> b!2611722 m!2946211))

(assert (=> b!2611496 d!739830))

(declare-fun bs!473929 () Bool)

(declare-fun d!739832 () Bool)

(assert (= bs!473929 (and d!739832 b!2611505)))

(declare-fun lambda!97793 () Int)

(assert (=> bs!473929 (= lambda!97793 lambda!97765)))

(declare-fun bs!473930 () Bool)

(assert (= bs!473930 (and d!739832 b!2611497)))

(assert (=> bs!473930 (not (= lambda!97793 lambda!97766))))

(declare-fun bs!473931 () Bool)

(assert (= bs!473931 (and d!739832 d!739800)))

(assert (=> bs!473931 (not (= lambda!97793 lambda!97779))))

(declare-fun bs!473932 () Bool)

(declare-fun b!2611823 () Bool)

(assert (= bs!473932 (and b!2611823 b!2611505)))

(declare-fun lambda!97794 () Int)

(assert (=> bs!473932 (not (= lambda!97794 lambda!97765))))

(declare-fun bs!473933 () Bool)

(assert (= bs!473933 (and b!2611823 b!2611497)))

(assert (=> bs!473933 (= lambda!97794 lambda!97766)))

(declare-fun bs!473934 () Bool)

(assert (= bs!473934 (and b!2611823 d!739800)))

(assert (=> bs!473934 (= lambda!97794 lambda!97779)))

(declare-fun bs!473935 () Bool)

(assert (= bs!473935 (and b!2611823 d!739832)))

(assert (=> bs!473935 (not (= lambda!97794 lambda!97793))))

(declare-fun b!2611829 () Bool)

(declare-fun e!1648025 () Bool)

(assert (=> b!2611829 (= e!1648025 true)))

(declare-fun b!2611828 () Bool)

(declare-fun e!1648024 () Bool)

(assert (=> b!2611828 (= e!1648024 e!1648025)))

(declare-fun b!2611827 () Bool)

(declare-fun e!1648023 () Bool)

(assert (=> b!2611827 (= e!1648023 e!1648024)))

(assert (=> b!2611823 e!1648023))

(assert (= b!2611828 b!2611829))

(assert (= b!2611827 b!2611828))

(assert (= (and b!2611823 (is-Cons!30193 rules!1726)) b!2611827))

(assert (=> b!2611829 (< (dynLambda!12790 order!16065 (toValue!6468 (transformation!4566 (h!35613 rules!1726)))) (dynLambda!12791 order!16067 lambda!97794))))

(assert (=> b!2611829 (< (dynLambda!12792 order!16069 (toChars!6327 (transformation!4566 (h!35613 rules!1726)))) (dynLambda!12791 order!16067 lambda!97794))))

(assert (=> b!2611823 true))

(declare-fun b!2611819 () Bool)

(declare-fun e!1648022 () Bool)

(assert (=> b!2611819 (= e!1648022 (<= (+ 1 from!862) (size!23371 v!6381)))))

(declare-fun call!167570 () BalanceConc!18362)

(declare-fun bm!167563 () Bool)

(declare-fun c!419770 () Bool)

(declare-fun call!167572 () Token!8602)

(declare-fun call!167568 () Token!8602)

(assert (=> bm!167563 (= call!167570 (charsOf!2857 (ite c!419770 call!167568 call!167572)))))

(declare-datatypes ((tuple2!29764 0))(
  ( (tuple2!29765 (_1!17424 Token!8602) (_2!17424 BalanceConc!18362)) )
))
(declare-datatypes ((Option!5943 0))(
  ( (None!5942) (Some!5942 (v!32271 tuple2!29764)) )
))
(declare-fun lt!917796 () Option!5943)

(declare-fun b!2611820 () Bool)

(declare-fun e!1648020 () Bool)

(assert (=> b!2611820 (= e!1648020 (= (_1!17424 (v!32271 lt!917796)) (apply!7094 v!6381 (+ 1 from!862))))))

(declare-fun b!2611821 () Bool)

(declare-fun e!1648017 () BalanceConc!18362)

(declare-fun call!167571 () BalanceConc!18362)

(assert (=> b!2611821 (= e!1648017 call!167571)))

(declare-fun bm!167564 () Bool)

(declare-fun call!167569 () BalanceConc!18362)

(declare-fun c!419771 () Bool)

(assert (=> bm!167564 (= call!167569 (charsOf!2857 (ite c!419771 separatorToken!156 call!167572)))))

(declare-fun bm!167565 () Bool)

(assert (=> bm!167565 (= call!167572 call!167568)))

(declare-fun b!2611822 () Bool)

(declare-fun e!1648019 () BalanceConc!18362)

(assert (=> b!2611822 (= e!1648019 (BalanceConc!18363 Empty!9374))))

(assert (=> b!2611823 (= e!1648019 e!1648017)))

(declare-fun lt!917795 () List!30294)

(assert (=> b!2611823 (= lt!917795 (list!11328 v!6381))))

(declare-fun lt!917800 () Unit!44164)

(assert (=> b!2611823 (= lt!917800 (lemmaDropApply!777 lt!917795 (+ 1 from!862)))))

(assert (=> b!2611823 (= (head!5961 (drop!1562 lt!917795 (+ 1 from!862))) (apply!7095 lt!917795 (+ 1 from!862)))))

(declare-fun lt!917787 () Unit!44164)

(assert (=> b!2611823 (= lt!917787 lt!917800)))

(declare-fun lt!917799 () List!30294)

(assert (=> b!2611823 (= lt!917799 (list!11328 v!6381))))

(declare-fun lt!917788 () Unit!44164)

(assert (=> b!2611823 (= lt!917788 (lemmaDropTail!751 lt!917799 (+ 1 from!862)))))

(assert (=> b!2611823 (= (tail!4199 (drop!1562 lt!917799 (+ 1 from!862))) (drop!1562 lt!917799 (+ 1 from!862 1)))))

(declare-fun lt!917793 () Unit!44164)

(assert (=> b!2611823 (= lt!917793 lt!917788)))

(declare-fun lt!917790 () Unit!44164)

(assert (=> b!2611823 (= lt!917790 (forallContained!922 (list!11328 v!6381) lambda!97794 (apply!7094 v!6381 (+ 1 from!862))))))

(declare-fun lt!917792 () BalanceConc!18362)

(assert (=> b!2611823 (= lt!917792 (printWithSeparatorTokenWhenNeededRec!441 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862 1)))))

(declare-fun maxPrefixZipperSequence!895 (LexerInterface!4163 List!30293 BalanceConc!18362) Option!5943)

(assert (=> b!2611823 (= lt!917796 (maxPrefixZipperSequence!895 thiss!14197 rules!1726 (++!7326 (charsOf!2857 (apply!7094 v!6381 (+ 1 from!862))) lt!917792)))))

(declare-fun res!1099441 () Bool)

(assert (=> b!2611823 (= res!1099441 (is-Some!5942 lt!917796))))

(assert (=> b!2611823 (=> (not res!1099441) (not e!1648020))))

(assert (=> b!2611823 (= c!419770 e!1648020)))

(declare-fun b!2611824 () Bool)

(declare-fun e!1648021 () BalanceConc!18362)

(assert (=> b!2611824 (= e!1648021 (++!7326 call!167571 lt!917792))))

(declare-fun bm!167566 () Bool)

(assert (=> bm!167566 (= call!167568 (apply!7094 v!6381 (+ 1 from!862)))))

(declare-fun b!2611825 () Bool)

(declare-fun e!1648018 () Bool)

(assert (=> b!2611825 (= c!419771 e!1648018)))

(declare-fun res!1099440 () Bool)

(assert (=> b!2611825 (=> (not res!1099440) (not e!1648018))))

(assert (=> b!2611825 (= res!1099440 (is-Some!5942 lt!917796))))

(assert (=> b!2611825 (= e!1648017 e!1648021)))

(declare-fun b!2611818 () Bool)

(assert (=> b!2611818 (= e!1648021 (BalanceConc!18363 Empty!9374))))

(declare-fun printTailRec!1088 (LexerInterface!4163 BalanceConc!18364 Int BalanceConc!18362) BalanceConc!18362)

(assert (=> b!2611818 (= (print!1599 thiss!14197 (singletonSeq!2016 call!167572)) (printTailRec!1088 thiss!14197 (singletonSeq!2016 call!167572) 0 (BalanceConc!18363 Empty!9374)))))

(declare-fun lt!917791 () Unit!44164)

(declare-fun Unit!44169 () Unit!44164)

(assert (=> b!2611818 (= lt!917791 Unit!44169)))

(declare-fun lt!917798 () Unit!44164)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!784 (LexerInterface!4163 List!30293 List!30292 List!30292) Unit!44164)

(assert (=> b!2611818 (= lt!917798 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!784 thiss!14197 rules!1726 (list!11330 call!167569) (list!11330 lt!917792)))))

(assert (=> b!2611818 false))

(declare-fun lt!917794 () Unit!44164)

(declare-fun Unit!44170 () Unit!44164)

(assert (=> b!2611818 (= lt!917794 Unit!44170)))

(declare-fun lt!917797 () BalanceConc!18362)

(declare-fun printWithSeparatorTokenWhenNeededList!643 (LexerInterface!4163 List!30293 List!30294 Token!8602) List!30292)

(assert (=> d!739832 (= (list!11330 lt!917797) (printWithSeparatorTokenWhenNeededList!643 thiss!14197 rules!1726 (dropList!869 v!6381 (+ 1 from!862)) separatorToken!156))))

(assert (=> d!739832 (= lt!917797 e!1648019)))

(declare-fun c!419772 () Bool)

(assert (=> d!739832 (= c!419772 (>= (+ 1 from!862) (size!23371 v!6381)))))

(declare-fun lt!917789 () Unit!44164)

(assert (=> d!739832 (= lt!917789 (lemmaContentSubsetPreservesForall!235 (list!11328 v!6381) (dropList!869 v!6381 (+ 1 from!862)) lambda!97793))))

(assert (=> d!739832 e!1648022))

(declare-fun res!1099442 () Bool)

(assert (=> d!739832 (=> (not res!1099442) (not e!1648022))))

(assert (=> d!739832 (= res!1099442 (>= (+ 1 from!862) 0))))

(assert (=> d!739832 (= (printWithSeparatorTokenWhenNeededRec!441 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862)) lt!917797)))

(declare-fun bm!167567 () Bool)

(assert (=> bm!167567 (= call!167571 (++!7326 call!167570 (ite c!419770 lt!917792 call!167569)))))

(declare-fun b!2611826 () Bool)

(assert (=> b!2611826 (= e!1648018 (not (= (_1!17424 (v!32271 lt!917796)) call!167568)))))

(assert (= (and d!739832 res!1099442) b!2611819))

(assert (= (and d!739832 c!419772) b!2611822))

(assert (= (and d!739832 (not c!419772)) b!2611823))

(assert (= (and b!2611823 res!1099441) b!2611820))

(assert (= (and b!2611823 c!419770) b!2611821))

(assert (= (and b!2611823 (not c!419770)) b!2611825))

(assert (= (and b!2611825 res!1099440) b!2611826))

(assert (= (and b!2611825 c!419771) b!2611824))

(assert (= (and b!2611825 (not c!419771)) b!2611818))

(assert (= (or b!2611824 b!2611818) bm!167565))

(assert (= (or b!2611824 b!2611818) bm!167564))

(assert (= (or b!2611821 bm!167565 b!2611826) bm!167566))

(assert (= (or b!2611821 b!2611824) bm!167563))

(assert (= (or b!2611821 b!2611824) bm!167567))

(declare-fun m!2946335 () Bool)

(assert (=> b!2611820 m!2946335))

(assert (=> bm!167566 m!2946335))

(declare-fun m!2946337 () Bool)

(assert (=> b!2611818 m!2946337))

(declare-fun m!2946339 () Bool)

(assert (=> b!2611818 m!2946339))

(declare-fun m!2946341 () Bool)

(assert (=> b!2611818 m!2946341))

(declare-fun m!2946343 () Bool)

(assert (=> b!2611818 m!2946343))

(declare-fun m!2946345 () Bool)

(assert (=> b!2611818 m!2946345))

(assert (=> b!2611818 m!2946337))

(assert (=> b!2611818 m!2946341))

(assert (=> b!2611818 m!2946343))

(assert (=> b!2611818 m!2946337))

(declare-fun m!2946347 () Bool)

(assert (=> b!2611818 m!2946347))

(declare-fun m!2946349 () Bool)

(assert (=> bm!167563 m!2946349))

(assert (=> b!2611819 m!2945967))

(declare-fun m!2946351 () Bool)

(assert (=> bm!167567 m!2946351))

(declare-fun m!2946353 () Bool)

(assert (=> b!2611823 m!2946353))

(declare-fun m!2946355 () Bool)

(assert (=> b!2611823 m!2946355))

(declare-fun m!2946357 () Bool)

(assert (=> b!2611823 m!2946357))

(declare-fun m!2946359 () Bool)

(assert (=> b!2611823 m!2946359))

(assert (=> b!2611823 m!2946335))

(declare-fun m!2946361 () Bool)

(assert (=> b!2611823 m!2946361))

(declare-fun m!2946363 () Bool)

(assert (=> b!2611823 m!2946363))

(assert (=> b!2611823 m!2946357))

(declare-fun m!2946365 () Bool)

(assert (=> b!2611823 m!2946365))

(assert (=> b!2611823 m!2945991))

(assert (=> b!2611823 m!2946335))

(declare-fun m!2946367 () Bool)

(assert (=> b!2611823 m!2946367))

(declare-fun m!2946369 () Bool)

(assert (=> b!2611823 m!2946369))

(declare-fun m!2946371 () Bool)

(assert (=> b!2611823 m!2946371))

(assert (=> b!2611823 m!2946335))

(declare-fun m!2946373 () Bool)

(assert (=> b!2611823 m!2946373))

(assert (=> b!2611823 m!2946355))

(declare-fun m!2946375 () Bool)

(assert (=> b!2611823 m!2946375))

(declare-fun m!2946377 () Bool)

(assert (=> b!2611823 m!2946377))

(assert (=> b!2611823 m!2945991))

(assert (=> b!2611823 m!2946361))

(assert (=> b!2611823 m!2946369))

(declare-fun m!2946379 () Bool)

(assert (=> b!2611824 m!2946379))

(declare-fun m!2946381 () Bool)

(assert (=> bm!167564 m!2946381))

(assert (=> d!739832 m!2945991))

(declare-fun m!2946383 () Bool)

(assert (=> d!739832 m!2946383))

(declare-fun m!2946385 () Bool)

(assert (=> d!739832 m!2946385))

(assert (=> d!739832 m!2945991))

(assert (=> d!739832 m!2946383))

(declare-fun m!2946387 () Bool)

(assert (=> d!739832 m!2946387))

(assert (=> d!739832 m!2945967))

(assert (=> d!739832 m!2946383))

(declare-fun m!2946389 () Bool)

(assert (=> d!739832 m!2946389))

(assert (=> b!2611497 d!739832))

(declare-fun d!739860 () Bool)

(declare-fun dynLambda!12797 (Int Token!8602) Bool)

(assert (=> d!739860 (dynLambda!12797 lambda!97766 lt!917632)))

(declare-fun lt!917803 () Unit!44164)

(declare-fun choose!15499 (List!30294 Int Token!8602) Unit!44164)

(assert (=> d!739860 (= lt!917803 (choose!15499 lt!917628 lambda!97766 lt!917632))))

(declare-fun e!1648028 () Bool)

(assert (=> d!739860 e!1648028))

(declare-fun res!1099445 () Bool)

(assert (=> d!739860 (=> (not res!1099445) (not e!1648028))))

(assert (=> d!739860 (= res!1099445 (forall!6264 lt!917628 lambda!97766))))

(assert (=> d!739860 (= (forallContained!922 lt!917628 lambda!97766 lt!917632) lt!917803)))

(declare-fun b!2611832 () Bool)

(assert (=> b!2611832 (= e!1648028 (contains!5609 lt!917628 lt!917632))))

(assert (= (and d!739860 res!1099445) b!2611832))

(declare-fun b_lambda!78333 () Bool)

(assert (=> (not b_lambda!78333) (not d!739860)))

(declare-fun m!2946391 () Bool)

(assert (=> d!739860 m!2946391))

(declare-fun m!2946393 () Bool)

(assert (=> d!739860 m!2946393))

(declare-fun m!2946395 () Bool)

(assert (=> d!739860 m!2946395))

(assert (=> b!2611832 m!2945961))

(assert (=> b!2611497 d!739860))

(declare-fun d!739862 () Bool)

(declare-fun e!1648044 () Bool)

(assert (=> d!739862 e!1648044))

(declare-fun res!1099470 () Bool)

(assert (=> d!739862 (=> (not res!1099470) (not e!1648044))))

(declare-fun appendAssocInst!619 (Conc!9374 Conc!9374) Bool)

(assert (=> d!739862 (= res!1099470 (appendAssocInst!619 (c!419708 (charsOf!2857 lt!917632)) (c!419708 (printWithSeparatorTokenWhenNeededRec!441 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862)))))))

(declare-fun lt!917814 () BalanceConc!18362)

(declare-fun ++!7328 (Conc!9374 Conc!9374) Conc!9374)

(assert (=> d!739862 (= lt!917814 (BalanceConc!18363 (++!7328 (c!419708 (charsOf!2857 lt!917632)) (c!419708 (printWithSeparatorTokenWhenNeededRec!441 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862))))))))

(assert (=> d!739862 (= (++!7326 (charsOf!2857 lt!917632) (printWithSeparatorTokenWhenNeededRec!441 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862))) lt!917814)))

(declare-fun b!2611859 () Bool)

(declare-fun res!1099472 () Bool)

(assert (=> b!2611859 (=> (not res!1099472) (not e!1648044))))

(declare-fun height!1355 (Conc!9374) Int)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!2611859 (= res!1099472 (>= (height!1355 (++!7328 (c!419708 (charsOf!2857 lt!917632)) (c!419708 (printWithSeparatorTokenWhenNeededRec!441 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862))))) (max!0 (height!1355 (c!419708 (charsOf!2857 lt!917632))) (height!1355 (c!419708 (printWithSeparatorTokenWhenNeededRec!441 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862)))))))))

(declare-fun b!2611858 () Bool)

(declare-fun res!1099473 () Bool)

(assert (=> b!2611858 (=> (not res!1099473) (not e!1648044))))

(assert (=> b!2611858 (= res!1099473 (<= (height!1355 (++!7328 (c!419708 (charsOf!2857 lt!917632)) (c!419708 (printWithSeparatorTokenWhenNeededRec!441 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862))))) (+ (max!0 (height!1355 (c!419708 (charsOf!2857 lt!917632))) (height!1355 (c!419708 (printWithSeparatorTokenWhenNeededRec!441 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862))))) 1)))))

(declare-fun b!2611860 () Bool)

(declare-fun ++!7329 (List!30292 List!30292) List!30292)

(assert (=> b!2611860 (= e!1648044 (= (list!11330 lt!917814) (++!7329 (list!11330 (charsOf!2857 lt!917632)) (list!11330 (printWithSeparatorTokenWhenNeededRec!441 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862))))))))

(declare-fun b!2611857 () Bool)

(declare-fun res!1099471 () Bool)

(assert (=> b!2611857 (=> (not res!1099471) (not e!1648044))))

(declare-fun isBalanced!2849 (Conc!9374) Bool)

(assert (=> b!2611857 (= res!1099471 (isBalanced!2849 (++!7328 (c!419708 (charsOf!2857 lt!917632)) (c!419708 (printWithSeparatorTokenWhenNeededRec!441 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862))))))))

(assert (= (and d!739862 res!1099470) b!2611857))

(assert (= (and b!2611857 res!1099471) b!2611858))

(assert (= (and b!2611858 res!1099473) b!2611859))

(assert (= (and b!2611859 res!1099472) b!2611860))

(declare-fun m!2946419 () Bool)

(assert (=> b!2611859 m!2946419))

(declare-fun m!2946421 () Bool)

(assert (=> b!2611859 m!2946421))

(declare-fun m!2946425 () Bool)

(assert (=> b!2611859 m!2946425))

(assert (=> b!2611859 m!2946419))

(declare-fun m!2946431 () Bool)

(assert (=> b!2611859 m!2946431))

(assert (=> b!2611859 m!2946421))

(assert (=> b!2611859 m!2946425))

(declare-fun m!2946433 () Bool)

(assert (=> b!2611859 m!2946433))

(assert (=> b!2611858 m!2946419))

(assert (=> b!2611858 m!2946421))

(assert (=> b!2611858 m!2946425))

(assert (=> b!2611858 m!2946419))

(assert (=> b!2611858 m!2946431))

(assert (=> b!2611858 m!2946421))

(assert (=> b!2611858 m!2946425))

(assert (=> b!2611858 m!2946433))

(assert (=> b!2611857 m!2946419))

(assert (=> b!2611857 m!2946419))

(declare-fun m!2946435 () Bool)

(assert (=> b!2611857 m!2946435))

(declare-fun m!2946437 () Bool)

(assert (=> b!2611860 m!2946437))

(assert (=> b!2611860 m!2946001))

(declare-fun m!2946439 () Bool)

(assert (=> b!2611860 m!2946439))

(assert (=> b!2611860 m!2946003))

(declare-fun m!2946441 () Bool)

(assert (=> b!2611860 m!2946441))

(assert (=> b!2611860 m!2946439))

(assert (=> b!2611860 m!2946441))

(declare-fun m!2946443 () Bool)

(assert (=> b!2611860 m!2946443))

(declare-fun m!2946445 () Bool)

(assert (=> d!739862 m!2946445))

(assert (=> d!739862 m!2946419))

(assert (=> b!2611497 d!739862))

(declare-fun d!739870 () Bool)

(declare-fun lt!917818 () BalanceConc!18362)

(assert (=> d!739870 (= (list!11330 lt!917818) (originalCharacters!5332 lt!917632))))

(assert (=> d!739870 (= lt!917818 (dynLambda!12796 (toChars!6327 (transformation!4566 (rule!6936 lt!917632))) (value!147737 lt!917632)))))

(assert (=> d!739870 (= (charsOf!2857 lt!917632) lt!917818)))

(declare-fun b_lambda!78335 () Bool)

(assert (=> (not b_lambda!78335) (not d!739870)))

(declare-fun tb!142123 () Bool)

(declare-fun t!214187 () Bool)

(assert (=> (and b!2611507 (= (toChars!6327 (transformation!4566 (h!35613 rules!1726))) (toChars!6327 (transformation!4566 (rule!6936 lt!917632)))) t!214187) tb!142123))

(declare-fun b!2611869 () Bool)

(declare-fun e!1648053 () Bool)

(declare-fun tp!829769 () Bool)

(assert (=> b!2611869 (= e!1648053 (and (inv!40871 (c!419708 (dynLambda!12796 (toChars!6327 (transformation!4566 (rule!6936 lt!917632))) (value!147737 lt!917632)))) tp!829769))))

(declare-fun result!176810 () Bool)

(assert (=> tb!142123 (= result!176810 (and (inv!40872 (dynLambda!12796 (toChars!6327 (transformation!4566 (rule!6936 lt!917632))) (value!147737 lt!917632))) e!1648053))))

(assert (= tb!142123 b!2611869))

(declare-fun m!2946451 () Bool)

(assert (=> b!2611869 m!2946451))

(declare-fun m!2946453 () Bool)

(assert (=> tb!142123 m!2946453))

(assert (=> d!739870 t!214187))

(declare-fun b_and!191059 () Bool)

(assert (= b_and!191051 (and (=> t!214187 result!176810) b_and!191059)))

(declare-fun t!214189 () Bool)

(declare-fun tb!142125 () Bool)

(assert (=> (and b!2611491 (= (toChars!6327 (transformation!4566 (rule!6936 separatorToken!156))) (toChars!6327 (transformation!4566 (rule!6936 lt!917632)))) t!214189) tb!142125))

(declare-fun result!176812 () Bool)

(assert (= result!176812 result!176810))

(assert (=> d!739870 t!214189))

(declare-fun b_and!191061 () Bool)

(assert (= b_and!191053 (and (=> t!214189 result!176812) b_and!191061)))

(declare-fun m!2946455 () Bool)

(assert (=> d!739870 m!2946455))

(declare-fun m!2946457 () Bool)

(assert (=> d!739870 m!2946457))

(assert (=> b!2611497 d!739870))

(declare-fun d!739874 () Bool)

(assert (=> d!739874 true))

(declare-fun lt!917824 () Bool)

(declare-fun lambda!97797 () Int)

(declare-fun forall!6266 (List!30293 Int) Bool)

(assert (=> d!739874 (= lt!917824 (forall!6266 rules!1726 lambda!97797))))

(declare-fun e!1648058 () Bool)

(assert (=> d!739874 (= lt!917824 e!1648058)))

(declare-fun res!1099486 () Bool)

(assert (=> d!739874 (=> res!1099486 e!1648058)))

(assert (=> d!739874 (= res!1099486 (not (is-Cons!30193 rules!1726)))))

(assert (=> d!739874 (= (rulesValidInductive!1600 thiss!14197 rules!1726) lt!917824)))

(declare-fun b!2611874 () Bool)

(declare-fun e!1648059 () Bool)

(assert (=> b!2611874 (= e!1648058 e!1648059)))

(declare-fun res!1099487 () Bool)

(assert (=> b!2611874 (=> (not res!1099487) (not e!1648059))))

(declare-fun ruleValid!1532 (LexerInterface!4163 Rule!8932) Bool)

(assert (=> b!2611874 (= res!1099487 (ruleValid!1532 thiss!14197 (h!35613 rules!1726)))))

(declare-fun b!2611875 () Bool)

(assert (=> b!2611875 (= e!1648059 (rulesValidInductive!1600 thiss!14197 (t!214154 rules!1726)))))

(assert (= (and d!739874 (not res!1099486)) b!2611874))

(assert (= (and b!2611874 res!1099487) b!2611875))

(declare-fun m!2946463 () Bool)

(assert (=> d!739874 m!2946463))

(declare-fun m!2946465 () Bool)

(assert (=> b!2611874 m!2946465))

(declare-fun m!2946467 () Bool)

(assert (=> b!2611875 m!2946467))

(assert (=> b!2611497 d!739874))

(declare-fun b!2611882 () Bool)

(declare-fun e!1648062 () Bool)

(declare-fun tp_is_empty!13727 () Bool)

(declare-fun tp!829772 () Bool)

(assert (=> b!2611882 (= e!1648062 (and tp_is_empty!13727 tp!829772))))

(assert (=> b!2611490 (= tp!829731 e!1648062)))

(assert (= (and b!2611490 (is-Cons!30192 (originalCharacters!5332 separatorToken!156))) b!2611882))

(declare-fun tp!829779 () Bool)

(declare-fun tp!829780 () Bool)

(declare-fun e!1648068 () Bool)

(declare-fun b!2611891 () Bool)

(assert (=> b!2611891 (= e!1648068 (and (inv!40864 (left!23236 (c!419709 v!6381))) tp!829780 (inv!40864 (right!23566 (c!419709 v!6381))) tp!829779))))

(declare-fun b!2611893 () Bool)

(declare-fun e!1648067 () Bool)

(declare-fun tp!829781 () Bool)

(assert (=> b!2611893 (= e!1648067 tp!829781)))

(declare-fun b!2611892 () Bool)

(declare-fun inv!40875 (IArray!18755) Bool)

(assert (=> b!2611892 (= e!1648068 (and (inv!40875 (xs!12359 (c!419709 v!6381))) e!1648067))))

(assert (=> b!2611504 (= tp!829732 (and (inv!40864 (c!419709 v!6381)) e!1648068))))

(assert (= (and b!2611504 (is-Node!9375 (c!419709 v!6381))) b!2611891))

(assert (= b!2611892 b!2611893))

(assert (= (and b!2611504 (is-Leaf!14399 (c!419709 v!6381))) b!2611892))

(declare-fun m!2946469 () Bool)

(assert (=> b!2611891 m!2946469))

(declare-fun m!2946471 () Bool)

(assert (=> b!2611891 m!2946471))

(declare-fun m!2946473 () Bool)

(assert (=> b!2611892 m!2946473))

(assert (=> b!2611504 m!2945959))

(declare-fun b!2611905 () Bool)

(declare-fun e!1648071 () Bool)

(declare-fun tp!829793 () Bool)

(declare-fun tp!829796 () Bool)

(assert (=> b!2611905 (= e!1648071 (and tp!829793 tp!829796))))

(assert (=> b!2611492 (= tp!829729 e!1648071)))

(declare-fun b!2611907 () Bool)

(declare-fun tp!829794 () Bool)

(declare-fun tp!829795 () Bool)

(assert (=> b!2611907 (= e!1648071 (and tp!829794 tp!829795))))

(declare-fun b!2611906 () Bool)

(declare-fun tp!829792 () Bool)

(assert (=> b!2611906 (= e!1648071 tp!829792)))

(declare-fun b!2611904 () Bool)

(assert (=> b!2611904 (= e!1648071 tp_is_empty!13727)))

(assert (= (and b!2611492 (is-ElementMatch!7710 (regex!4566 (h!35613 rules!1726)))) b!2611904))

(assert (= (and b!2611492 (is-Concat!12498 (regex!4566 (h!35613 rules!1726)))) b!2611905))

(assert (= (and b!2611492 (is-Star!7710 (regex!4566 (h!35613 rules!1726)))) b!2611906))

(assert (= (and b!2611492 (is-Union!7710 (regex!4566 (h!35613 rules!1726)))) b!2611907))

(declare-fun b!2611910 () Bool)

(declare-fun e!1648074 () Bool)

(assert (=> b!2611910 (= e!1648074 true)))

(declare-fun b!2611909 () Bool)

(declare-fun e!1648073 () Bool)

(assert (=> b!2611909 (= e!1648073 e!1648074)))

(declare-fun b!2611908 () Bool)

(declare-fun e!1648072 () Bool)

(assert (=> b!2611908 (= e!1648072 e!1648073)))

(assert (=> b!2611516 e!1648072))

(assert (= b!2611909 b!2611910))

(assert (= b!2611908 b!2611909))

(assert (= (and b!2611516 (is-Cons!30193 (t!214154 rules!1726))) b!2611908))

(assert (=> b!2611910 (< (dynLambda!12790 order!16065 (toValue!6468 (transformation!4566 (h!35613 (t!214154 rules!1726))))) (dynLambda!12791 order!16067 lambda!97766))))

(assert (=> b!2611910 (< (dynLambda!12792 order!16069 (toChars!6327 (transformation!4566 (h!35613 (t!214154 rules!1726))))) (dynLambda!12791 order!16067 lambda!97766))))

(declare-fun b!2611912 () Bool)

(declare-fun e!1648075 () Bool)

(declare-fun tp!829798 () Bool)

(declare-fun tp!829801 () Bool)

(assert (=> b!2611912 (= e!1648075 (and tp!829798 tp!829801))))

(assert (=> b!2611496 (= tp!829733 e!1648075)))

(declare-fun b!2611914 () Bool)

(declare-fun tp!829799 () Bool)

(declare-fun tp!829800 () Bool)

(assert (=> b!2611914 (= e!1648075 (and tp!829799 tp!829800))))

(declare-fun b!2611913 () Bool)

(declare-fun tp!829797 () Bool)

(assert (=> b!2611913 (= e!1648075 tp!829797)))

(declare-fun b!2611911 () Bool)

(assert (=> b!2611911 (= e!1648075 tp_is_empty!13727)))

(assert (= (and b!2611496 (is-ElementMatch!7710 (regex!4566 (rule!6936 separatorToken!156)))) b!2611911))

(assert (= (and b!2611496 (is-Concat!12498 (regex!4566 (rule!6936 separatorToken!156)))) b!2611912))

(assert (= (and b!2611496 (is-Star!7710 (regex!4566 (rule!6936 separatorToken!156)))) b!2611913))

(assert (= (and b!2611496 (is-Union!7710 (regex!4566 (rule!6936 separatorToken!156)))) b!2611914))

(declare-fun b!2611925 () Bool)

(declare-fun b_free!73485 () Bool)

(declare-fun b_next!74189 () Bool)

(assert (=> b!2611925 (= b_free!73485 (not b_next!74189))))

(declare-fun tp!829811 () Bool)

(declare-fun b_and!191063 () Bool)

(assert (=> b!2611925 (= tp!829811 b_and!191063)))

(declare-fun b_free!73487 () Bool)

(declare-fun b_next!74191 () Bool)

(assert (=> b!2611925 (= b_free!73487 (not b_next!74191))))

(declare-fun tb!142127 () Bool)

(declare-fun t!214191 () Bool)

(assert (=> (and b!2611925 (= (toChars!6327 (transformation!4566 (h!35613 (t!214154 rules!1726)))) (toChars!6327 (transformation!4566 (rule!6936 separatorToken!156)))) t!214191) tb!142127))

(declare-fun result!176822 () Bool)

(assert (= result!176822 result!176798))

(assert (=> b!2611679 t!214191))

(declare-fun t!214193 () Bool)

(declare-fun tb!142129 () Bool)

(assert (=> (and b!2611925 (= (toChars!6327 (transformation!4566 (h!35613 (t!214154 rules!1726)))) (toChars!6327 (transformation!4566 (rule!6936 lt!917632)))) t!214193) tb!142129))

(declare-fun result!176824 () Bool)

(assert (= result!176824 result!176810))

(assert (=> d!739870 t!214193))

(declare-fun tp!829813 () Bool)

(declare-fun b_and!191065 () Bool)

(assert (=> b!2611925 (= tp!829813 (and (=> t!214191 result!176822) (=> t!214193 result!176824) b_and!191065))))

(declare-fun e!1648085 () Bool)

(assert (=> b!2611925 (= e!1648085 (and tp!829811 tp!829813))))

(declare-fun tp!829810 () Bool)

(declare-fun e!1648087 () Bool)

(declare-fun b!2611924 () Bool)

(assert (=> b!2611924 (= e!1648087 (and tp!829810 (inv!40858 (tag!5056 (h!35613 (t!214154 rules!1726)))) (inv!40861 (transformation!4566 (h!35613 (t!214154 rules!1726)))) e!1648085))))

(declare-fun b!2611923 () Bool)

(declare-fun e!1648086 () Bool)

(declare-fun tp!829812 () Bool)

(assert (=> b!2611923 (= e!1648086 (and e!1648087 tp!829812))))

(assert (=> b!2611502 (= tp!829735 e!1648086)))

(assert (= b!2611924 b!2611925))

(assert (= b!2611923 b!2611924))

(assert (= (and b!2611502 (is-Cons!30193 (t!214154 rules!1726))) b!2611923))

(declare-fun m!2946475 () Bool)

(assert (=> b!2611924 m!2946475))

(declare-fun m!2946477 () Bool)

(assert (=> b!2611924 m!2946477))

(declare-fun b_lambda!78337 () Bool)

(assert (= b_lambda!78333 (or b!2611497 b_lambda!78337)))

(declare-fun bs!473937 () Bool)

(declare-fun d!739878 () Bool)

(assert (= bs!473937 (and d!739878 b!2611497)))

(assert (=> bs!473937 (= (dynLambda!12797 lambda!97766 lt!917632) (rulesProduceIndividualToken!1875 thiss!14197 rules!1726 lt!917632))))

(declare-fun m!2946479 () Bool)

(assert (=> bs!473937 m!2946479))

(assert (=> d!739860 d!739878))

(declare-fun b_lambda!78339 () Bool)

(assert (= b_lambda!78327 (or (and b!2611507 b_free!73471 (= (toChars!6327 (transformation!4566 (h!35613 rules!1726))) (toChars!6327 (transformation!4566 (rule!6936 separatorToken!156))))) (and b!2611491 b_free!73475) (and b!2611925 b_free!73487 (= (toChars!6327 (transformation!4566 (h!35613 (t!214154 rules!1726)))) (toChars!6327 (transformation!4566 (rule!6936 separatorToken!156))))) b_lambda!78339)))

(push 1)

(assert (not b_next!74177))

(assert (not b!2611824))

(assert b_and!191035)

(assert (not d!739786))

(assert (not d!739822))

(assert (not b!2611679))

(assert (not b!2611721))

(assert (not b!2611619))

(assert (not d!739810))

(assert (not d!739800))

(assert (not d!739824))

(assert (not b!2611720))

(assert (not b_next!74175))

(assert (not bm!167567))

(assert (not d!739870))

(assert (not bm!167566))

(assert (not b!2611628))

(assert (not d!739778))

(assert (not b!2611685))

(assert (not d!739806))

(assert (not d!739782))

(assert (not b!2611668))

(assert (not b_next!74179))

(assert (not b!2611706))

(assert (not b!2611832))

(assert (not bs!473937))

(assert (not b!2611704))

(assert (not d!739830))

(assert (not b!2611874))

(assert (not b!2611818))

(assert (not b!2611705))

(assert (not b!2611906))

(assert (not b!2611617))

(assert (not b!2611680))

(assert (not d!739860))

(assert (not b!2611858))

(assert (not b!2611593))

(assert (not b!2611715))

(assert b_and!191059)

(assert (not d!739784))

(assert (not b!2611857))

(assert (not b_lambda!78335))

(assert (not d!739820))

(assert (not b!2611859))

(assert (not bm!167564))

(assert (not d!739798))

(assert (not b!2611827))

(assert (not b_lambda!78339))

(assert b_and!191039)

(assert (not b!2611923))

(assert (not b!2611913))

(assert (not b!2611892))

(assert (not b!2611820))

(assert (not d!739818))

(assert (not b!2611632))

(assert (not bm!167536))

(assert (not b!2611875))

(assert (not b!2611641))

(assert (not bm!167537))

(assert (not b!2611674))

(assert (not b_next!74189))

(assert (not tb!142115))

(assert (not d!739874))

(assert (not b_next!74173))

(assert tp_is_empty!13727)

(assert (not d!739776))

(assert (not d!739770))

(assert (not b!2611669))

(assert b_and!191065)

(assert (not b!2611823))

(assert (not b!2611882))

(assert (not d!739814))

(assert (not d!739808))

(assert (not bm!167563))

(assert (not b!2611908))

(assert (not b_lambda!78337))

(assert (not d!739796))

(assert (not b_next!74191))

(assert (not b!2611905))

(assert (not b!2611653))

(assert (not b!2611635))

(assert (not b!2611662))

(assert b_and!191063)

(assert (not b!2611714))

(assert (not b!2611912))

(assert (not d!739812))

(assert (not d!739832))

(assert (not b!2611629))

(assert (not b!2611651))

(assert (not b!2611722))

(assert (not b!2611869))

(assert (not b!2611504))

(assert b_and!191061)

(assert (not b!2611713))

(assert (not b!2611924))

(assert (not b!2611907))

(assert (not b!2611860))

(assert (not tb!142123))

(assert (not b!2611691))

(assert (not d!739780))

(assert (not b!2611627))

(assert (not b!2611819))

(assert (not b!2611891))

(assert (not b!2611914))

(assert (not b!2611893))

(assert (not b!2611643))

(assert (not d!739862))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!74175))

(assert (not b_next!74179))

(assert b_and!191059)

(assert (not b_next!74177))

(assert b_and!191039)

(assert b_and!191035)

(assert (not b_next!74189))

(assert (not b_next!74173))

(assert b_and!191065)

(assert (not b_next!74191))

(assert b_and!191063)

(assert b_and!191061)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!739906 () Bool)

(declare-fun lt!917852 () Bool)

(assert (=> d!739906 (= lt!917852 (isEmpty!17245 (list!11330 (_2!17423 lt!917701))))))

(declare-fun isEmpty!17249 (Conc!9374) Bool)

(assert (=> d!739906 (= lt!917852 (isEmpty!17249 (c!419708 (_2!17423 lt!917701))))))

(assert (=> d!739906 (= (isEmpty!17246 (_2!17423 lt!917701)) lt!917852)))

(declare-fun bs!473946 () Bool)

(assert (= bs!473946 d!739906))

(declare-fun m!2946557 () Bool)

(assert (=> bs!473946 m!2946557))

(assert (=> bs!473946 m!2946557))

(declare-fun m!2946559 () Bool)

(assert (=> bs!473946 m!2946559))

(declare-fun m!2946561 () Bool)

(assert (=> bs!473946 m!2946561))

(assert (=> b!2611714 d!739906))

(declare-fun b!2612041 () Bool)

(declare-fun e!1648163 () List!30294)

(assert (=> b!2612041 (= e!1648163 Nil!30194)))

(declare-fun d!739908 () Bool)

(declare-fun e!1648165 () Bool)

(assert (=> d!739908 e!1648165))

(declare-fun res!1099515 () Bool)

(assert (=> d!739908 (=> (not res!1099515) (not e!1648165))))

(declare-fun lt!917853 () List!30294)

(assert (=> d!739908 (= res!1099515 (set.subset (content!4276 lt!917853) (content!4276 (t!214155 lt!917628))))))

(assert (=> d!739908 (= lt!917853 e!1648163)))

(declare-fun c!419795 () Bool)

(assert (=> d!739908 (= c!419795 (is-Nil!30194 (t!214155 lt!917628)))))

(assert (=> d!739908 (= (drop!1562 (t!214155 lt!917628) (- (+ 1 from!862) 1)) lt!917853)))

(declare-fun bm!167572 () Bool)

(declare-fun call!167577 () Int)

(assert (=> bm!167572 (= call!167577 (size!23374 (t!214155 lt!917628)))))

(declare-fun b!2612042 () Bool)

(declare-fun e!1648164 () Int)

(assert (=> b!2612042 (= e!1648164 call!167577)))

(declare-fun b!2612043 () Bool)

(declare-fun e!1648162 () Int)

(assert (=> b!2612043 (= e!1648164 e!1648162)))

(declare-fun c!419796 () Bool)

(assert (=> b!2612043 (= c!419796 (>= (- (+ 1 from!862) 1) call!167577))))

(declare-fun b!2612044 () Bool)

(assert (=> b!2612044 (= e!1648162 (- call!167577 (- (+ 1 from!862) 1)))))

(declare-fun b!2612045 () Bool)

(declare-fun e!1648161 () List!30294)

(assert (=> b!2612045 (= e!1648161 (t!214155 lt!917628))))

(declare-fun b!2612046 () Bool)

(assert (=> b!2612046 (= e!1648165 (= (size!23374 lt!917853) e!1648164))))

(declare-fun c!419798 () Bool)

(assert (=> b!2612046 (= c!419798 (<= (- (+ 1 from!862) 1) 0))))

(declare-fun b!2612047 () Bool)

(assert (=> b!2612047 (= e!1648162 0)))

(declare-fun b!2612048 () Bool)

(assert (=> b!2612048 (= e!1648161 (drop!1562 (t!214155 (t!214155 lt!917628)) (- (- (+ 1 from!862) 1) 1)))))

(declare-fun b!2612049 () Bool)

(assert (=> b!2612049 (= e!1648163 e!1648161)))

(declare-fun c!419797 () Bool)

(assert (=> b!2612049 (= c!419797 (<= (- (+ 1 from!862) 1) 0))))

(assert (= (and d!739908 c!419795) b!2612041))

(assert (= (and d!739908 (not c!419795)) b!2612049))

(assert (= (and b!2612049 c!419797) b!2612045))

(assert (= (and b!2612049 (not c!419797)) b!2612048))

(assert (= (and d!739908 res!1099515) b!2612046))

(assert (= (and b!2612046 c!419798) b!2612042))

(assert (= (and b!2612046 (not c!419798)) b!2612043))

(assert (= (and b!2612043 c!419796) b!2612047))

(assert (= (and b!2612043 (not c!419796)) b!2612044))

(assert (= (or b!2612042 b!2612043 b!2612044) bm!167572))

(declare-fun m!2946563 () Bool)

(assert (=> d!739908 m!2946563))

(declare-fun m!2946565 () Bool)

(assert (=> d!739908 m!2946565))

(declare-fun m!2946567 () Bool)

(assert (=> bm!167572 m!2946567))

(declare-fun m!2946569 () Bool)

(assert (=> b!2612046 m!2946569))

(declare-fun m!2946571 () Bool)

(assert (=> b!2612048 m!2946571))

(assert (=> b!2611619 d!739908))

(declare-fun d!739910 () Bool)

(declare-fun lt!917856 () Int)

(assert (=> d!739910 (>= lt!917856 0)))

(declare-fun e!1648168 () Int)

(assert (=> d!739910 (= lt!917856 e!1648168)))

(declare-fun c!419801 () Bool)

(assert (=> d!739910 (= c!419801 (is-Nil!30194 lt!917667))))

(assert (=> d!739910 (= (size!23374 lt!917667) lt!917856)))

(declare-fun b!2612054 () Bool)

(assert (=> b!2612054 (= e!1648168 0)))

(declare-fun b!2612055 () Bool)

(assert (=> b!2612055 (= e!1648168 (+ 1 (size!23374 (t!214155 lt!917667))))))

(assert (= (and d!739910 c!419801) b!2612054))

(assert (= (and d!739910 (not c!419801)) b!2612055))

(declare-fun m!2946573 () Bool)

(assert (=> b!2612055 m!2946573))

(assert (=> b!2611617 d!739910))

(declare-fun b!2612064 () Bool)

(declare-fun e!1648175 () Bool)

(declare-fun call!167580 () Bool)

(assert (=> b!2612064 (= e!1648175 call!167580)))

(declare-fun bm!167575 () Bool)

(assert (=> bm!167575 (= call!167580 (ruleDisjointCharsFromAllFromOtherType!507 (h!35613 rules!1726) (t!214154 rules!1726)))))

(declare-fun b!2612065 () Bool)

(declare-fun e!1648177 () Bool)

(declare-fun e!1648176 () Bool)

(assert (=> b!2612065 (= e!1648177 e!1648176)))

(declare-fun res!1099521 () Bool)

(assert (=> b!2612065 (= res!1099521 (not (is-Cons!30193 rules!1726)))))

(assert (=> b!2612065 (=> res!1099521 e!1648176)))

(declare-fun d!739912 () Bool)

(declare-fun c!419804 () Bool)

(assert (=> d!739912 (= c!419804 (and (is-Cons!30193 rules!1726) (not (= (isSeparator!4566 (h!35613 rules!1726)) (isSeparator!4566 (h!35613 rules!1726))))))))

(assert (=> d!739912 (= (ruleDisjointCharsFromAllFromOtherType!507 (h!35613 rules!1726) rules!1726) e!1648177)))

(declare-fun b!2612066 () Bool)

(assert (=> b!2612066 (= e!1648176 call!167580)))

(declare-fun b!2612067 () Bool)

(assert (=> b!2612067 (= e!1648177 e!1648175)))

(declare-fun res!1099522 () Bool)

(declare-fun rulesUseDisjointChars!233 (Rule!8932 Rule!8932) Bool)

(assert (=> b!2612067 (= res!1099522 (rulesUseDisjointChars!233 (h!35613 rules!1726) (h!35613 rules!1726)))))

(assert (=> b!2612067 (=> (not res!1099522) (not e!1648175))))

(assert (= (and d!739912 c!419804) b!2612067))

(assert (= (and d!739912 (not c!419804)) b!2612065))

(assert (= (and b!2612067 res!1099522) b!2612064))

(assert (= (and b!2612065 (not res!1099521)) b!2612066))

(assert (= (or b!2612064 b!2612066) bm!167575))

(declare-fun m!2946575 () Bool)

(assert (=> bm!167575 m!2946575))

(declare-fun m!2946577 () Bool)

(assert (=> b!2612067 m!2946577))

(assert (=> b!2611720 d!739912))

(assert (=> b!2611632 d!739812))

(declare-fun d!739914 () Bool)

(declare-fun lt!917857 () Token!8602)

(assert (=> d!739914 (= lt!917857 (apply!7095 (list!11328 v!6381) (+ 1 from!862)))))

(assert (=> d!739914 (= lt!917857 (apply!7098 (c!419709 v!6381) (+ 1 from!862)))))

(declare-fun e!1648178 () Bool)

(assert (=> d!739914 e!1648178))

(declare-fun res!1099523 () Bool)

(assert (=> d!739914 (=> (not res!1099523) (not e!1648178))))

(assert (=> d!739914 (= res!1099523 (<= 0 (+ 1 from!862)))))

(assert (=> d!739914 (= (apply!7094 v!6381 (+ 1 from!862)) lt!917857)))

(declare-fun b!2612068 () Bool)

(assert (=> b!2612068 (= e!1648178 (< (+ 1 from!862) (size!23371 v!6381)))))

(assert (= (and d!739914 res!1099523) b!2612068))

(assert (=> d!739914 m!2945991))

(assert (=> d!739914 m!2945991))

(declare-fun m!2946579 () Bool)

(assert (=> d!739914 m!2946579))

(declare-fun m!2946581 () Bool)

(assert (=> d!739914 m!2946581))

(assert (=> b!2612068 m!2945967))

(assert (=> bm!167566 d!739914))

(declare-fun d!739916 () Bool)

(declare-fun e!1648179 () Bool)

(assert (=> d!739916 e!1648179))

(declare-fun res!1099524 () Bool)

(assert (=> d!739916 (=> (not res!1099524) (not e!1648179))))

(assert (=> d!739916 (= res!1099524 (appendAssocInst!619 (c!419708 call!167570) (c!419708 (ite c!419770 lt!917792 call!167569))))))

(declare-fun lt!917858 () BalanceConc!18362)

(assert (=> d!739916 (= lt!917858 (BalanceConc!18363 (++!7328 (c!419708 call!167570) (c!419708 (ite c!419770 lt!917792 call!167569)))))))

(assert (=> d!739916 (= (++!7326 call!167570 (ite c!419770 lt!917792 call!167569)) lt!917858)))

(declare-fun b!2612071 () Bool)

(declare-fun res!1099526 () Bool)

(assert (=> b!2612071 (=> (not res!1099526) (not e!1648179))))

(assert (=> b!2612071 (= res!1099526 (>= (height!1355 (++!7328 (c!419708 call!167570) (c!419708 (ite c!419770 lt!917792 call!167569)))) (max!0 (height!1355 (c!419708 call!167570)) (height!1355 (c!419708 (ite c!419770 lt!917792 call!167569))))))))

(declare-fun b!2612070 () Bool)

(declare-fun res!1099527 () Bool)

(assert (=> b!2612070 (=> (not res!1099527) (not e!1648179))))

(assert (=> b!2612070 (= res!1099527 (<= (height!1355 (++!7328 (c!419708 call!167570) (c!419708 (ite c!419770 lt!917792 call!167569)))) (+ (max!0 (height!1355 (c!419708 call!167570)) (height!1355 (c!419708 (ite c!419770 lt!917792 call!167569)))) 1)))))

(declare-fun b!2612072 () Bool)

(assert (=> b!2612072 (= e!1648179 (= (list!11330 lt!917858) (++!7329 (list!11330 call!167570) (list!11330 (ite c!419770 lt!917792 call!167569)))))))

(declare-fun b!2612069 () Bool)

(declare-fun res!1099525 () Bool)

(assert (=> b!2612069 (=> (not res!1099525) (not e!1648179))))

(assert (=> b!2612069 (= res!1099525 (isBalanced!2849 (++!7328 (c!419708 call!167570) (c!419708 (ite c!419770 lt!917792 call!167569)))))))

(assert (= (and d!739916 res!1099524) b!2612069))

(assert (= (and b!2612069 res!1099525) b!2612070))

(assert (= (and b!2612070 res!1099527) b!2612071))

(assert (= (and b!2612071 res!1099526) b!2612072))

(declare-fun m!2946583 () Bool)

(assert (=> b!2612071 m!2946583))

(declare-fun m!2946585 () Bool)

(assert (=> b!2612071 m!2946585))

(declare-fun m!2946587 () Bool)

(assert (=> b!2612071 m!2946587))

(assert (=> b!2612071 m!2946583))

(declare-fun m!2946589 () Bool)

(assert (=> b!2612071 m!2946589))

(assert (=> b!2612071 m!2946585))

(assert (=> b!2612071 m!2946587))

(declare-fun m!2946591 () Bool)

(assert (=> b!2612071 m!2946591))

(assert (=> b!2612070 m!2946583))

(assert (=> b!2612070 m!2946585))

(assert (=> b!2612070 m!2946587))

(assert (=> b!2612070 m!2946583))

(assert (=> b!2612070 m!2946589))

(assert (=> b!2612070 m!2946585))

(assert (=> b!2612070 m!2946587))

(assert (=> b!2612070 m!2946591))

(assert (=> b!2612069 m!2946583))

(assert (=> b!2612069 m!2946583))

(declare-fun m!2946593 () Bool)

(assert (=> b!2612069 m!2946593))

(declare-fun m!2946595 () Bool)

(assert (=> b!2612072 m!2946595))

(declare-fun m!2946597 () Bool)

(assert (=> b!2612072 m!2946597))

(declare-fun m!2946599 () Bool)

(assert (=> b!2612072 m!2946599))

(assert (=> b!2612072 m!2946597))

(assert (=> b!2612072 m!2946599))

(declare-fun m!2946601 () Bool)

(assert (=> b!2612072 m!2946601))

(declare-fun m!2946603 () Bool)

(assert (=> d!739916 m!2946603))

(assert (=> d!739916 m!2946583))

(assert (=> bm!167567 d!739916))

(declare-fun b!2612073 () Bool)

(declare-fun e!1648182 () List!30294)

(assert (=> b!2612073 (= e!1648182 Nil!30194)))

(declare-fun d!739918 () Bool)

(declare-fun e!1648184 () Bool)

(assert (=> d!739918 e!1648184))

(declare-fun res!1099528 () Bool)

(assert (=> d!739918 (=> (not res!1099528) (not e!1648184))))

(declare-fun lt!917859 () List!30294)

(assert (=> d!739918 (= res!1099528 (set.subset (content!4276 lt!917859) (content!4276 lt!917795)))))

(assert (=> d!739918 (= lt!917859 e!1648182)))

(declare-fun c!419805 () Bool)

(assert (=> d!739918 (= c!419805 (is-Nil!30194 lt!917795))))

(assert (=> d!739918 (= (drop!1562 lt!917795 (+ 1 from!862)) lt!917859)))

(declare-fun bm!167576 () Bool)

(declare-fun call!167581 () Int)

(assert (=> bm!167576 (= call!167581 (size!23374 lt!917795))))

(declare-fun b!2612074 () Bool)

(declare-fun e!1648183 () Int)

(assert (=> b!2612074 (= e!1648183 call!167581)))

(declare-fun b!2612075 () Bool)

(declare-fun e!1648181 () Int)

(assert (=> b!2612075 (= e!1648183 e!1648181)))

(declare-fun c!419806 () Bool)

(assert (=> b!2612075 (= c!419806 (>= (+ 1 from!862) call!167581))))

(declare-fun b!2612076 () Bool)

(assert (=> b!2612076 (= e!1648181 (- call!167581 (+ 1 from!862)))))

(declare-fun b!2612077 () Bool)

(declare-fun e!1648180 () List!30294)

(assert (=> b!2612077 (= e!1648180 lt!917795)))

(declare-fun b!2612078 () Bool)

(assert (=> b!2612078 (= e!1648184 (= (size!23374 lt!917859) e!1648183))))

(declare-fun c!419808 () Bool)

(assert (=> b!2612078 (= c!419808 (<= (+ 1 from!862) 0))))

(declare-fun b!2612079 () Bool)

(assert (=> b!2612079 (= e!1648181 0)))

(declare-fun b!2612080 () Bool)

(assert (=> b!2612080 (= e!1648180 (drop!1562 (t!214155 lt!917795) (- (+ 1 from!862) 1)))))

(declare-fun b!2612081 () Bool)

(assert (=> b!2612081 (= e!1648182 e!1648180)))

(declare-fun c!419807 () Bool)

(assert (=> b!2612081 (= c!419807 (<= (+ 1 from!862) 0))))

(assert (= (and d!739918 c!419805) b!2612073))

(assert (= (and d!739918 (not c!419805)) b!2612081))

(assert (= (and b!2612081 c!419807) b!2612077))

(assert (= (and b!2612081 (not c!419807)) b!2612080))

(assert (= (and d!739918 res!1099528) b!2612078))

(assert (= (and b!2612078 c!419808) b!2612074))

(assert (= (and b!2612078 (not c!419808)) b!2612075))

(assert (= (and b!2612075 c!419806) b!2612079))

(assert (= (and b!2612075 (not c!419806)) b!2612076))

(assert (= (or b!2612074 b!2612075 b!2612076) bm!167576))

(declare-fun m!2946605 () Bool)

(assert (=> d!739918 m!2946605))

(declare-fun m!2946607 () Bool)

(assert (=> d!739918 m!2946607))

(declare-fun m!2946609 () Bool)

(assert (=> bm!167576 m!2946609))

(declare-fun m!2946611 () Bool)

(assert (=> b!2612078 m!2946611))

(declare-fun m!2946613 () Bool)

(assert (=> b!2612080 m!2946613))

(assert (=> b!2611823 d!739918))

(declare-fun d!739920 () Bool)

(assert (=> d!739920 (= (tail!4199 (drop!1562 lt!917799 (+ 1 from!862))) (t!214155 (drop!1562 lt!917799 (+ 1 from!862))))))

(assert (=> b!2611823 d!739920))

(declare-fun d!739922 () Bool)

(declare-fun lt!917860 () Token!8602)

(assert (=> d!739922 (contains!5609 lt!917795 lt!917860)))

(declare-fun e!1648185 () Token!8602)

(assert (=> d!739922 (= lt!917860 e!1648185)))

(declare-fun c!419809 () Bool)

(assert (=> d!739922 (= c!419809 (= (+ 1 from!862) 0))))

(declare-fun e!1648186 () Bool)

(assert (=> d!739922 e!1648186))

(declare-fun res!1099529 () Bool)

(assert (=> d!739922 (=> (not res!1099529) (not e!1648186))))

(assert (=> d!739922 (= res!1099529 (<= 0 (+ 1 from!862)))))

(assert (=> d!739922 (= (apply!7095 lt!917795 (+ 1 from!862)) lt!917860)))

(declare-fun b!2612082 () Bool)

(assert (=> b!2612082 (= e!1648186 (< (+ 1 from!862) (size!23374 lt!917795)))))

(declare-fun b!2612083 () Bool)

(assert (=> b!2612083 (= e!1648185 (head!5961 lt!917795))))

(declare-fun b!2612084 () Bool)

(assert (=> b!2612084 (= e!1648185 (apply!7095 (tail!4199 lt!917795) (- (+ 1 from!862) 1)))))

(assert (= (and d!739922 res!1099529) b!2612082))

(assert (= (and d!739922 c!419809) b!2612083))

(assert (= (and d!739922 (not c!419809)) b!2612084))

(declare-fun m!2946615 () Bool)

(assert (=> d!739922 m!2946615))

(assert (=> b!2612082 m!2946609))

(declare-fun m!2946617 () Bool)

(assert (=> b!2612083 m!2946617))

(declare-fun m!2946619 () Bool)

(assert (=> b!2612084 m!2946619))

(assert (=> b!2612084 m!2946619))

(declare-fun m!2946621 () Bool)

(assert (=> b!2612084 m!2946621))

(assert (=> b!2611823 d!739922))

(assert (=> b!2611823 d!739822))

(declare-fun b!2612085 () Bool)

(declare-fun e!1648189 () List!30294)

(assert (=> b!2612085 (= e!1648189 Nil!30194)))

(declare-fun d!739924 () Bool)

(declare-fun e!1648191 () Bool)

(assert (=> d!739924 e!1648191))

(declare-fun res!1099530 () Bool)

(assert (=> d!739924 (=> (not res!1099530) (not e!1648191))))

(declare-fun lt!917861 () List!30294)

(assert (=> d!739924 (= res!1099530 (set.subset (content!4276 lt!917861) (content!4276 lt!917799)))))

(assert (=> d!739924 (= lt!917861 e!1648189)))

(declare-fun c!419810 () Bool)

(assert (=> d!739924 (= c!419810 (is-Nil!30194 lt!917799))))

(assert (=> d!739924 (= (drop!1562 lt!917799 (+ 1 from!862 1)) lt!917861)))

(declare-fun bm!167577 () Bool)

(declare-fun call!167582 () Int)

(assert (=> bm!167577 (= call!167582 (size!23374 lt!917799))))

(declare-fun b!2612086 () Bool)

(declare-fun e!1648190 () Int)

(assert (=> b!2612086 (= e!1648190 call!167582)))

(declare-fun b!2612087 () Bool)

(declare-fun e!1648188 () Int)

(assert (=> b!2612087 (= e!1648190 e!1648188)))

(declare-fun c!419811 () Bool)

(assert (=> b!2612087 (= c!419811 (>= (+ 1 from!862 1) call!167582))))

(declare-fun b!2612088 () Bool)

(assert (=> b!2612088 (= e!1648188 (- call!167582 (+ 1 from!862 1)))))

(declare-fun b!2612089 () Bool)

(declare-fun e!1648187 () List!30294)

(assert (=> b!2612089 (= e!1648187 lt!917799)))

(declare-fun b!2612090 () Bool)

(assert (=> b!2612090 (= e!1648191 (= (size!23374 lt!917861) e!1648190))))

(declare-fun c!419813 () Bool)

(assert (=> b!2612090 (= c!419813 (<= (+ 1 from!862 1) 0))))

(declare-fun b!2612091 () Bool)

(assert (=> b!2612091 (= e!1648188 0)))

(declare-fun b!2612092 () Bool)

(assert (=> b!2612092 (= e!1648187 (drop!1562 (t!214155 lt!917799) (- (+ 1 from!862 1) 1)))))

(declare-fun b!2612093 () Bool)

(assert (=> b!2612093 (= e!1648189 e!1648187)))

(declare-fun c!419812 () Bool)

(assert (=> b!2612093 (= c!419812 (<= (+ 1 from!862 1) 0))))

(assert (= (and d!739924 c!419810) b!2612085))

(assert (= (and d!739924 (not c!419810)) b!2612093))

(assert (= (and b!2612093 c!419812) b!2612089))

(assert (= (and b!2612093 (not c!419812)) b!2612092))

(assert (= (and d!739924 res!1099530) b!2612090))

(assert (= (and b!2612090 c!419813) b!2612086))

(assert (= (and b!2612090 (not c!419813)) b!2612087))

(assert (= (and b!2612087 c!419811) b!2612091))

(assert (= (and b!2612087 (not c!419811)) b!2612088))

(assert (= (or b!2612086 b!2612087 b!2612088) bm!167577))

(declare-fun m!2946623 () Bool)

(assert (=> d!739924 m!2946623))

(declare-fun m!2946625 () Bool)

(assert (=> d!739924 m!2946625))

(declare-fun m!2946627 () Bool)

(assert (=> bm!167577 m!2946627))

(declare-fun m!2946629 () Bool)

(assert (=> b!2612090 m!2946629))

(declare-fun m!2946631 () Bool)

(assert (=> b!2612092 m!2946631))

(assert (=> b!2611823 d!739924))

(declare-fun d!739926 () Bool)

(assert (=> d!739926 (= (head!5961 (drop!1562 lt!917795 (+ 1 from!862))) (apply!7095 lt!917795 (+ 1 from!862)))))

(declare-fun lt!917862 () Unit!44164)

(assert (=> d!739926 (= lt!917862 (choose!15497 lt!917795 (+ 1 from!862)))))

(declare-fun e!1648192 () Bool)

(assert (=> d!739926 e!1648192))

(declare-fun res!1099531 () Bool)

(assert (=> d!739926 (=> (not res!1099531) (not e!1648192))))

(assert (=> d!739926 (= res!1099531 (>= (+ 1 from!862) 0))))

(assert (=> d!739926 (= (lemmaDropApply!777 lt!917795 (+ 1 from!862)) lt!917862)))

(declare-fun b!2612094 () Bool)

(assert (=> b!2612094 (= e!1648192 (< (+ 1 from!862) (size!23374 lt!917795)))))

(assert (= (and d!739926 res!1099531) b!2612094))

(assert (=> d!739926 m!2946357))

(assert (=> d!739926 m!2946357))

(assert (=> d!739926 m!2946365))

(assert (=> d!739926 m!2946359))

(declare-fun m!2946633 () Bool)

(assert (=> d!739926 m!2946633))

(assert (=> b!2612094 m!2946609))

(assert (=> b!2611823 d!739926))

(declare-fun bs!473947 () Bool)

(declare-fun d!739928 () Bool)

(assert (= bs!473947 (and d!739928 b!2611497)))

(declare-fun lambda!97803 () Int)

(assert (=> bs!473947 (not (= lambda!97803 lambda!97766))))

(declare-fun bs!473948 () Bool)

(assert (= bs!473948 (and d!739928 d!739832)))

(assert (=> bs!473948 (= lambda!97803 lambda!97793)))

(declare-fun bs!473949 () Bool)

(assert (= bs!473949 (and d!739928 d!739800)))

(assert (=> bs!473949 (not (= lambda!97803 lambda!97779))))

(declare-fun bs!473950 () Bool)

(assert (= bs!473950 (and d!739928 b!2611823)))

(assert (=> bs!473950 (not (= lambda!97803 lambda!97794))))

(declare-fun bs!473951 () Bool)

(assert (= bs!473951 (and d!739928 b!2611505)))

(assert (=> bs!473951 (= lambda!97803 lambda!97765)))

(declare-fun bs!473952 () Bool)

(declare-fun b!2612100 () Bool)

(assert (= bs!473952 (and b!2612100 b!2611497)))

(declare-fun lambda!97804 () Int)

(assert (=> bs!473952 (= lambda!97804 lambda!97766)))

(declare-fun bs!473953 () Bool)

(assert (= bs!473953 (and b!2612100 d!739832)))

(assert (=> bs!473953 (not (= lambda!97804 lambda!97793))))

(declare-fun bs!473954 () Bool)

(assert (= bs!473954 (and b!2612100 d!739800)))

(assert (=> bs!473954 (= lambda!97804 lambda!97779)))

(declare-fun bs!473955 () Bool)

(assert (= bs!473955 (and b!2612100 b!2611823)))

(assert (=> bs!473955 (= lambda!97804 lambda!97794)))

(declare-fun bs!473956 () Bool)

(assert (= bs!473956 (and b!2612100 d!739928)))

(assert (=> bs!473956 (not (= lambda!97804 lambda!97803))))

(declare-fun bs!473957 () Bool)

(assert (= bs!473957 (and b!2612100 b!2611505)))

(assert (=> bs!473957 (not (= lambda!97804 lambda!97765))))

(declare-fun b!2612106 () Bool)

(declare-fun e!1648201 () Bool)

(assert (=> b!2612106 (= e!1648201 true)))

(declare-fun b!2612105 () Bool)

(declare-fun e!1648200 () Bool)

(assert (=> b!2612105 (= e!1648200 e!1648201)))

(declare-fun b!2612104 () Bool)

(declare-fun e!1648199 () Bool)

(assert (=> b!2612104 (= e!1648199 e!1648200)))

(assert (=> b!2612100 e!1648199))

(assert (= b!2612105 b!2612106))

(assert (= b!2612104 b!2612105))

(assert (= (and b!2612100 (is-Cons!30193 rules!1726)) b!2612104))

(assert (=> b!2612106 (< (dynLambda!12790 order!16065 (toValue!6468 (transformation!4566 (h!35613 rules!1726)))) (dynLambda!12791 order!16067 lambda!97804))))

(assert (=> b!2612106 (< (dynLambda!12792 order!16069 (toChars!6327 (transformation!4566 (h!35613 rules!1726)))) (dynLambda!12791 order!16067 lambda!97804))))

(assert (=> b!2612100 true))

(declare-fun b!2612096 () Bool)

(declare-fun e!1648198 () Bool)

(assert (=> b!2612096 (= e!1648198 (<= (+ 1 from!862 1) (size!23371 v!6381)))))

(declare-fun call!167585 () BalanceConc!18362)

(declare-fun call!167587 () Token!8602)

(declare-fun c!419814 () Bool)

(declare-fun bm!167578 () Bool)

(declare-fun call!167583 () Token!8602)

(assert (=> bm!167578 (= call!167585 (charsOf!2857 (ite c!419814 call!167583 call!167587)))))

(declare-fun b!2612097 () Bool)

(declare-fun lt!917872 () Option!5943)

(declare-fun e!1648196 () Bool)

(assert (=> b!2612097 (= e!1648196 (= (_1!17424 (v!32271 lt!917872)) (apply!7094 v!6381 (+ 1 from!862 1))))))

(declare-fun b!2612098 () Bool)

(declare-fun e!1648193 () BalanceConc!18362)

(declare-fun call!167586 () BalanceConc!18362)

(assert (=> b!2612098 (= e!1648193 call!167586)))

(declare-fun call!167584 () BalanceConc!18362)

(declare-fun c!419815 () Bool)

(declare-fun bm!167579 () Bool)

(assert (=> bm!167579 (= call!167584 (charsOf!2857 (ite c!419815 separatorToken!156 call!167587)))))

(declare-fun bm!167580 () Bool)

(assert (=> bm!167580 (= call!167587 call!167583)))

(declare-fun b!2612099 () Bool)

(declare-fun e!1648195 () BalanceConc!18362)

(assert (=> b!2612099 (= e!1648195 (BalanceConc!18363 Empty!9374))))

(assert (=> b!2612100 (= e!1648195 e!1648193)))

(declare-fun lt!917871 () List!30294)

(assert (=> b!2612100 (= lt!917871 (list!11328 v!6381))))

(declare-fun lt!917876 () Unit!44164)

(assert (=> b!2612100 (= lt!917876 (lemmaDropApply!777 lt!917871 (+ 1 from!862 1)))))

(assert (=> b!2612100 (= (head!5961 (drop!1562 lt!917871 (+ 1 from!862 1))) (apply!7095 lt!917871 (+ 1 from!862 1)))))

(declare-fun lt!917863 () Unit!44164)

(assert (=> b!2612100 (= lt!917863 lt!917876)))

(declare-fun lt!917875 () List!30294)

(assert (=> b!2612100 (= lt!917875 (list!11328 v!6381))))

(declare-fun lt!917864 () Unit!44164)

(assert (=> b!2612100 (= lt!917864 (lemmaDropTail!751 lt!917875 (+ 1 from!862 1)))))

(assert (=> b!2612100 (= (tail!4199 (drop!1562 lt!917875 (+ 1 from!862 1))) (drop!1562 lt!917875 (+ 1 from!862 1 1)))))

(declare-fun lt!917869 () Unit!44164)

(assert (=> b!2612100 (= lt!917869 lt!917864)))

(declare-fun lt!917866 () Unit!44164)

(assert (=> b!2612100 (= lt!917866 (forallContained!922 (list!11328 v!6381) lambda!97804 (apply!7094 v!6381 (+ 1 from!862 1))))))

(declare-fun lt!917868 () BalanceConc!18362)

(assert (=> b!2612100 (= lt!917868 (printWithSeparatorTokenWhenNeededRec!441 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862 1 1)))))

(assert (=> b!2612100 (= lt!917872 (maxPrefixZipperSequence!895 thiss!14197 rules!1726 (++!7326 (charsOf!2857 (apply!7094 v!6381 (+ 1 from!862 1))) lt!917868)))))

(declare-fun res!1099533 () Bool)

(assert (=> b!2612100 (= res!1099533 (is-Some!5942 lt!917872))))

(assert (=> b!2612100 (=> (not res!1099533) (not e!1648196))))

(assert (=> b!2612100 (= c!419814 e!1648196)))

(declare-fun b!2612101 () Bool)

(declare-fun e!1648197 () BalanceConc!18362)

(assert (=> b!2612101 (= e!1648197 (++!7326 call!167586 lt!917868))))

(declare-fun bm!167581 () Bool)

(assert (=> bm!167581 (= call!167583 (apply!7094 v!6381 (+ 1 from!862 1)))))

(declare-fun b!2612102 () Bool)

(declare-fun e!1648194 () Bool)

(assert (=> b!2612102 (= c!419815 e!1648194)))

(declare-fun res!1099532 () Bool)

(assert (=> b!2612102 (=> (not res!1099532) (not e!1648194))))

(assert (=> b!2612102 (= res!1099532 (is-Some!5942 lt!917872))))

(assert (=> b!2612102 (= e!1648193 e!1648197)))

(declare-fun b!2612095 () Bool)

(assert (=> b!2612095 (= e!1648197 (BalanceConc!18363 Empty!9374))))

(assert (=> b!2612095 (= (print!1599 thiss!14197 (singletonSeq!2016 call!167587)) (printTailRec!1088 thiss!14197 (singletonSeq!2016 call!167587) 0 (BalanceConc!18363 Empty!9374)))))

(declare-fun lt!917867 () Unit!44164)

(declare-fun Unit!44173 () Unit!44164)

(assert (=> b!2612095 (= lt!917867 Unit!44173)))

(declare-fun lt!917874 () Unit!44164)

(assert (=> b!2612095 (= lt!917874 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!784 thiss!14197 rules!1726 (list!11330 call!167584) (list!11330 lt!917868)))))

(assert (=> b!2612095 false))

(declare-fun lt!917870 () Unit!44164)

(declare-fun Unit!44174 () Unit!44164)

(assert (=> b!2612095 (= lt!917870 Unit!44174)))

(declare-fun lt!917873 () BalanceConc!18362)

(assert (=> d!739928 (= (list!11330 lt!917873) (printWithSeparatorTokenWhenNeededList!643 thiss!14197 rules!1726 (dropList!869 v!6381 (+ 1 from!862 1)) separatorToken!156))))

(assert (=> d!739928 (= lt!917873 e!1648195)))

(declare-fun c!419816 () Bool)

(assert (=> d!739928 (= c!419816 (>= (+ 1 from!862 1) (size!23371 v!6381)))))

(declare-fun lt!917865 () Unit!44164)

(assert (=> d!739928 (= lt!917865 (lemmaContentSubsetPreservesForall!235 (list!11328 v!6381) (dropList!869 v!6381 (+ 1 from!862 1)) lambda!97803))))

(assert (=> d!739928 e!1648198))

(declare-fun res!1099534 () Bool)

(assert (=> d!739928 (=> (not res!1099534) (not e!1648198))))

(assert (=> d!739928 (= res!1099534 (>= (+ 1 from!862 1) 0))))

(assert (=> d!739928 (= (printWithSeparatorTokenWhenNeededRec!441 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862 1)) lt!917873)))

(declare-fun bm!167582 () Bool)

(assert (=> bm!167582 (= call!167586 (++!7326 call!167585 (ite c!419814 lt!917868 call!167584)))))

(declare-fun b!2612103 () Bool)

(assert (=> b!2612103 (= e!1648194 (not (= (_1!17424 (v!32271 lt!917872)) call!167583)))))

(assert (= (and d!739928 res!1099534) b!2612096))

(assert (= (and d!739928 c!419816) b!2612099))

(assert (= (and d!739928 (not c!419816)) b!2612100))

(assert (= (and b!2612100 res!1099533) b!2612097))

(assert (= (and b!2612100 c!419814) b!2612098))

(assert (= (and b!2612100 (not c!419814)) b!2612102))

(assert (= (and b!2612102 res!1099532) b!2612103))

(assert (= (and b!2612102 c!419815) b!2612101))

(assert (= (and b!2612102 (not c!419815)) b!2612095))

(assert (= (or b!2612101 b!2612095) bm!167580))

(assert (= (or b!2612101 b!2612095) bm!167579))

(assert (= (or b!2612098 bm!167580 b!2612103) bm!167581))

(assert (= (or b!2612098 b!2612101) bm!167578))

(assert (= (or b!2612098 b!2612101) bm!167582))

(declare-fun m!2946635 () Bool)

(assert (=> b!2612097 m!2946635))

(assert (=> bm!167581 m!2946635))

(declare-fun m!2946637 () Bool)

(assert (=> b!2612095 m!2946637))

(declare-fun m!2946639 () Bool)

(assert (=> b!2612095 m!2946639))

(declare-fun m!2946641 () Bool)

(assert (=> b!2612095 m!2946641))

(declare-fun m!2946643 () Bool)

(assert (=> b!2612095 m!2946643))

(declare-fun m!2946645 () Bool)

(assert (=> b!2612095 m!2946645))

(assert (=> b!2612095 m!2946637))

(assert (=> b!2612095 m!2946641))

(assert (=> b!2612095 m!2946643))

(assert (=> b!2612095 m!2946637))

(declare-fun m!2946647 () Bool)

(assert (=> b!2612095 m!2946647))

(declare-fun m!2946649 () Bool)

(assert (=> bm!167578 m!2946649))

(assert (=> b!2612096 m!2945967))

(declare-fun m!2946651 () Bool)

(assert (=> bm!167582 m!2946651))

(declare-fun m!2946653 () Bool)

(assert (=> b!2612100 m!2946653))

(declare-fun m!2946655 () Bool)

(assert (=> b!2612100 m!2946655))

(declare-fun m!2946657 () Bool)

(assert (=> b!2612100 m!2946657))

(declare-fun m!2946659 () Bool)

(assert (=> b!2612100 m!2946659))

(assert (=> b!2612100 m!2946635))

(declare-fun m!2946661 () Bool)

(assert (=> b!2612100 m!2946661))

(declare-fun m!2946663 () Bool)

(assert (=> b!2612100 m!2946663))

(assert (=> b!2612100 m!2946657))

(declare-fun m!2946665 () Bool)

(assert (=> b!2612100 m!2946665))

(assert (=> b!2612100 m!2945991))

(assert (=> b!2612100 m!2946635))

(declare-fun m!2946667 () Bool)

(assert (=> b!2612100 m!2946667))

(declare-fun m!2946669 () Bool)

(assert (=> b!2612100 m!2946669))

(declare-fun m!2946671 () Bool)

(assert (=> b!2612100 m!2946671))

(assert (=> b!2612100 m!2946635))

(declare-fun m!2946673 () Bool)

(assert (=> b!2612100 m!2946673))

(assert (=> b!2612100 m!2946655))

(declare-fun m!2946675 () Bool)

(assert (=> b!2612100 m!2946675))

(declare-fun m!2946677 () Bool)

(assert (=> b!2612100 m!2946677))

(assert (=> b!2612100 m!2945991))

(assert (=> b!2612100 m!2946661))

(assert (=> b!2612100 m!2946669))

(declare-fun m!2946679 () Bool)

(assert (=> b!2612101 m!2946679))

(declare-fun m!2946681 () Bool)

(assert (=> bm!167579 m!2946681))

(assert (=> d!739928 m!2945991))

(declare-fun m!2946683 () Bool)

(assert (=> d!739928 m!2946683))

(declare-fun m!2946685 () Bool)

(assert (=> d!739928 m!2946685))

(assert (=> d!739928 m!2945991))

(assert (=> d!739928 m!2946683))

(declare-fun m!2946687 () Bool)

(assert (=> d!739928 m!2946687))

(assert (=> d!739928 m!2945967))

(assert (=> d!739928 m!2946683))

(declare-fun m!2946689 () Bool)

(assert (=> d!739928 m!2946689))

(assert (=> b!2611823 d!739928))

(declare-fun d!739930 () Bool)

(assert (=> d!739930 (= (head!5961 (drop!1562 lt!917795 (+ 1 from!862))) (h!35614 (drop!1562 lt!917795 (+ 1 from!862))))))

(assert (=> b!2611823 d!739930))

(assert (=> b!2611823 d!739914))

(declare-fun d!739932 () Bool)

(declare-fun e!1648202 () Bool)

(assert (=> d!739932 e!1648202))

(declare-fun res!1099536 () Bool)

(assert (=> d!739932 (=> (not res!1099536) (not e!1648202))))

(assert (=> d!739932 (= res!1099536 (appendAssocInst!619 (c!419708 (charsOf!2857 (apply!7094 v!6381 (+ 1 from!862)))) (c!419708 lt!917792)))))

(declare-fun lt!917877 () BalanceConc!18362)

(assert (=> d!739932 (= lt!917877 (BalanceConc!18363 (++!7328 (c!419708 (charsOf!2857 (apply!7094 v!6381 (+ 1 from!862)))) (c!419708 lt!917792))))))

(assert (=> d!739932 (= (++!7326 (charsOf!2857 (apply!7094 v!6381 (+ 1 from!862))) lt!917792) lt!917877)))

(declare-fun b!2612109 () Bool)

(declare-fun res!1099538 () Bool)

(assert (=> b!2612109 (=> (not res!1099538) (not e!1648202))))

(assert (=> b!2612109 (= res!1099538 (>= (height!1355 (++!7328 (c!419708 (charsOf!2857 (apply!7094 v!6381 (+ 1 from!862)))) (c!419708 lt!917792))) (max!0 (height!1355 (c!419708 (charsOf!2857 (apply!7094 v!6381 (+ 1 from!862))))) (height!1355 (c!419708 lt!917792)))))))

(declare-fun b!2612108 () Bool)

(declare-fun res!1099539 () Bool)

(assert (=> b!2612108 (=> (not res!1099539) (not e!1648202))))

(assert (=> b!2612108 (= res!1099539 (<= (height!1355 (++!7328 (c!419708 (charsOf!2857 (apply!7094 v!6381 (+ 1 from!862)))) (c!419708 lt!917792))) (+ (max!0 (height!1355 (c!419708 (charsOf!2857 (apply!7094 v!6381 (+ 1 from!862))))) (height!1355 (c!419708 lt!917792))) 1)))))

(declare-fun b!2612110 () Bool)

(assert (=> b!2612110 (= e!1648202 (= (list!11330 lt!917877) (++!7329 (list!11330 (charsOf!2857 (apply!7094 v!6381 (+ 1 from!862)))) (list!11330 lt!917792))))))

(declare-fun b!2612107 () Bool)

(declare-fun res!1099537 () Bool)

(assert (=> b!2612107 (=> (not res!1099537) (not e!1648202))))

(assert (=> b!2612107 (= res!1099537 (isBalanced!2849 (++!7328 (c!419708 (charsOf!2857 (apply!7094 v!6381 (+ 1 from!862)))) (c!419708 lt!917792))))))

(assert (= (and d!739932 res!1099536) b!2612107))

(assert (= (and b!2612107 res!1099537) b!2612108))

(assert (= (and b!2612108 res!1099539) b!2612109))

(assert (= (and b!2612109 res!1099538) b!2612110))

(declare-fun m!2946691 () Bool)

(assert (=> b!2612109 m!2946691))

(declare-fun m!2946693 () Bool)

(assert (=> b!2612109 m!2946693))

(declare-fun m!2946695 () Bool)

(assert (=> b!2612109 m!2946695))

(assert (=> b!2612109 m!2946691))

(declare-fun m!2946697 () Bool)

(assert (=> b!2612109 m!2946697))

(assert (=> b!2612109 m!2946693))

(assert (=> b!2612109 m!2946695))

(declare-fun m!2946699 () Bool)

(assert (=> b!2612109 m!2946699))

(assert (=> b!2612108 m!2946691))

(assert (=> b!2612108 m!2946693))

(assert (=> b!2612108 m!2946695))

(assert (=> b!2612108 m!2946691))

(assert (=> b!2612108 m!2946697))

(assert (=> b!2612108 m!2946693))

(assert (=> b!2612108 m!2946695))

(assert (=> b!2612108 m!2946699))

(assert (=> b!2612107 m!2946691))

(assert (=> b!2612107 m!2946691))

(declare-fun m!2946701 () Bool)

(assert (=> b!2612107 m!2946701))

(declare-fun m!2946703 () Bool)

(assert (=> b!2612110 m!2946703))

(assert (=> b!2612110 m!2946361))

(declare-fun m!2946705 () Bool)

(assert (=> b!2612110 m!2946705))

(assert (=> b!2612110 m!2946343))

(assert (=> b!2612110 m!2946705))

(assert (=> b!2612110 m!2946343))

(declare-fun m!2946707 () Bool)

(assert (=> b!2612110 m!2946707))

(declare-fun m!2946709 () Bool)

(assert (=> d!739932 m!2946709))

(assert (=> d!739932 m!2946691))

(assert (=> b!2611823 d!739932))

(declare-fun d!739934 () Bool)

(declare-fun lt!917878 () BalanceConc!18362)

(assert (=> d!739934 (= (list!11330 lt!917878) (originalCharacters!5332 (apply!7094 v!6381 (+ 1 from!862))))))

(assert (=> d!739934 (= lt!917878 (dynLambda!12796 (toChars!6327 (transformation!4566 (rule!6936 (apply!7094 v!6381 (+ 1 from!862))))) (value!147737 (apply!7094 v!6381 (+ 1 from!862)))))))

(assert (=> d!739934 (= (charsOf!2857 (apply!7094 v!6381 (+ 1 from!862))) lt!917878)))

(declare-fun b_lambda!78347 () Bool)

(assert (=> (not b_lambda!78347) (not d!739934)))

(declare-fun tb!142139 () Bool)

(declare-fun t!214209 () Bool)

(assert (=> (and b!2611507 (= (toChars!6327 (transformation!4566 (h!35613 rules!1726))) (toChars!6327 (transformation!4566 (rule!6936 (apply!7094 v!6381 (+ 1 from!862)))))) t!214209) tb!142139))

(declare-fun tp!829859 () Bool)

(declare-fun b!2612111 () Bool)

(declare-fun e!1648203 () Bool)

(assert (=> b!2612111 (= e!1648203 (and (inv!40871 (c!419708 (dynLambda!12796 (toChars!6327 (transformation!4566 (rule!6936 (apply!7094 v!6381 (+ 1 from!862))))) (value!147737 (apply!7094 v!6381 (+ 1 from!862)))))) tp!829859))))

(declare-fun result!176842 () Bool)

(assert (=> tb!142139 (= result!176842 (and (inv!40872 (dynLambda!12796 (toChars!6327 (transformation!4566 (rule!6936 (apply!7094 v!6381 (+ 1 from!862))))) (value!147737 (apply!7094 v!6381 (+ 1 from!862))))) e!1648203))))

(assert (= tb!142139 b!2612111))

(declare-fun m!2946711 () Bool)

(assert (=> b!2612111 m!2946711))

(declare-fun m!2946713 () Bool)

(assert (=> tb!142139 m!2946713))

(assert (=> d!739934 t!214209))

(declare-fun b_and!191075 () Bool)

(assert (= b_and!191059 (and (=> t!214209 result!176842) b_and!191075)))

(declare-fun tb!142141 () Bool)

(declare-fun t!214211 () Bool)

(assert (=> (and b!2611491 (= (toChars!6327 (transformation!4566 (rule!6936 separatorToken!156))) (toChars!6327 (transformation!4566 (rule!6936 (apply!7094 v!6381 (+ 1 from!862)))))) t!214211) tb!142141))

(declare-fun result!176844 () Bool)

(assert (= result!176844 result!176842))

(assert (=> d!739934 t!214211))

(declare-fun b_and!191077 () Bool)

(assert (= b_and!191061 (and (=> t!214211 result!176844) b_and!191077)))

(declare-fun t!214213 () Bool)

(declare-fun tb!142143 () Bool)

(assert (=> (and b!2611925 (= (toChars!6327 (transformation!4566 (h!35613 (t!214154 rules!1726)))) (toChars!6327 (transformation!4566 (rule!6936 (apply!7094 v!6381 (+ 1 from!862)))))) t!214213) tb!142143))

(declare-fun result!176846 () Bool)

(assert (= result!176846 result!176842))

(assert (=> d!739934 t!214213))

(declare-fun b_and!191079 () Bool)

(assert (= b_and!191065 (and (=> t!214213 result!176846) b_and!191079)))

(declare-fun m!2946715 () Bool)

(assert (=> d!739934 m!2946715))

(declare-fun m!2946717 () Bool)

(assert (=> d!739934 m!2946717))

(assert (=> b!2611823 d!739934))

(declare-fun b!2612112 () Bool)

(declare-fun e!1648206 () List!30294)

(assert (=> b!2612112 (= e!1648206 Nil!30194)))

(declare-fun d!739936 () Bool)

(declare-fun e!1648208 () Bool)

(assert (=> d!739936 e!1648208))

(declare-fun res!1099540 () Bool)

(assert (=> d!739936 (=> (not res!1099540) (not e!1648208))))

(declare-fun lt!917879 () List!30294)

(assert (=> d!739936 (= res!1099540 (set.subset (content!4276 lt!917879) (content!4276 lt!917799)))))

(assert (=> d!739936 (= lt!917879 e!1648206)))

(declare-fun c!419817 () Bool)

(assert (=> d!739936 (= c!419817 (is-Nil!30194 lt!917799))))

(assert (=> d!739936 (= (drop!1562 lt!917799 (+ 1 from!862)) lt!917879)))

(declare-fun bm!167583 () Bool)

(declare-fun call!167588 () Int)

(assert (=> bm!167583 (= call!167588 (size!23374 lt!917799))))

(declare-fun b!2612113 () Bool)

(declare-fun e!1648207 () Int)

(assert (=> b!2612113 (= e!1648207 call!167588)))

(declare-fun b!2612114 () Bool)

(declare-fun e!1648205 () Int)

(assert (=> b!2612114 (= e!1648207 e!1648205)))

(declare-fun c!419818 () Bool)

(assert (=> b!2612114 (= c!419818 (>= (+ 1 from!862) call!167588))))

(declare-fun b!2612115 () Bool)

(assert (=> b!2612115 (= e!1648205 (- call!167588 (+ 1 from!862)))))

(declare-fun b!2612116 () Bool)

(declare-fun e!1648204 () List!30294)

(assert (=> b!2612116 (= e!1648204 lt!917799)))

(declare-fun b!2612117 () Bool)

(assert (=> b!2612117 (= e!1648208 (= (size!23374 lt!917879) e!1648207))))

(declare-fun c!419820 () Bool)

(assert (=> b!2612117 (= c!419820 (<= (+ 1 from!862) 0))))

(declare-fun b!2612118 () Bool)

(assert (=> b!2612118 (= e!1648205 0)))

(declare-fun b!2612119 () Bool)

(assert (=> b!2612119 (= e!1648204 (drop!1562 (t!214155 lt!917799) (- (+ 1 from!862) 1)))))

(declare-fun b!2612120 () Bool)

(assert (=> b!2612120 (= e!1648206 e!1648204)))

(declare-fun c!419819 () Bool)

(assert (=> b!2612120 (= c!419819 (<= (+ 1 from!862) 0))))

(assert (= (and d!739936 c!419817) b!2612112))

(assert (= (and d!739936 (not c!419817)) b!2612120))

(assert (= (and b!2612120 c!419819) b!2612116))

(assert (= (and b!2612120 (not c!419819)) b!2612119))

(assert (= (and d!739936 res!1099540) b!2612117))

(assert (= (and b!2612117 c!419820) b!2612113))

(assert (= (and b!2612117 (not c!419820)) b!2612114))

(assert (= (and b!2612114 c!419818) b!2612118))

(assert (= (and b!2612114 (not c!419818)) b!2612115))

(assert (= (or b!2612113 b!2612114 b!2612115) bm!167583))

(declare-fun m!2946719 () Bool)

(assert (=> d!739936 m!2946719))

(assert (=> d!739936 m!2946625))

(assert (=> bm!167583 m!2946627))

(declare-fun m!2946721 () Bool)

(assert (=> b!2612117 m!2946721))

(declare-fun m!2946723 () Bool)

(assert (=> b!2612119 m!2946723))

(assert (=> b!2611823 d!739936))

(declare-fun d!739938 () Bool)

(assert (=> d!739938 (dynLambda!12797 lambda!97794 (apply!7094 v!6381 (+ 1 from!862)))))

(declare-fun lt!917880 () Unit!44164)

(assert (=> d!739938 (= lt!917880 (choose!15499 (list!11328 v!6381) lambda!97794 (apply!7094 v!6381 (+ 1 from!862))))))

(declare-fun e!1648209 () Bool)

(assert (=> d!739938 e!1648209))

(declare-fun res!1099541 () Bool)

(assert (=> d!739938 (=> (not res!1099541) (not e!1648209))))

(assert (=> d!739938 (= res!1099541 (forall!6264 (list!11328 v!6381) lambda!97794))))

(assert (=> d!739938 (= (forallContained!922 (list!11328 v!6381) lambda!97794 (apply!7094 v!6381 (+ 1 from!862))) lt!917880)))

(declare-fun b!2612121 () Bool)

(assert (=> b!2612121 (= e!1648209 (contains!5609 (list!11328 v!6381) (apply!7094 v!6381 (+ 1 from!862))))))

(assert (= (and d!739938 res!1099541) b!2612121))

(declare-fun b_lambda!78349 () Bool)

(assert (=> (not b_lambda!78349) (not d!739938)))

(assert (=> d!739938 m!2946335))

(declare-fun m!2946725 () Bool)

(assert (=> d!739938 m!2946725))

(assert (=> d!739938 m!2945991))

(assert (=> d!739938 m!2946335))

(declare-fun m!2946727 () Bool)

(assert (=> d!739938 m!2946727))

(assert (=> d!739938 m!2945991))

(declare-fun m!2946729 () Bool)

(assert (=> d!739938 m!2946729))

(assert (=> b!2612121 m!2945991))

(assert (=> b!2612121 m!2946335))

(declare-fun m!2946731 () Bool)

(assert (=> b!2612121 m!2946731))

(assert (=> b!2611823 d!739938))

(declare-fun b!2612138 () Bool)

(declare-fun e!1648225 () Option!5943)

(declare-fun call!167591 () Option!5943)

(assert (=> b!2612138 (= e!1648225 call!167591)))

(declare-fun b!2612139 () Bool)

(declare-fun lt!917898 () Option!5943)

(declare-fun lt!917896 () Option!5943)

(assert (=> b!2612139 (= e!1648225 (ite (and (is-None!5942 lt!917898) (is-None!5942 lt!917896)) None!5942 (ite (is-None!5942 lt!917896) lt!917898 (ite (is-None!5942 lt!917898) lt!917896 (ite (>= (size!23370 (_1!17424 (v!32271 lt!917898))) (size!23370 (_1!17424 (v!32271 lt!917896)))) lt!917898 lt!917896)))))))

(assert (=> b!2612139 (= lt!917898 call!167591)))

(assert (=> b!2612139 (= lt!917896 (maxPrefixZipperSequence!895 thiss!14197 (t!214154 rules!1726) (++!7326 (charsOf!2857 (apply!7094 v!6381 (+ 1 from!862))) lt!917792)))))

(declare-fun bm!167586 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!432 (LexerInterface!4163 Rule!8932 BalanceConc!18362) Option!5943)

(assert (=> bm!167586 (= call!167591 (maxPrefixOneRuleZipperSequence!432 thiss!14197 (h!35613 rules!1726) (++!7326 (charsOf!2857 (apply!7094 v!6381 (+ 1 from!862))) lt!917792)))))

(declare-fun d!739940 () Bool)

(declare-fun e!1648227 () Bool)

(assert (=> d!739940 e!1648227))

(declare-fun res!1099560 () Bool)

(assert (=> d!739940 (=> (not res!1099560) (not e!1648227))))

(declare-fun lt!917899 () Option!5943)

(declare-fun isDefined!4761 (Option!5943) Bool)

(declare-datatypes ((tuple2!29770 0))(
  ( (tuple2!29771 (_1!17427 Token!8602) (_2!17427 List!30292)) )
))
(declare-datatypes ((Option!5945 0))(
  ( (None!5944) (Some!5944 (v!32278 tuple2!29770)) )
))
(declare-fun isDefined!4762 (Option!5945) Bool)

(declare-fun maxPrefixZipper!423 (LexerInterface!4163 List!30293 List!30292) Option!5945)

(assert (=> d!739940 (= res!1099560 (= (isDefined!4761 lt!917899) (isDefined!4762 (maxPrefixZipper!423 thiss!14197 rules!1726 (list!11330 (++!7326 (charsOf!2857 (apply!7094 v!6381 (+ 1 from!862))) lt!917792))))))))

(assert (=> d!739940 (= lt!917899 e!1648225)))

(declare-fun c!419823 () Bool)

(assert (=> d!739940 (= c!419823 (and (is-Cons!30193 rules!1726) (is-Nil!30193 (t!214154 rules!1726))))))

(declare-fun lt!917900 () Unit!44164)

(declare-fun lt!917895 () Unit!44164)

(assert (=> d!739940 (= lt!917900 lt!917895)))

(declare-fun lt!917901 () List!30292)

(declare-fun lt!917897 () List!30292)

(declare-fun isPrefix!2424 (List!30292 List!30292) Bool)

(assert (=> d!739940 (isPrefix!2424 lt!917901 lt!917897)))

(declare-fun lemmaIsPrefixRefl!1550 (List!30292 List!30292) Unit!44164)

(assert (=> d!739940 (= lt!917895 (lemmaIsPrefixRefl!1550 lt!917901 lt!917897))))

(assert (=> d!739940 (= lt!917897 (list!11330 (++!7326 (charsOf!2857 (apply!7094 v!6381 (+ 1 from!862))) lt!917792)))))

(assert (=> d!739940 (= lt!917901 (list!11330 (++!7326 (charsOf!2857 (apply!7094 v!6381 (+ 1 from!862))) lt!917792)))))

(assert (=> d!739940 (rulesValidInductive!1600 thiss!14197 rules!1726)))

(assert (=> d!739940 (= (maxPrefixZipperSequence!895 thiss!14197 rules!1726 (++!7326 (charsOf!2857 (apply!7094 v!6381 (+ 1 from!862))) lt!917792)) lt!917899)))

(declare-fun b!2612140 () Bool)

(declare-fun e!1648226 () Bool)

(assert (=> b!2612140 (= e!1648227 e!1648226)))

(declare-fun res!1099562 () Bool)

(assert (=> b!2612140 (=> res!1099562 e!1648226)))

(assert (=> b!2612140 (= res!1099562 (not (isDefined!4761 lt!917899)))))

(declare-fun e!1648222 () Bool)

(declare-fun b!2612141 () Bool)

(declare-fun get!9528 (Option!5943) tuple2!29764)

(declare-fun get!9529 (Option!5945) tuple2!29770)

(declare-fun maxPrefix!2295 (LexerInterface!4163 List!30293 List!30292) Option!5945)

(assert (=> b!2612141 (= e!1648222 (= (list!11330 (_2!17424 (get!9528 lt!917899))) (_2!17427 (get!9529 (maxPrefix!2295 thiss!14197 rules!1726 (list!11330 (++!7326 (charsOf!2857 (apply!7094 v!6381 (+ 1 from!862))) lt!917792)))))))))

(declare-fun b!2612142 () Bool)

(assert (=> b!2612142 (= e!1648226 e!1648222)))

(declare-fun res!1099561 () Bool)

(assert (=> b!2612142 (=> (not res!1099561) (not e!1648222))))

(assert (=> b!2612142 (= res!1099561 (= (_1!17424 (get!9528 lt!917899)) (_1!17427 (get!9529 (maxPrefix!2295 thiss!14197 rules!1726 (list!11330 (++!7326 (charsOf!2857 (apply!7094 v!6381 (+ 1 from!862))) lt!917792)))))))))

(declare-fun b!2612143 () Bool)

(declare-fun res!1099563 () Bool)

(assert (=> b!2612143 (=> (not res!1099563) (not e!1648227))))

(declare-fun e!1648223 () Bool)

(assert (=> b!2612143 (= res!1099563 e!1648223)))

(declare-fun res!1099559 () Bool)

(assert (=> b!2612143 (=> res!1099559 e!1648223)))

(assert (=> b!2612143 (= res!1099559 (not (isDefined!4761 lt!917899)))))

(declare-fun b!2612144 () Bool)

(declare-fun e!1648224 () Bool)

(assert (=> b!2612144 (= e!1648224 (= (list!11330 (_2!17424 (get!9528 lt!917899))) (_2!17427 (get!9529 (maxPrefixZipper!423 thiss!14197 rules!1726 (list!11330 (++!7326 (charsOf!2857 (apply!7094 v!6381 (+ 1 from!862))) lt!917792)))))))))

(declare-fun b!2612145 () Bool)

(assert (=> b!2612145 (= e!1648223 e!1648224)))

(declare-fun res!1099564 () Bool)

(assert (=> b!2612145 (=> (not res!1099564) (not e!1648224))))

(assert (=> b!2612145 (= res!1099564 (= (_1!17424 (get!9528 lt!917899)) (_1!17427 (get!9529 (maxPrefixZipper!423 thiss!14197 rules!1726 (list!11330 (++!7326 (charsOf!2857 (apply!7094 v!6381 (+ 1 from!862))) lt!917792)))))))))

(assert (= (and d!739940 c!419823) b!2612138))

(assert (= (and d!739940 (not c!419823)) b!2612139))

(assert (= (or b!2612138 b!2612139) bm!167586))

(assert (= (and d!739940 res!1099560) b!2612143))

(assert (= (and b!2612143 (not res!1099559)) b!2612145))

(assert (= (and b!2612145 res!1099564) b!2612144))

(assert (= (and b!2612143 res!1099563) b!2612140))

(assert (= (and b!2612140 (not res!1099562)) b!2612142))

(assert (= (and b!2612142 res!1099561) b!2612141))

(declare-fun m!2946733 () Bool)

(assert (=> b!2612141 m!2946733))

(assert (=> b!2612141 m!2946369))

(declare-fun m!2946735 () Bool)

(assert (=> b!2612141 m!2946735))

(assert (=> b!2612141 m!2946735))

(declare-fun m!2946737 () Bool)

(assert (=> b!2612141 m!2946737))

(assert (=> b!2612141 m!2946737))

(declare-fun m!2946739 () Bool)

(assert (=> b!2612141 m!2946739))

(declare-fun m!2946741 () Bool)

(assert (=> b!2612141 m!2946741))

(assert (=> b!2612145 m!2946741))

(assert (=> b!2612145 m!2946369))

(assert (=> b!2612145 m!2946735))

(assert (=> b!2612145 m!2946735))

(declare-fun m!2946743 () Bool)

(assert (=> b!2612145 m!2946743))

(assert (=> b!2612145 m!2946743))

(declare-fun m!2946745 () Bool)

(assert (=> b!2612145 m!2946745))

(assert (=> b!2612142 m!2946741))

(assert (=> b!2612142 m!2946369))

(assert (=> b!2612142 m!2946735))

(assert (=> b!2612142 m!2946735))

(assert (=> b!2612142 m!2946737))

(assert (=> b!2612142 m!2946737))

(assert (=> b!2612142 m!2946739))

(declare-fun m!2946747 () Bool)

(assert (=> b!2612140 m!2946747))

(assert (=> b!2612144 m!2946733))

(assert (=> b!2612144 m!2946369))

(assert (=> b!2612144 m!2946735))

(assert (=> b!2612144 m!2946735))

(assert (=> b!2612144 m!2946743))

(assert (=> b!2612144 m!2946741))

(assert (=> b!2612144 m!2946743))

(assert (=> b!2612144 m!2946745))

(assert (=> d!739940 m!2946369))

(assert (=> d!739940 m!2946735))

(declare-fun m!2946749 () Bool)

(assert (=> d!739940 m!2946749))

(assert (=> d!739940 m!2946735))

(assert (=> d!739940 m!2946743))

(assert (=> d!739940 m!2946007))

(assert (=> d!739940 m!2946747))

(declare-fun m!2946751 () Bool)

(assert (=> d!739940 m!2946751))

(assert (=> d!739940 m!2946743))

(declare-fun m!2946753 () Bool)

(assert (=> d!739940 m!2946753))

(assert (=> b!2612143 m!2946747))

(assert (=> bm!167586 m!2946369))

(declare-fun m!2946755 () Bool)

(assert (=> bm!167586 m!2946755))

(assert (=> b!2612139 m!2946369))

(declare-fun m!2946757 () Bool)

(assert (=> b!2612139 m!2946757))

(assert (=> b!2611823 d!739940))

(declare-fun d!739942 () Bool)

(assert (=> d!739942 (= (tail!4199 (drop!1562 lt!917799 (+ 1 from!862))) (drop!1562 lt!917799 (+ 1 from!862 1)))))

(declare-fun lt!917902 () Unit!44164)

(assert (=> d!739942 (= lt!917902 (choose!15496 lt!917799 (+ 1 from!862)))))

(declare-fun e!1648228 () Bool)

(assert (=> d!739942 e!1648228))

(declare-fun res!1099565 () Bool)

(assert (=> d!739942 (=> (not res!1099565) (not e!1648228))))

(assert (=> d!739942 (= res!1099565 (>= (+ 1 from!862) 0))))

(assert (=> d!739942 (= (lemmaDropTail!751 lt!917799 (+ 1 from!862)) lt!917902)))

(declare-fun b!2612146 () Bool)

(assert (=> b!2612146 (= e!1648228 (< (+ 1 from!862) (size!23374 lt!917799)))))

(assert (= (and d!739942 res!1099565) b!2612146))

(assert (=> d!739942 m!2946355))

(assert (=> d!739942 m!2946355))

(assert (=> d!739942 m!2946375))

(assert (=> d!739942 m!2946373))

(declare-fun m!2946759 () Bool)

(assert (=> d!739942 m!2946759))

(assert (=> b!2612146 m!2946627))

(assert (=> b!2611823 d!739942))

(declare-fun d!739944 () Bool)

(declare-fun res!1099570 () Bool)

(declare-fun e!1648231 () Bool)

(assert (=> d!739944 (=> (not res!1099570) (not e!1648231))))

(declare-fun validRegex!3282 (Regex!7710) Bool)

(assert (=> d!739944 (= res!1099570 (validRegex!3282 (regex!4566 (h!35613 rules!1726))))))

(assert (=> d!739944 (= (ruleValid!1532 thiss!14197 (h!35613 rules!1726)) e!1648231)))

(declare-fun b!2612151 () Bool)

(declare-fun res!1099571 () Bool)

(assert (=> b!2612151 (=> (not res!1099571) (not e!1648231))))

(declare-fun nullable!2573 (Regex!7710) Bool)

(assert (=> b!2612151 (= res!1099571 (not (nullable!2573 (regex!4566 (h!35613 rules!1726)))))))

(declare-fun b!2612152 () Bool)

(assert (=> b!2612152 (= e!1648231 (not (= (tag!5056 (h!35613 rules!1726)) (String!33827 ""))))))

(assert (= (and d!739944 res!1099570) b!2612151))

(assert (= (and b!2612151 res!1099571) b!2612152))

(declare-fun m!2946761 () Bool)

(assert (=> d!739944 m!2946761))

(declare-fun m!2946763 () Bool)

(assert (=> b!2612151 m!2946763))

(assert (=> b!2611874 d!739944))

(declare-fun d!739946 () Bool)

(declare-fun res!1099576 () Bool)

(declare-fun e!1648236 () Bool)

(assert (=> d!739946 (=> res!1099576 e!1648236)))

(assert (=> d!739946 (= res!1099576 (is-Nil!30194 (dropList!869 v!6381 from!862)))))

(assert (=> d!739946 (= (forall!6264 (dropList!869 v!6381 from!862) lambda!97765) e!1648236)))

(declare-fun b!2612157 () Bool)

(declare-fun e!1648237 () Bool)

(assert (=> b!2612157 (= e!1648236 e!1648237)))

(declare-fun res!1099577 () Bool)

(assert (=> b!2612157 (=> (not res!1099577) (not e!1648237))))

(assert (=> b!2612157 (= res!1099577 (dynLambda!12797 lambda!97765 (h!35614 (dropList!869 v!6381 from!862))))))

(declare-fun b!2612158 () Bool)

(assert (=> b!2612158 (= e!1648237 (forall!6264 (t!214155 (dropList!869 v!6381 from!862)) lambda!97765))))

(assert (= (and d!739946 (not res!1099576)) b!2612157))

(assert (= (and b!2612157 res!1099577) b!2612158))

(declare-fun b_lambda!78351 () Bool)

(assert (=> (not b_lambda!78351) (not b!2612157)))

(declare-fun m!2946765 () Bool)

(assert (=> b!2612157 m!2946765))

(declare-fun m!2946767 () Bool)

(assert (=> b!2612158 m!2946767))

(assert (=> d!739818 d!739946))

(declare-fun d!739948 () Bool)

(assert (=> d!739948 (forall!6264 (dropList!869 v!6381 from!862) lambda!97765)))

(assert (=> d!739948 true))

(declare-fun _$83!163 () Unit!44164)

(assert (=> d!739948 (= (choose!15498 lt!917628 (dropList!869 v!6381 from!862) lambda!97765) _$83!163)))

(declare-fun bs!473958 () Bool)

(assert (= bs!473958 d!739948))

(assert (=> bs!473958 m!2945987))

(assert (=> bs!473958 m!2946177))

(assert (=> d!739818 d!739948))

(declare-fun d!739950 () Bool)

(declare-fun res!1099578 () Bool)

(declare-fun e!1648238 () Bool)

(assert (=> d!739950 (=> res!1099578 e!1648238)))

(assert (=> d!739950 (= res!1099578 (is-Nil!30194 lt!917628))))

(assert (=> d!739950 (= (forall!6264 lt!917628 lambda!97765) e!1648238)))

(declare-fun b!2612159 () Bool)

(declare-fun e!1648239 () Bool)

(assert (=> b!2612159 (= e!1648238 e!1648239)))

(declare-fun res!1099579 () Bool)

(assert (=> b!2612159 (=> (not res!1099579) (not e!1648239))))

(assert (=> b!2612159 (= res!1099579 (dynLambda!12797 lambda!97765 (h!35614 lt!917628)))))

(declare-fun b!2612160 () Bool)

(assert (=> b!2612160 (= e!1648239 (forall!6264 (t!214155 lt!917628) lambda!97765))))

(assert (= (and d!739950 (not res!1099578)) b!2612159))

(assert (= (and b!2612159 res!1099579) b!2612160))

(declare-fun b_lambda!78353 () Bool)

(assert (=> (not b_lambda!78353) (not b!2612159)))

(declare-fun m!2946769 () Bool)

(assert (=> b!2612159 m!2946769))

(declare-fun m!2946771 () Bool)

(assert (=> b!2612160 m!2946771))

(assert (=> d!739818 d!739950))

(declare-fun bs!473959 () Bool)

(declare-fun d!739952 () Bool)

(assert (= bs!473959 (and d!739952 d!739874)))

(declare-fun lambda!97807 () Int)

(assert (=> bs!473959 (= lambda!97807 lambda!97797)))

(assert (=> d!739952 true))

(declare-fun lt!917905 () Bool)

(assert (=> d!739952 (= lt!917905 (rulesValidInductive!1600 thiss!14197 rules!1726))))

(assert (=> d!739952 (= lt!917905 (forall!6266 rules!1726 lambda!97807))))

(assert (=> d!739952 (= (rulesValid!1705 thiss!14197 rules!1726) lt!917905)))

(declare-fun bs!473960 () Bool)

(assert (= bs!473960 d!739952))

(assert (=> bs!473960 m!2946007))

(declare-fun m!2946773 () Bool)

(assert (=> bs!473960 m!2946773))

(assert (=> d!739798 d!739952))

(declare-fun d!739954 () Bool)

(declare-fun lt!917906 () Bool)

(declare-fun e!1648241 () Bool)

(assert (=> d!739954 (= lt!917906 e!1648241)))

(declare-fun res!1099581 () Bool)

(assert (=> d!739954 (=> (not res!1099581) (not e!1648241))))

(assert (=> d!739954 (= res!1099581 (= (list!11328 (_1!17423 (lex!1877 thiss!14197 rules!1726 (print!1599 thiss!14197 (singletonSeq!2016 lt!917632))))) (list!11328 (singletonSeq!2016 lt!917632))))))

(declare-fun e!1648240 () Bool)

(assert (=> d!739954 (= lt!917906 e!1648240)))

(declare-fun res!1099580 () Bool)

(assert (=> d!739954 (=> (not res!1099580) (not e!1648240))))

(declare-fun lt!917907 () tuple2!29762)

(assert (=> d!739954 (= res!1099580 (= (size!23371 (_1!17423 lt!917907)) 1))))

(assert (=> d!739954 (= lt!917907 (lex!1877 thiss!14197 rules!1726 (print!1599 thiss!14197 (singletonSeq!2016 lt!917632))))))

(assert (=> d!739954 (not (isEmpty!17243 rules!1726))))

(assert (=> d!739954 (= (rulesProduceIndividualToken!1875 thiss!14197 rules!1726 lt!917632) lt!917906)))

(declare-fun b!2612161 () Bool)

(declare-fun res!1099582 () Bool)

(assert (=> b!2612161 (=> (not res!1099582) (not e!1648240))))

(assert (=> b!2612161 (= res!1099582 (= (apply!7094 (_1!17423 lt!917907) 0) lt!917632))))

(declare-fun b!2612162 () Bool)

(assert (=> b!2612162 (= e!1648240 (isEmpty!17246 (_2!17423 lt!917907)))))

(declare-fun b!2612163 () Bool)

(assert (=> b!2612163 (= e!1648241 (isEmpty!17246 (_2!17423 (lex!1877 thiss!14197 rules!1726 (print!1599 thiss!14197 (singletonSeq!2016 lt!917632))))))))

(assert (= (and d!739954 res!1099580) b!2612161))

(assert (= (and b!2612161 res!1099582) b!2612162))

(assert (= (and d!739954 res!1099581) b!2612163))

(declare-fun m!2946775 () Bool)

(assert (=> d!739954 m!2946775))

(declare-fun m!2946777 () Bool)

(assert (=> d!739954 m!2946777))

(declare-fun m!2946779 () Bool)

(assert (=> d!739954 m!2946779))

(assert (=> d!739954 m!2945953))

(declare-fun m!2946781 () Bool)

(assert (=> d!739954 m!2946781))

(assert (=> d!739954 m!2946781))

(declare-fun m!2946783 () Bool)

(assert (=> d!739954 m!2946783))

(assert (=> d!739954 m!2946781))

(assert (=> d!739954 m!2946775))

(declare-fun m!2946785 () Bool)

(assert (=> d!739954 m!2946785))

(declare-fun m!2946787 () Bool)

(assert (=> b!2612161 m!2946787))

(declare-fun m!2946789 () Bool)

(assert (=> b!2612162 m!2946789))

(assert (=> b!2612163 m!2946781))

(assert (=> b!2612163 m!2946781))

(assert (=> b!2612163 m!2946775))

(assert (=> b!2612163 m!2946775))

(assert (=> b!2612163 m!2946777))

(declare-fun m!2946791 () Bool)

(assert (=> b!2612163 m!2946791))

(assert (=> bs!473937 d!739954))

(declare-fun d!739956 () Bool)

(declare-fun lt!917908 () Int)

(assert (=> d!739956 (>= lt!917908 0)))

(declare-fun e!1648242 () Int)

(assert (=> d!739956 (= lt!917908 e!1648242)))

(declare-fun c!419824 () Bool)

(assert (=> d!739956 (= c!419824 (is-Nil!30194 (list!11328 v!6381)))))

(assert (=> d!739956 (= (size!23374 (list!11328 v!6381)) lt!917908)))

(declare-fun b!2612164 () Bool)

(assert (=> b!2612164 (= e!1648242 0)))

(declare-fun b!2612165 () Bool)

(assert (=> b!2612165 (= e!1648242 (+ 1 (size!23374 (t!214155 (list!11328 v!6381)))))))

(assert (= (and d!739956 c!419824) b!2612164))

(assert (= (and d!739956 (not c!419824)) b!2612165))

(declare-fun m!2946793 () Bool)

(assert (=> b!2612165 m!2946793))

(assert (=> d!739812 d!739956))

(assert (=> d!739812 d!739822))

(declare-fun d!739958 () Bool)

(declare-fun lt!917911 () Int)

(assert (=> d!739958 (= lt!917911 (size!23374 (list!11331 (c!419709 v!6381))))))

(assert (=> d!739958 (= lt!917911 (ite (is-Empty!9375 (c!419709 v!6381)) 0 (ite (is-Leaf!14399 (c!419709 v!6381)) (csize!18981 (c!419709 v!6381)) (csize!18980 (c!419709 v!6381)))))))

(assert (=> d!739958 (= (size!23376 (c!419709 v!6381)) lt!917911)))

(declare-fun bs!473961 () Bool)

(assert (= bs!473961 d!739958))

(assert (=> bs!473961 m!2946183))

(assert (=> bs!473961 m!2946183))

(declare-fun m!2946795 () Bool)

(assert (=> bs!473961 m!2946795))

(assert (=> d!739812 d!739958))

(declare-fun d!739960 () Bool)

(declare-fun lt!917912 () Bool)

(assert (=> d!739960 (= lt!917912 (set.member lt!917632 (content!4276 (list!11328 v!6381))))))

(declare-fun e!1648243 () Bool)

(assert (=> d!739960 (= lt!917912 e!1648243)))

(declare-fun res!1099583 () Bool)

(assert (=> d!739960 (=> (not res!1099583) (not e!1648243))))

(assert (=> d!739960 (= res!1099583 (is-Cons!30194 (list!11328 v!6381)))))

(assert (=> d!739960 (= (contains!5609 (list!11328 v!6381) lt!917632) lt!917912)))

(declare-fun b!2612166 () Bool)

(declare-fun e!1648244 () Bool)

(assert (=> b!2612166 (= e!1648243 e!1648244)))

(declare-fun res!1099584 () Bool)

(assert (=> b!2612166 (=> res!1099584 e!1648244)))

(assert (=> b!2612166 (= res!1099584 (= (h!35614 (list!11328 v!6381)) lt!917632))))

(declare-fun b!2612167 () Bool)

(assert (=> b!2612167 (= e!1648244 (contains!5609 (t!214155 (list!11328 v!6381)) lt!917632))))

(assert (= (and d!739960 res!1099583) b!2612166))

(assert (= (and b!2612166 (not res!1099584)) b!2612167))

(assert (=> d!739960 m!2945991))

(declare-fun m!2946797 () Bool)

(assert (=> d!739960 m!2946797))

(declare-fun m!2946799 () Bool)

(assert (=> d!739960 m!2946799))

(declare-fun m!2946801 () Bool)

(assert (=> b!2612167 m!2946801))

(assert (=> d!739778 d!739960))

(assert (=> d!739778 d!739822))

(declare-fun b!2612178 () Bool)

(declare-fun e!1648251 () Bool)

(declare-fun e!1648253 () Bool)

(assert (=> b!2612178 (= e!1648251 e!1648253)))

(declare-fun res!1099590 () Bool)

(assert (=> b!2612178 (= res!1099590 (contains!5612 (left!23236 (c!419709 v!6381)) lt!917632))))

(assert (=> b!2612178 (=> res!1099590 e!1648253)))

(declare-fun d!739962 () Bool)

(declare-fun lt!917915 () Bool)

(assert (=> d!739962 (= lt!917915 (contains!5609 (list!11331 (c!419709 v!6381)) lt!917632))))

(declare-fun e!1648252 () Bool)

(assert (=> d!739962 (= lt!917915 e!1648252)))

(declare-fun res!1099589 () Bool)

(assert (=> d!739962 (=> (not res!1099589) (not e!1648252))))

(assert (=> d!739962 (= res!1099589 (not (is-Empty!9375 (c!419709 v!6381))))))

(assert (=> d!739962 (= (contains!5612 (c!419709 v!6381) lt!917632) lt!917915)))

(declare-fun b!2612179 () Bool)

(assert (=> b!2612179 (= e!1648253 (contains!5612 (right!23566 (c!419709 v!6381)) lt!917632))))

(declare-fun b!2612177 () Bool)

(declare-fun contains!5614 (IArray!18755 Token!8602) Bool)

(assert (=> b!2612177 (= e!1648251 (contains!5614 (xs!12359 (c!419709 v!6381)) lt!917632))))

(declare-fun b!2612176 () Bool)

(assert (=> b!2612176 (= e!1648252 e!1648251)))

(declare-fun c!419827 () Bool)

(assert (=> b!2612176 (= c!419827 (is-Leaf!14399 (c!419709 v!6381)))))

(assert (= (and d!739962 res!1099589) b!2612176))

(assert (= (and b!2612176 c!419827) b!2612177))

(assert (= (and b!2612176 (not c!419827)) b!2612178))

(assert (= (and b!2612178 (not res!1099590)) b!2612179))

(declare-fun m!2946803 () Bool)

(assert (=> b!2612178 m!2946803))

(assert (=> d!739962 m!2946183))

(assert (=> d!739962 m!2946183))

(declare-fun m!2946805 () Bool)

(assert (=> d!739962 m!2946805))

(declare-fun m!2946807 () Bool)

(assert (=> b!2612179 m!2946807))

(declare-fun m!2946809 () Bool)

(assert (=> b!2612177 m!2946809))

(assert (=> d!739778 d!739962))

(declare-fun d!739964 () Bool)

(declare-fun res!1099595 () Bool)

(declare-fun e!1648258 () Bool)

(assert (=> d!739964 (=> res!1099595 e!1648258)))

(assert (=> d!739964 (= res!1099595 (is-Nil!30193 rules!1726))))

(assert (=> d!739964 (= (forall!6266 rules!1726 lambda!97797) e!1648258)))

(declare-fun b!2612184 () Bool)

(declare-fun e!1648259 () Bool)

(assert (=> b!2612184 (= e!1648258 e!1648259)))

(declare-fun res!1099596 () Bool)

(assert (=> b!2612184 (=> (not res!1099596) (not e!1648259))))

(declare-fun dynLambda!12800 (Int Rule!8932) Bool)

(assert (=> b!2612184 (= res!1099596 (dynLambda!12800 lambda!97797 (h!35613 rules!1726)))))

(declare-fun b!2612185 () Bool)

(assert (=> b!2612185 (= e!1648259 (forall!6266 (t!214154 rules!1726) lambda!97797))))

(assert (= (and d!739964 (not res!1099595)) b!2612184))

(assert (= (and b!2612184 res!1099596) b!2612185))

(declare-fun b_lambda!78355 () Bool)

(assert (=> (not b_lambda!78355) (not b!2612184)))

(declare-fun m!2946811 () Bool)

(assert (=> b!2612184 m!2946811))

(declare-fun m!2946813 () Bool)

(assert (=> b!2612185 m!2946813))

(assert (=> d!739874 d!739964))

(declare-fun b!2612198 () Bool)

(declare-fun res!1099613 () Bool)

(declare-fun e!1648264 () Bool)

(assert (=> b!2612198 (=> (not res!1099613) (not e!1648264))))

(assert (=> b!2612198 (= res!1099613 (not (isEmpty!17249 (left!23235 (++!7328 (c!419708 (charsOf!2857 lt!917632)) (c!419708 (printWithSeparatorTokenWhenNeededRec!441 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862))))))))))

(declare-fun d!739966 () Bool)

(declare-fun res!1099612 () Bool)

(declare-fun e!1648265 () Bool)

(assert (=> d!739966 (=> res!1099612 e!1648265)))

(assert (=> d!739966 (= res!1099612 (not (is-Node!9374 (++!7328 (c!419708 (charsOf!2857 lt!917632)) (c!419708 (printWithSeparatorTokenWhenNeededRec!441 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862)))))))))

(assert (=> d!739966 (= (isBalanced!2849 (++!7328 (c!419708 (charsOf!2857 lt!917632)) (c!419708 (printWithSeparatorTokenWhenNeededRec!441 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862))))) e!1648265)))

(declare-fun b!2612199 () Bool)

(declare-fun res!1099609 () Bool)

(assert (=> b!2612199 (=> (not res!1099609) (not e!1648264))))

(assert (=> b!2612199 (= res!1099609 (isBalanced!2849 (left!23235 (++!7328 (c!419708 (charsOf!2857 lt!917632)) (c!419708 (printWithSeparatorTokenWhenNeededRec!441 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862)))))))))

(declare-fun b!2612200 () Bool)

(assert (=> b!2612200 (= e!1648265 e!1648264)))

(declare-fun res!1099614 () Bool)

(assert (=> b!2612200 (=> (not res!1099614) (not e!1648264))))

(assert (=> b!2612200 (= res!1099614 (<= (- 1) (- (height!1355 (left!23235 (++!7328 (c!419708 (charsOf!2857 lt!917632)) (c!419708 (printWithSeparatorTokenWhenNeededRec!441 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862)))))) (height!1355 (right!23565 (++!7328 (c!419708 (charsOf!2857 lt!917632)) (c!419708 (printWithSeparatorTokenWhenNeededRec!441 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862)))))))))))

(declare-fun b!2612201 () Bool)

(declare-fun res!1099610 () Bool)

(assert (=> b!2612201 (=> (not res!1099610) (not e!1648264))))

(assert (=> b!2612201 (= res!1099610 (<= (- (height!1355 (left!23235 (++!7328 (c!419708 (charsOf!2857 lt!917632)) (c!419708 (printWithSeparatorTokenWhenNeededRec!441 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862)))))) (height!1355 (right!23565 (++!7328 (c!419708 (charsOf!2857 lt!917632)) (c!419708 (printWithSeparatorTokenWhenNeededRec!441 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862))))))) 1))))

(declare-fun b!2612202 () Bool)

(assert (=> b!2612202 (= e!1648264 (not (isEmpty!17249 (right!23565 (++!7328 (c!419708 (charsOf!2857 lt!917632)) (c!419708 (printWithSeparatorTokenWhenNeededRec!441 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862))))))))))

(declare-fun b!2612203 () Bool)

(declare-fun res!1099611 () Bool)

(assert (=> b!2612203 (=> (not res!1099611) (not e!1648264))))

(assert (=> b!2612203 (= res!1099611 (isBalanced!2849 (right!23565 (++!7328 (c!419708 (charsOf!2857 lt!917632)) (c!419708 (printWithSeparatorTokenWhenNeededRec!441 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862)))))))))

(assert (= (and d!739966 (not res!1099612)) b!2612200))

(assert (= (and b!2612200 res!1099614) b!2612201))

(assert (= (and b!2612201 res!1099610) b!2612199))

(assert (= (and b!2612199 res!1099609) b!2612203))

(assert (= (and b!2612203 res!1099611) b!2612198))

(assert (= (and b!2612198 res!1099613) b!2612202))

(declare-fun m!2946815 () Bool)

(assert (=> b!2612201 m!2946815))

(declare-fun m!2946817 () Bool)

(assert (=> b!2612201 m!2946817))

(declare-fun m!2946819 () Bool)

(assert (=> b!2612198 m!2946819))

(assert (=> b!2612200 m!2946815))

(assert (=> b!2612200 m!2946817))

(declare-fun m!2946821 () Bool)

(assert (=> b!2612203 m!2946821))

(declare-fun m!2946823 () Bool)

(assert (=> b!2612199 m!2946823))

(declare-fun m!2946825 () Bool)

(assert (=> b!2612202 m!2946825))

(assert (=> b!2611857 d!739966))

(declare-fun b!2612246 () Bool)

(declare-fun e!1648293 () Conc!9374)

(declare-fun call!167634 () Conc!9374)

(assert (=> b!2612246 (= e!1648293 call!167634)))

(declare-fun b!2612247 () Bool)

(declare-fun c!419845 () Bool)

(declare-fun call!167633 () Int)

(declare-fun call!167626 () Int)

(assert (=> b!2612247 (= c!419845 (>= call!167633 call!167626))))

(declare-fun e!1648292 () Conc!9374)

(assert (=> b!2612247 (= e!1648292 e!1648293)))

(declare-fun b!2612248 () Bool)

(declare-fun c!419844 () Bool)

(declare-fun lt!917927 () Int)

(assert (=> b!2612248 (= c!419844 (and (<= (- 1) lt!917927) (<= lt!917927 1)))))

(assert (=> b!2612248 (= lt!917927 (- (height!1355 (c!419708 (printWithSeparatorTokenWhenNeededRec!441 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862)))) (height!1355 (c!419708 (charsOf!2857 lt!917632)))))))

(declare-fun e!1648294 () Conc!9374)

(declare-fun e!1648290 () Conc!9374)

(assert (=> b!2612248 (= e!1648294 e!1648290)))

(declare-fun b!2612249 () Bool)

(declare-fun e!1648287 () Conc!9374)

(assert (=> b!2612249 (= e!1648293 e!1648287)))

(declare-fun lt!917925 () Conc!9374)

(declare-fun call!167627 () Conc!9374)

(assert (=> b!2612249 (= lt!917925 call!167627)))

(declare-fun c!419849 () Bool)

(declare-fun call!167638 () Int)

(declare-fun call!167624 () Int)

(assert (=> b!2612249 (= c!419849 (= call!167638 (- call!167624 3)))))

(declare-fun e!1648289 () Bool)

(declare-fun lt!917924 () Conc!9374)

(declare-fun b!2612250 () Bool)

(declare-fun list!11334 (Conc!9374) List!30292)

(assert (=> b!2612250 (= e!1648289 (= (list!11334 lt!917924) (++!7329 (list!11334 (c!419708 (charsOf!2857 lt!917632))) (list!11334 (c!419708 (printWithSeparatorTokenWhenNeededRec!441 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862)))))))))

(declare-fun b!2612251 () Bool)

(declare-fun e!1648291 () Conc!9374)

(declare-fun call!167628 () Conc!9374)

(assert (=> b!2612251 (= e!1648291 call!167628)))

(declare-fun b!2612252 () Bool)

(assert (=> b!2612252 (= e!1648294 (c!419708 (charsOf!2857 lt!917632)))))

(declare-fun c!419846 () Bool)

(declare-fun call!167625 () Conc!9374)

(declare-fun call!167629 () Conc!9374)

(declare-fun c!419847 () Bool)

(declare-fun bm!167619 () Bool)

(declare-fun lt!917926 () Conc!9374)

(declare-fun c!419850 () Bool)

(declare-fun call!167631 () Conc!9374)

(declare-fun call!167635 () Conc!9374)

(declare-fun <>!221 (Conc!9374 Conc!9374) Conc!9374)

(assert (=> bm!167619 (= call!167625 (<>!221 (ite c!419850 (ite (or c!419845 c!419849) (left!23235 (c!419708 (charsOf!2857 lt!917632))) call!167631) (ite c!419846 call!167629 (ite c!419847 call!167635 lt!917926))) (ite c!419850 (ite c!419845 call!167627 (ite c!419849 call!167631 lt!917925)) (ite (or c!419846 c!419847) (right!23565 (c!419708 (printWithSeparatorTokenWhenNeededRec!441 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862)))) call!167635))))))

(declare-fun bm!167620 () Bool)

(declare-fun call!167636 () Conc!9374)

(assert (=> bm!167620 (= call!167627 call!167636)))

(declare-fun bm!167621 () Bool)

(assert (=> bm!167621 (= call!167638 (height!1355 (ite c!419850 lt!917925 lt!917926)))))

(declare-fun d!739968 () Bool)

(assert (=> d!739968 e!1648289))

(declare-fun res!1099628 () Bool)

(assert (=> d!739968 (=> (not res!1099628) (not e!1648289))))

(assert (=> d!739968 (= res!1099628 (appendAssocInst!619 (c!419708 (charsOf!2857 lt!917632)) (c!419708 (printWithSeparatorTokenWhenNeededRec!441 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862)))))))

(declare-fun e!1648288 () Conc!9374)

(assert (=> d!739968 (= lt!917924 e!1648288)))

(declare-fun c!419848 () Bool)

(assert (=> d!739968 (= c!419848 (= (c!419708 (charsOf!2857 lt!917632)) Empty!9374))))

(declare-fun e!1648286 () Bool)

(assert (=> d!739968 e!1648286))

(declare-fun res!1099626 () Bool)

(assert (=> d!739968 (=> (not res!1099626) (not e!1648286))))

(assert (=> d!739968 (= res!1099626 (isBalanced!2849 (c!419708 (charsOf!2857 lt!917632))))))

(assert (=> d!739968 (= (++!7328 (c!419708 (charsOf!2857 lt!917632)) (c!419708 (printWithSeparatorTokenWhenNeededRec!441 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862)))) lt!917924)))

(declare-fun b!2612253 () Bool)

(declare-fun res!1099627 () Bool)

(assert (=> b!2612253 (=> (not res!1099627) (not e!1648289))))

(assert (=> b!2612253 (= res!1099627 (<= (height!1355 lt!917924) (+ (max!0 (height!1355 (c!419708 (charsOf!2857 lt!917632))) (height!1355 (c!419708 (printWithSeparatorTokenWhenNeededRec!441 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862))))) 1)))))

(declare-fun b!2612254 () Bool)

(declare-fun res!1099629 () Bool)

(assert (=> b!2612254 (=> (not res!1099629) (not e!1648289))))

(assert (=> b!2612254 (= res!1099629 (>= (height!1355 lt!917924) (max!0 (height!1355 (c!419708 (charsOf!2857 lt!917632))) (height!1355 (c!419708 (printWithSeparatorTokenWhenNeededRec!441 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862)))))))))

(declare-fun b!2612255 () Bool)

(declare-fun res!1099625 () Bool)

(assert (=> b!2612255 (=> (not res!1099625) (not e!1648289))))

(assert (=> b!2612255 (= res!1099625 (isBalanced!2849 lt!917924))))

(declare-fun bm!167622 () Bool)

(declare-fun call!167639 () Conc!9374)

(assert (=> bm!167622 (= call!167639 call!167625)))

(declare-fun bm!167623 () Bool)

(declare-fun call!167632 () Conc!9374)

(assert (=> bm!167623 (= call!167631 call!167632)))

(declare-fun b!2612256 () Bool)

(assert (=> b!2612256 (= e!1648291 call!167628)))

(declare-fun bm!167624 () Bool)

(assert (=> bm!167624 (= call!167624 (height!1355 (ite c!419850 (c!419708 (charsOf!2857 lt!917632)) (left!23235 (c!419708 (printWithSeparatorTokenWhenNeededRec!441 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862)))))))))

(declare-fun b!2612257 () Bool)

(declare-fun call!167630 () Conc!9374)

(assert (=> b!2612257 (= e!1648290 call!167630)))

(declare-fun b!2612258 () Bool)

(declare-fun call!167637 () Conc!9374)

(assert (=> b!2612258 (= e!1648287 call!167637)))

(declare-fun bm!167625 () Bool)

(assert (=> bm!167625 (= call!167629 call!167636)))

(declare-fun b!2612259 () Bool)

(assert (=> b!2612259 (= c!419846 (>= call!167633 call!167624))))

(declare-fun e!1648295 () Conc!9374)

(assert (=> b!2612259 (= e!1648292 e!1648295)))

(declare-fun b!2612260 () Bool)

(assert (=> b!2612260 (= e!1648288 (c!419708 (printWithSeparatorTokenWhenNeededRec!441 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862))))))

(declare-fun b!2612261 () Bool)

(assert (=> b!2612261 (= e!1648288 e!1648294)))

(declare-fun c!419851 () Bool)

(assert (=> b!2612261 (= c!419851 (= (c!419708 (printWithSeparatorTokenWhenNeededRec!441 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862))) Empty!9374))))

(declare-fun b!2612262 () Bool)

(assert (=> b!2612262 (= e!1648290 e!1648292)))

(assert (=> b!2612262 (= c!419850 (< lt!917927 (- 1)))))

(declare-fun bm!167626 () Bool)

(assert (=> bm!167626 (= call!167626 (height!1355 (ite c!419850 (right!23565 (c!419708 (charsOf!2857 lt!917632))) (c!419708 (printWithSeparatorTokenWhenNeededRec!441 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862))))))))

(declare-fun bm!167627 () Bool)

(assert (=> bm!167627 (= call!167637 call!167634)))

(declare-fun b!2612263 () Bool)

(assert (=> b!2612263 (= e!1648287 call!167637)))

(declare-fun bm!167628 () Bool)

(assert (=> bm!167628 (= call!167634 call!167625)))

(declare-fun b!2612264 () Bool)

(assert (=> b!2612264 (= e!1648295 e!1648291)))

(assert (=> b!2612264 (= lt!917926 call!167629)))

(assert (=> b!2612264 (= c!419847 (= call!167638 (- call!167626 3)))))

(declare-fun bm!167629 () Bool)

(assert (=> bm!167629 (= call!167633 (height!1355 (ite c!419850 (left!23235 (c!419708 (charsOf!2857 lt!917632))) (right!23565 (c!419708 (printWithSeparatorTokenWhenNeededRec!441 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862)))))))))

(declare-fun b!2612265 () Bool)

(assert (=> b!2612265 (= e!1648295 call!167639)))

(declare-fun bm!167630 () Bool)

(assert (=> bm!167630 (= call!167635 call!167632)))

(declare-fun bm!167631 () Bool)

(assert (=> bm!167631 (= call!167628 call!167639)))

(declare-fun bm!167632 () Bool)

(assert (=> bm!167632 (= call!167632 call!167630)))

(declare-fun b!2612266 () Bool)

(assert (=> b!2612266 (= e!1648286 (isBalanced!2849 (c!419708 (printWithSeparatorTokenWhenNeededRec!441 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862)))))))

(declare-fun bm!167633 () Bool)

(assert (=> bm!167633 (= call!167636 (++!7328 (ite c!419850 (ite c!419845 (right!23565 (c!419708 (charsOf!2857 lt!917632))) (right!23565 (right!23565 (c!419708 (charsOf!2857 lt!917632))))) (c!419708 (charsOf!2857 lt!917632))) (ite c!419850 (c!419708 (printWithSeparatorTokenWhenNeededRec!441 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862))) (ite c!419846 (left!23235 (c!419708 (printWithSeparatorTokenWhenNeededRec!441 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862)))) (left!23235 (left!23235 (c!419708 (printWithSeparatorTokenWhenNeededRec!441 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862)))))))))))

(declare-fun bm!167634 () Bool)

(assert (=> bm!167634 (= call!167630 (<>!221 (ite c!419844 (c!419708 (charsOf!2857 lt!917632)) (ite c!419850 (ite c!419849 (left!23235 (right!23565 (c!419708 (charsOf!2857 lt!917632)))) (left!23235 (c!419708 (charsOf!2857 lt!917632)))) (ite c!419847 lt!917926 (right!23565 (left!23235 (c!419708 (printWithSeparatorTokenWhenNeededRec!441 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862)))))))) (ite c!419844 (c!419708 (printWithSeparatorTokenWhenNeededRec!441 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862))) (ite c!419850 (ite c!419849 lt!917925 (left!23235 (right!23565 (c!419708 (charsOf!2857 lt!917632))))) (ite c!419847 (right!23565 (left!23235 (c!419708 (printWithSeparatorTokenWhenNeededRec!441 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862))))) (right!23565 (c!419708 (printWithSeparatorTokenWhenNeededRec!441 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862)))))))))))

(assert (= (and d!739968 res!1099626) b!2612266))

(assert (= (and d!739968 c!419848) b!2612260))

(assert (= (and d!739968 (not c!419848)) b!2612261))

(assert (= (and b!2612261 c!419851) b!2612252))

(assert (= (and b!2612261 (not c!419851)) b!2612248))

(assert (= (and b!2612248 c!419844) b!2612257))

(assert (= (and b!2612248 (not c!419844)) b!2612262))

(assert (= (and b!2612262 c!419850) b!2612247))

(assert (= (and b!2612262 (not c!419850)) b!2612259))

(assert (= (and b!2612247 c!419845) b!2612246))

(assert (= (and b!2612247 (not c!419845)) b!2612249))

(assert (= (and b!2612249 c!419849) b!2612258))

(assert (= (and b!2612249 (not c!419849)) b!2612263))

(assert (= (or b!2612258 b!2612263) bm!167623))

(assert (= (or b!2612258 b!2612263) bm!167627))

(assert (= (or b!2612246 b!2612249) bm!167620))

(assert (= (or b!2612246 bm!167627) bm!167628))

(assert (= (and b!2612259 c!419846) b!2612265))

(assert (= (and b!2612259 (not c!419846)) b!2612264))

(assert (= (and b!2612264 c!419847) b!2612251))

(assert (= (and b!2612264 (not c!419847)) b!2612256))

(assert (= (or b!2612251 b!2612256) bm!167630))

(assert (= (or b!2612251 b!2612256) bm!167631))

(assert (= (or b!2612265 b!2612264) bm!167625))

(assert (= (or b!2612265 bm!167631) bm!167622))

(assert (= (or bm!167623 bm!167630) bm!167632))

(assert (= (or bm!167620 bm!167625) bm!167633))

(assert (= (or b!2612249 b!2612259) bm!167624))

(assert (= (or bm!167628 bm!167622) bm!167619))

(assert (= (or b!2612249 b!2612264) bm!167621))

(assert (= (or b!2612247 b!2612259) bm!167629))

(assert (= (or b!2612247 b!2612264) bm!167626))

(assert (= (or b!2612257 bm!167632) bm!167634))

(assert (= (and d!739968 res!1099628) b!2612255))

(assert (= (and b!2612255 res!1099625) b!2612253))

(assert (= (and b!2612253 res!1099627) b!2612254))

(assert (= (and b!2612254 res!1099629) b!2612250))

(declare-fun m!2946827 () Bool)

(assert (=> bm!167629 m!2946827))

(declare-fun m!2946829 () Bool)

(assert (=> b!2612266 m!2946829))

(declare-fun m!2946831 () Bool)

(assert (=> bm!167619 m!2946831))

(declare-fun m!2946833 () Bool)

(assert (=> b!2612254 m!2946833))

(assert (=> b!2612254 m!2946421))

(assert (=> b!2612254 m!2946425))

(assert (=> b!2612254 m!2946421))

(assert (=> b!2612254 m!2946425))

(assert (=> b!2612254 m!2946433))

(assert (=> b!2612253 m!2946833))

(assert (=> b!2612253 m!2946421))

(assert (=> b!2612253 m!2946425))

(assert (=> b!2612253 m!2946421))

(assert (=> b!2612253 m!2946425))

(assert (=> b!2612253 m!2946433))

(declare-fun m!2946835 () Bool)

(assert (=> bm!167633 m!2946835))

(assert (=> b!2612248 m!2946425))

(assert (=> b!2612248 m!2946421))

(declare-fun m!2946837 () Bool)

(assert (=> bm!167621 m!2946837))

(declare-fun m!2946839 () Bool)

(assert (=> b!2612250 m!2946839))

(declare-fun m!2946841 () Bool)

(assert (=> b!2612250 m!2946841))

(declare-fun m!2946843 () Bool)

(assert (=> b!2612250 m!2946843))

(assert (=> b!2612250 m!2946841))

(assert (=> b!2612250 m!2946843))

(declare-fun m!2946845 () Bool)

(assert (=> b!2612250 m!2946845))

(declare-fun m!2946847 () Bool)

(assert (=> b!2612255 m!2946847))

(assert (=> d!739968 m!2946445))

(declare-fun m!2946849 () Bool)

(assert (=> d!739968 m!2946849))

(declare-fun m!2946851 () Bool)

(assert (=> bm!167624 m!2946851))

(declare-fun m!2946853 () Bool)

(assert (=> bm!167634 m!2946853))

(declare-fun m!2946855 () Bool)

(assert (=> bm!167626 m!2946855))

(assert (=> b!2611857 d!739968))

(declare-fun d!739970 () Bool)

(declare-fun c!419854 () Bool)

(assert (=> d!739970 (= c!419854 (is-Nil!30194 lt!917680))))

(declare-fun e!1648298 () (Set Token!8602))

(assert (=> d!739970 (= (content!4276 lt!917680) e!1648298)))

(declare-fun b!2612271 () Bool)

(assert (=> b!2612271 (= e!1648298 (as set.empty (Set Token!8602)))))

(declare-fun b!2612272 () Bool)

(assert (=> b!2612272 (= e!1648298 (set.union (set.insert (h!35614 lt!917680) (as set.empty (Set Token!8602))) (content!4276 (t!214155 lt!917680))))))

(assert (= (and d!739970 c!419854) b!2612271))

(assert (= (and d!739970 (not c!419854)) b!2612272))

(declare-fun m!2946857 () Bool)

(assert (=> b!2612272 m!2946857))

(declare-fun m!2946859 () Bool)

(assert (=> b!2612272 m!2946859))

(assert (=> d!739786 d!739970))

(declare-fun d!739972 () Bool)

(declare-fun c!419855 () Bool)

(assert (=> d!739972 (= c!419855 (is-Nil!30194 lt!917628))))

(declare-fun e!1648299 () (Set Token!8602))

(assert (=> d!739972 (= (content!4276 lt!917628) e!1648299)))

(declare-fun b!2612273 () Bool)

(assert (=> b!2612273 (= e!1648299 (as set.empty (Set Token!8602)))))

(declare-fun b!2612274 () Bool)

(assert (=> b!2612274 (= e!1648299 (set.union (set.insert (h!35614 lt!917628) (as set.empty (Set Token!8602))) (content!4276 (t!214155 lt!917628))))))

(assert (= (and d!739972 c!419855) b!2612273))

(assert (= (and d!739972 (not c!419855)) b!2612274))

(declare-fun m!2946861 () Bool)

(assert (=> b!2612274 m!2946861))

(assert (=> b!2612274 m!2946565))

(assert (=> d!739786 d!739972))

(declare-fun b!2612275 () Bool)

(declare-fun e!1648302 () List!30294)

(assert (=> b!2612275 (= e!1648302 Nil!30194)))

(declare-fun d!739974 () Bool)

(declare-fun e!1648304 () Bool)

(assert (=> d!739974 e!1648304))

(declare-fun res!1099630 () Bool)

(assert (=> d!739974 (=> (not res!1099630) (not e!1648304))))

(declare-fun lt!917928 () List!30294)

(assert (=> d!739974 (= res!1099630 (set.subset (content!4276 lt!917928) (content!4276 (list!11331 (c!419709 v!6381)))))))

(assert (=> d!739974 (= lt!917928 e!1648302)))

(declare-fun c!419856 () Bool)

(assert (=> d!739974 (= c!419856 (is-Nil!30194 (list!11331 (c!419709 v!6381))))))

(assert (=> d!739974 (= (drop!1562 (list!11331 (c!419709 v!6381)) from!862) lt!917928)))

(declare-fun bm!167635 () Bool)

(declare-fun call!167640 () Int)

(assert (=> bm!167635 (= call!167640 (size!23374 (list!11331 (c!419709 v!6381))))))

(declare-fun b!2612276 () Bool)

(declare-fun e!1648303 () Int)

(assert (=> b!2612276 (= e!1648303 call!167640)))

(declare-fun b!2612277 () Bool)

(declare-fun e!1648301 () Int)

(assert (=> b!2612277 (= e!1648303 e!1648301)))

(declare-fun c!419857 () Bool)

(assert (=> b!2612277 (= c!419857 (>= from!862 call!167640))))

(declare-fun b!2612278 () Bool)

(assert (=> b!2612278 (= e!1648301 (- call!167640 from!862))))

(declare-fun b!2612279 () Bool)

(declare-fun e!1648300 () List!30294)

(assert (=> b!2612279 (= e!1648300 (list!11331 (c!419709 v!6381)))))

(declare-fun b!2612280 () Bool)

(assert (=> b!2612280 (= e!1648304 (= (size!23374 lt!917928) e!1648303))))

(declare-fun c!419859 () Bool)

(assert (=> b!2612280 (= c!419859 (<= from!862 0))))

(declare-fun b!2612281 () Bool)

(assert (=> b!2612281 (= e!1648301 0)))

(declare-fun b!2612282 () Bool)

(assert (=> b!2612282 (= e!1648300 (drop!1562 (t!214155 (list!11331 (c!419709 v!6381))) (- from!862 1)))))

(declare-fun b!2612283 () Bool)

(assert (=> b!2612283 (= e!1648302 e!1648300)))

(declare-fun c!419858 () Bool)

(assert (=> b!2612283 (= c!419858 (<= from!862 0))))

(assert (= (and d!739974 c!419856) b!2612275))

(assert (= (and d!739974 (not c!419856)) b!2612283))

(assert (= (and b!2612283 c!419858) b!2612279))

(assert (= (and b!2612283 (not c!419858)) b!2612282))

(assert (= (and d!739974 res!1099630) b!2612280))

(assert (= (and b!2612280 c!419859) b!2612276))

(assert (= (and b!2612280 (not c!419859)) b!2612277))

(assert (= (and b!2612277 c!419857) b!2612281))

(assert (= (and b!2612277 (not c!419857)) b!2612278))

(assert (= (or b!2612276 b!2612277 b!2612278) bm!167635))

(declare-fun m!2946863 () Bool)

(assert (=> d!739974 m!2946863))

(assert (=> d!739974 m!2946183))

(declare-fun m!2946865 () Bool)

(assert (=> d!739974 m!2946865))

(assert (=> bm!167635 m!2946183))

(assert (=> bm!167635 m!2946795))

(declare-fun m!2946867 () Bool)

(assert (=> b!2612280 m!2946867))

(declare-fun m!2946869 () Bool)

(assert (=> b!2612282 m!2946869))

(assert (=> d!739820 d!739974))

(declare-fun b!2612292 () Bool)

(declare-fun e!1648309 () List!30294)

(assert (=> b!2612292 (= e!1648309 Nil!30194)))

(declare-fun b!2612293 () Bool)

(declare-fun e!1648310 () List!30294)

(assert (=> b!2612293 (= e!1648309 e!1648310)))

(declare-fun c!419865 () Bool)

(assert (=> b!2612293 (= c!419865 (is-Leaf!14399 (c!419709 v!6381)))))

(declare-fun b!2612294 () Bool)

(declare-fun list!11336 (IArray!18755) List!30294)

(assert (=> b!2612294 (= e!1648310 (list!11336 (xs!12359 (c!419709 v!6381))))))

(declare-fun b!2612295 () Bool)

(declare-fun ++!7332 (List!30294 List!30294) List!30294)

(assert (=> b!2612295 (= e!1648310 (++!7332 (list!11331 (left!23236 (c!419709 v!6381))) (list!11331 (right!23566 (c!419709 v!6381)))))))

(declare-fun d!739976 () Bool)

(declare-fun c!419864 () Bool)

(assert (=> d!739976 (= c!419864 (is-Empty!9375 (c!419709 v!6381)))))

(assert (=> d!739976 (= (list!11331 (c!419709 v!6381)) e!1648309)))

(assert (= (and d!739976 c!419864) b!2612292))

(assert (= (and d!739976 (not c!419864)) b!2612293))

(assert (= (and b!2612293 c!419865) b!2612294))

(assert (= (and b!2612293 (not c!419865)) b!2612295))

(declare-fun m!2946871 () Bool)

(assert (=> b!2612294 m!2946871))

(declare-fun m!2946873 () Bool)

(assert (=> b!2612295 m!2946873))

(declare-fun m!2946875 () Bool)

(assert (=> b!2612295 m!2946875))

(assert (=> b!2612295 m!2946873))

(assert (=> b!2612295 m!2946875))

(declare-fun m!2946877 () Bool)

(assert (=> b!2612295 m!2946877))

(assert (=> d!739820 d!739976))

(declare-fun b!2612314 () Bool)

(declare-fun e!1648334 () Bool)

(declare-fun e!1648337 () Bool)

(assert (=> b!2612314 (= e!1648334 e!1648337)))

(declare-fun res!1099653 () Bool)

(assert (=> b!2612314 (=> (not res!1099653) (not e!1648337))))

(declare-fun appendAssoc!163 (List!30292 List!30292 List!30292) Bool)

(assert (=> b!2612314 (= res!1099653 (appendAssoc!163 (list!11334 (left!23235 (c!419708 (charsOf!2857 lt!917632)))) (list!11334 (right!23565 (c!419708 (charsOf!2857 lt!917632)))) (list!11334 (c!419708 (printWithSeparatorTokenWhenNeededRec!441 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862))))))))

(declare-fun d!739978 () Bool)

(declare-fun e!1648333 () Bool)

(assert (=> d!739978 e!1648333))

(declare-fun res!1099654 () Bool)

(assert (=> d!739978 (=> (not res!1099654) (not e!1648333))))

(assert (=> d!739978 (= res!1099654 e!1648334)))

(declare-fun res!1099649 () Bool)

(assert (=> d!739978 (=> res!1099649 e!1648334)))

(assert (=> d!739978 (= res!1099649 (not (is-Node!9374 (c!419708 (charsOf!2857 lt!917632)))))))

(assert (=> d!739978 (= (appendAssocInst!619 (c!419708 (charsOf!2857 lt!917632)) (c!419708 (printWithSeparatorTokenWhenNeededRec!441 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862)))) true)))

(declare-fun b!2612315 () Bool)

(declare-fun e!1648329 () Bool)

(declare-fun e!1648330 () Bool)

(assert (=> b!2612315 (= e!1648329 e!1648330)))

(declare-fun res!1099652 () Bool)

(assert (=> b!2612315 (=> (not res!1099652) (not e!1648330))))

(assert (=> b!2612315 (= res!1099652 (appendAssoc!163 (list!11334 (c!419708 (charsOf!2857 lt!917632))) (list!11334 (left!23235 (c!419708 (printWithSeparatorTokenWhenNeededRec!441 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862))))) (list!11334 (right!23565 (c!419708 (printWithSeparatorTokenWhenNeededRec!441 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862)))))))))

(declare-fun b!2612316 () Bool)

(declare-fun e!1648336 () Bool)

(assert (=> b!2612316 (= e!1648336 (appendAssoc!163 (++!7329 (list!11334 (c!419708 (charsOf!2857 lt!917632))) (list!11334 (left!23235 (left!23235 (c!419708 (printWithSeparatorTokenWhenNeededRec!441 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862))))))) (list!11334 (right!23565 (left!23235 (c!419708 (printWithSeparatorTokenWhenNeededRec!441 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862)))))) (list!11334 (right!23565 (c!419708 (printWithSeparatorTokenWhenNeededRec!441 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862)))))))))

(declare-fun b!2612317 () Bool)

(assert (=> b!2612317 (= e!1648333 e!1648329)))

(declare-fun res!1099655 () Bool)

(assert (=> b!2612317 (=> res!1099655 e!1648329)))

(assert (=> b!2612317 (= res!1099655 (not (is-Node!9374 (c!419708 (printWithSeparatorTokenWhenNeededRec!441 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862))))))))

(declare-fun b!2612318 () Bool)

(declare-fun e!1648331 () Bool)

(assert (=> b!2612318 (= e!1648330 e!1648331)))

(declare-fun res!1099656 () Bool)

(assert (=> b!2612318 (=> res!1099656 e!1648331)))

(assert (=> b!2612318 (= res!1099656 (not (is-Node!9374 (left!23235 (c!419708 (printWithSeparatorTokenWhenNeededRec!441 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862)))))))))

(declare-fun b!2612319 () Bool)

(declare-fun e!1648332 () Bool)

(assert (=> b!2612319 (= e!1648332 (appendAssoc!163 (list!11334 (left!23235 (c!419708 (charsOf!2857 lt!917632)))) (list!11334 (left!23235 (right!23565 (c!419708 (charsOf!2857 lt!917632))))) (++!7329 (list!11334 (right!23565 (right!23565 (c!419708 (charsOf!2857 lt!917632))))) (list!11334 (c!419708 (printWithSeparatorTokenWhenNeededRec!441 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862)))))))))

(declare-fun b!2612320 () Bool)

(declare-fun e!1648335 () Bool)

(assert (=> b!2612320 (= e!1648335 e!1648332)))

(declare-fun res!1099650 () Bool)

(assert (=> b!2612320 (=> (not res!1099650) (not e!1648332))))

(assert (=> b!2612320 (= res!1099650 (appendAssoc!163 (list!11334 (left!23235 (right!23565 (c!419708 (charsOf!2857 lt!917632))))) (list!11334 (right!23565 (right!23565 (c!419708 (charsOf!2857 lt!917632))))) (list!11334 (c!419708 (printWithSeparatorTokenWhenNeededRec!441 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862))))))))

(declare-fun b!2612321 () Bool)

(assert (=> b!2612321 (= e!1648331 e!1648336)))

(declare-fun res!1099657 () Bool)

(assert (=> b!2612321 (=> (not res!1099657) (not e!1648336))))

(assert (=> b!2612321 (= res!1099657 (appendAssoc!163 (list!11334 (c!419708 (charsOf!2857 lt!917632))) (list!11334 (left!23235 (left!23235 (c!419708 (printWithSeparatorTokenWhenNeededRec!441 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862)))))) (list!11334 (right!23565 (left!23235 (c!419708 (printWithSeparatorTokenWhenNeededRec!441 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862))))))))))

(declare-fun b!2612322 () Bool)

(assert (=> b!2612322 (= e!1648337 e!1648335)))

(declare-fun res!1099651 () Bool)

(assert (=> b!2612322 (=> res!1099651 e!1648335)))

(assert (=> b!2612322 (= res!1099651 (not (is-Node!9374 (right!23565 (c!419708 (charsOf!2857 lt!917632))))))))

(assert (= (and d!739978 (not res!1099649)) b!2612314))

(assert (= (and b!2612314 res!1099653) b!2612322))

(assert (= (and b!2612322 (not res!1099651)) b!2612320))

(assert (= (and b!2612320 res!1099650) b!2612319))

(assert (= (and d!739978 res!1099654) b!2612317))

(assert (= (and b!2612317 (not res!1099655)) b!2612315))

(assert (= (and b!2612315 res!1099652) b!2612318))

(assert (= (and b!2612318 (not res!1099656)) b!2612321))

(assert (= (and b!2612321 res!1099657) b!2612316))

(declare-fun m!2946879 () Bool)

(assert (=> b!2612316 m!2946879))

(declare-fun m!2946881 () Bool)

(assert (=> b!2612316 m!2946881))

(declare-fun m!2946883 () Bool)

(assert (=> b!2612316 m!2946883))

(declare-fun m!2946885 () Bool)

(assert (=> b!2612316 m!2946885))

(assert (=> b!2612316 m!2946841))

(assert (=> b!2612316 m!2946881))

(assert (=> b!2612316 m!2946883))

(assert (=> b!2612316 m!2946841))

(declare-fun m!2946887 () Bool)

(assert (=> b!2612316 m!2946887))

(assert (=> b!2612316 m!2946879))

(assert (=> b!2612316 m!2946887))

(declare-fun m!2946889 () Bool)

(assert (=> b!2612319 m!2946889))

(declare-fun m!2946891 () Bool)

(assert (=> b!2612319 m!2946891))

(assert (=> b!2612319 m!2946889))

(declare-fun m!2946893 () Bool)

(assert (=> b!2612319 m!2946893))

(declare-fun m!2946895 () Bool)

(assert (=> b!2612319 m!2946895))

(assert (=> b!2612319 m!2946891))

(declare-fun m!2946897 () Bool)

(assert (=> b!2612319 m!2946897))

(assert (=> b!2612319 m!2946843))

(assert (=> b!2612319 m!2946897))

(assert (=> b!2612319 m!2946843))

(assert (=> b!2612319 m!2946893))

(assert (=> b!2612321 m!2946841))

(assert (=> b!2612321 m!2946887))

(assert (=> b!2612321 m!2946881))

(assert (=> b!2612321 m!2946841))

(assert (=> b!2612321 m!2946887))

(assert (=> b!2612321 m!2946881))

(declare-fun m!2946899 () Bool)

(assert (=> b!2612321 m!2946899))

(assert (=> b!2612320 m!2946889))

(assert (=> b!2612320 m!2946897))

(assert (=> b!2612320 m!2946843))

(assert (=> b!2612320 m!2946889))

(assert (=> b!2612320 m!2946897))

(assert (=> b!2612320 m!2946843))

(declare-fun m!2946901 () Bool)

(assert (=> b!2612320 m!2946901))

(assert (=> b!2612314 m!2946891))

(declare-fun m!2946903 () Bool)

(assert (=> b!2612314 m!2946903))

(assert (=> b!2612314 m!2946843))

(assert (=> b!2612314 m!2946891))

(assert (=> b!2612314 m!2946903))

(assert (=> b!2612314 m!2946843))

(declare-fun m!2946905 () Bool)

(assert (=> b!2612314 m!2946905))

(assert (=> b!2612315 m!2946841))

(declare-fun m!2946907 () Bool)

(assert (=> b!2612315 m!2946907))

(assert (=> b!2612315 m!2946883))

(assert (=> b!2612315 m!2946841))

(assert (=> b!2612315 m!2946907))

(assert (=> b!2612315 m!2946883))

(declare-fun m!2946909 () Bool)

(assert (=> b!2612315 m!2946909))

(assert (=> d!739862 d!739978))

(assert (=> d!739862 d!739968))

(assert (=> b!2611859 d!739968))

(declare-fun d!739980 () Bool)

(assert (=> d!739980 (= (height!1355 (c!419708 (printWithSeparatorTokenWhenNeededRec!441 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862)))) (ite (is-Empty!9374 (c!419708 (printWithSeparatorTokenWhenNeededRec!441 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862)))) 0 (ite (is-Leaf!14398 (c!419708 (printWithSeparatorTokenWhenNeededRec!441 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862)))) 1 (cheight!9585 (c!419708 (printWithSeparatorTokenWhenNeededRec!441 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862)))))))))

(assert (=> b!2611859 d!739980))

(declare-fun d!739982 () Bool)

(assert (=> d!739982 (= (height!1355 (++!7328 (c!419708 (charsOf!2857 lt!917632)) (c!419708 (printWithSeparatorTokenWhenNeededRec!441 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862))))) (ite (is-Empty!9374 (++!7328 (c!419708 (charsOf!2857 lt!917632)) (c!419708 (printWithSeparatorTokenWhenNeededRec!441 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862))))) 0 (ite (is-Leaf!14398 (++!7328 (c!419708 (charsOf!2857 lt!917632)) (c!419708 (printWithSeparatorTokenWhenNeededRec!441 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862))))) 1 (cheight!9585 (++!7328 (c!419708 (charsOf!2857 lt!917632)) (c!419708 (printWithSeparatorTokenWhenNeededRec!441 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862))))))))))

(assert (=> b!2611859 d!739982))

(declare-fun d!739984 () Bool)

(assert (=> d!739984 (= (max!0 (height!1355 (c!419708 (charsOf!2857 lt!917632))) (height!1355 (c!419708 (printWithSeparatorTokenWhenNeededRec!441 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862))))) (ite (< (height!1355 (c!419708 (charsOf!2857 lt!917632))) (height!1355 (c!419708 (printWithSeparatorTokenWhenNeededRec!441 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862))))) (height!1355 (c!419708 (printWithSeparatorTokenWhenNeededRec!441 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862)))) (height!1355 (c!419708 (charsOf!2857 lt!917632)))))))

(assert (=> b!2611859 d!739984))

(declare-fun d!739986 () Bool)

(assert (=> d!739986 (= (height!1355 (c!419708 (charsOf!2857 lt!917632))) (ite (is-Empty!9374 (c!419708 (charsOf!2857 lt!917632))) 0 (ite (is-Leaf!14398 (c!419708 (charsOf!2857 lt!917632))) 1 (cheight!9585 (c!419708 (charsOf!2857 lt!917632))))))))

(assert (=> b!2611859 d!739986))

(declare-fun d!739988 () Bool)

(declare-fun lt!917929 () Bool)

(assert (=> d!739988 (= lt!917929 (set.member lt!917673 (content!4276 lt!917628)))))

(declare-fun e!1648338 () Bool)

(assert (=> d!739988 (= lt!917929 e!1648338)))

(declare-fun res!1099658 () Bool)

(assert (=> d!739988 (=> (not res!1099658) (not e!1648338))))

(assert (=> d!739988 (= res!1099658 (is-Cons!30194 lt!917628))))

(assert (=> d!739988 (= (contains!5609 lt!917628 lt!917673) lt!917929)))

(declare-fun b!2612323 () Bool)

(declare-fun e!1648339 () Bool)

(assert (=> b!2612323 (= e!1648338 e!1648339)))

(declare-fun res!1099659 () Bool)

(assert (=> b!2612323 (=> res!1099659 e!1648339)))

(assert (=> b!2612323 (= res!1099659 (= (h!35614 lt!917628) lt!917673))))

(declare-fun b!2612324 () Bool)

(assert (=> b!2612324 (= e!1648339 (contains!5609 (t!214155 lt!917628) lt!917673))))

(assert (= (and d!739988 res!1099658) b!2612323))

(assert (= (and b!2612323 (not res!1099659)) b!2612324))

(assert (=> d!739988 m!2946091))

(declare-fun m!2946911 () Bool)

(assert (=> d!739988 m!2946911))

(declare-fun m!2946913 () Bool)

(assert (=> b!2612324 m!2946913))

(assert (=> d!739780 d!739988))

(declare-fun d!739990 () Bool)

(assert (=> d!739990 true))

(declare-fun lambda!97810 () Int)

(declare-fun order!16077 () Int)

(declare-fun dynLambda!12801 (Int Int) Int)

(assert (=> d!739990 (< (dynLambda!12790 order!16065 (toValue!6468 (transformation!4566 (rule!6936 separatorToken!156)))) (dynLambda!12801 order!16077 lambda!97810))))

(declare-fun Forall2!772 (Int) Bool)

(assert (=> d!739990 (= (equivClasses!1801 (toChars!6327 (transformation!4566 (rule!6936 separatorToken!156))) (toValue!6468 (transformation!4566 (rule!6936 separatorToken!156)))) (Forall2!772 lambda!97810))))

(declare-fun bs!473962 () Bool)

(assert (= bs!473962 d!739990))

(declare-fun m!2946915 () Bool)

(assert (=> bs!473962 m!2946915))

(assert (=> b!2611722 d!739990))

(declare-fun d!739992 () Bool)

(assert (=> d!739992 (= (inv!40875 (xs!12359 (c!419709 v!6381))) (<= (size!23374 (innerList!9435 (xs!12359 (c!419709 v!6381)))) 2147483647))))

(declare-fun bs!473963 () Bool)

(assert (= bs!473963 d!739992))

(declare-fun m!2946917 () Bool)

(assert (=> bs!473963 m!2946917))

(assert (=> b!2611892 d!739992))

(assert (=> b!2611504 d!739790))

(assert (=> b!2611820 d!739914))

(declare-fun d!739994 () Bool)

(assert (=> d!739994 true))

(declare-fun order!16079 () Int)

(declare-fun lambda!97813 () Int)

(declare-fun dynLambda!12802 (Int Int) Int)

(assert (=> d!739994 (< (dynLambda!12792 order!16069 (toChars!6327 (transformation!4566 (h!35613 rules!1726)))) (dynLambda!12802 order!16079 lambda!97813))))

(assert (=> d!739994 true))

(assert (=> d!739994 (< (dynLambda!12790 order!16065 (toValue!6468 (transformation!4566 (h!35613 rules!1726)))) (dynLambda!12802 order!16079 lambda!97813))))

(declare-fun Forall!1173 (Int) Bool)

(assert (=> d!739994 (= (semiInverseModEq!1900 (toChars!6327 (transformation!4566 (h!35613 rules!1726))) (toValue!6468 (transformation!4566 (h!35613 rules!1726)))) (Forall!1173 lambda!97813))))

(declare-fun bs!473964 () Bool)

(assert (= bs!473964 d!739994))

(declare-fun m!2946919 () Bool)

(assert (=> bs!473964 m!2946919))

(assert (=> d!739806 d!739994))

(declare-fun d!739996 () Bool)

(declare-fun c!419868 () Bool)

(assert (=> d!739996 (= c!419868 (is-Node!9374 (c!419708 (dynLambda!12796 (toChars!6327 (transformation!4566 (rule!6936 lt!917632))) (value!147737 lt!917632)))))))

(declare-fun e!1648346 () Bool)

(assert (=> d!739996 (= (inv!40871 (c!419708 (dynLambda!12796 (toChars!6327 (transformation!4566 (rule!6936 lt!917632))) (value!147737 lt!917632)))) e!1648346)))

(declare-fun b!2612339 () Bool)

(declare-fun inv!40879 (Conc!9374) Bool)

(assert (=> b!2612339 (= e!1648346 (inv!40879 (c!419708 (dynLambda!12796 (toChars!6327 (transformation!4566 (rule!6936 lt!917632))) (value!147737 lt!917632)))))))

(declare-fun b!2612340 () Bool)

(declare-fun e!1648347 () Bool)

(assert (=> b!2612340 (= e!1648346 e!1648347)))

(declare-fun res!1099664 () Bool)

(assert (=> b!2612340 (= res!1099664 (not (is-Leaf!14398 (c!419708 (dynLambda!12796 (toChars!6327 (transformation!4566 (rule!6936 lt!917632))) (value!147737 lt!917632))))))))

(assert (=> b!2612340 (=> res!1099664 e!1648347)))

(declare-fun b!2612341 () Bool)

(declare-fun inv!40880 (Conc!9374) Bool)

(assert (=> b!2612341 (= e!1648347 (inv!40880 (c!419708 (dynLambda!12796 (toChars!6327 (transformation!4566 (rule!6936 lt!917632))) (value!147737 lt!917632)))))))

(assert (= (and d!739996 c!419868) b!2612339))

(assert (= (and d!739996 (not c!419868)) b!2612340))

(assert (= (and b!2612340 (not res!1099664)) b!2612341))

(declare-fun m!2946921 () Bool)

(assert (=> b!2612339 m!2946921))

(declare-fun m!2946923 () Bool)

(assert (=> b!2612341 m!2946923))

(assert (=> b!2611869 d!739996))

(assert (=> b!2611819 d!739812))

(declare-fun d!739998 () Bool)

(assert (=> d!739998 (= (inv!40872 (dynLambda!12796 (toChars!6327 (transformation!4566 (rule!6936 separatorToken!156))) (value!147737 separatorToken!156))) (isBalanced!2849 (c!419708 (dynLambda!12796 (toChars!6327 (transformation!4566 (rule!6936 separatorToken!156))) (value!147737 separatorToken!156)))))))

(declare-fun bs!473965 () Bool)

(assert (= bs!473965 d!739998))

(declare-fun m!2946925 () Bool)

(assert (=> bs!473965 m!2946925))

(assert (=> tb!142115 d!739998))

(declare-fun d!740000 () Bool)

(declare-fun charsToBigInt!0 (List!30291 Int) Int)

(assert (=> d!740000 (= (inv!15 (value!147737 separatorToken!156)) (= (charsToBigInt!0 (text!33965 (value!147737 separatorToken!156)) 0) (value!147732 (value!147737 separatorToken!156))))))

(declare-fun bs!473966 () Bool)

(assert (= bs!473966 d!740000))

(declare-fun m!2946927 () Bool)

(assert (=> bs!473966 m!2946927))

(assert (=> b!2611705 d!740000))

(declare-fun d!740002 () Bool)

(assert (=> d!740002 (= (head!5961 (drop!1562 lt!917628 from!862)) (h!35614 (drop!1562 lt!917628 from!862)))))

(assert (=> d!739784 d!740002))

(assert (=> d!739784 d!739786))

(assert (=> d!739784 d!739780))

(declare-fun d!740004 () Bool)

(assert (=> d!740004 (= (head!5961 (drop!1562 lt!917628 from!862)) (apply!7095 lt!917628 from!862))))

(assert (=> d!740004 true))

(declare-fun _$27!733 () Unit!44164)

(assert (=> d!740004 (= (choose!15497 lt!917628 from!862) _$27!733)))

(declare-fun bs!473967 () Bool)

(assert (= bs!473967 d!740004))

(assert (=> bs!473967 m!2945981))

(assert (=> bs!473967 m!2945981))

(assert (=> bs!473967 m!2946113))

(assert (=> bs!473967 m!2945983))

(assert (=> d!739784 d!740004))

(declare-fun d!740006 () Bool)

(declare-fun lt!917930 () Token!8602)

(assert (=> d!740006 (contains!5609 (tail!4199 lt!917628) lt!917930)))

(declare-fun e!1648348 () Token!8602)

(assert (=> d!740006 (= lt!917930 e!1648348)))

(declare-fun c!419869 () Bool)

(assert (=> d!740006 (= c!419869 (= (- from!862 1) 0))))

(declare-fun e!1648349 () Bool)

(assert (=> d!740006 e!1648349))

(declare-fun res!1099665 () Bool)

(assert (=> d!740006 (=> (not res!1099665) (not e!1648349))))

(assert (=> d!740006 (= res!1099665 (<= 0 (- from!862 1)))))

(assert (=> d!740006 (= (apply!7095 (tail!4199 lt!917628) (- from!862 1)) lt!917930)))

(declare-fun b!2612342 () Bool)

(assert (=> b!2612342 (= e!1648349 (< (- from!862 1) (size!23374 (tail!4199 lt!917628))))))

(declare-fun b!2612343 () Bool)

(assert (=> b!2612343 (= e!1648348 (head!5961 (tail!4199 lt!917628)))))

(declare-fun b!2612344 () Bool)

(assert (=> b!2612344 (= e!1648348 (apply!7095 (tail!4199 (tail!4199 lt!917628)) (- (- from!862 1) 1)))))

(assert (= (and d!740006 res!1099665) b!2612342))

(assert (= (and d!740006 c!419869) b!2612343))

(assert (= (and d!740006 (not c!419869)) b!2612344))

(assert (=> d!740006 m!2946105))

(declare-fun m!2946929 () Bool)

(assert (=> d!740006 m!2946929))

(assert (=> b!2612342 m!2946105))

(declare-fun m!2946931 () Bool)

(assert (=> b!2612342 m!2946931))

(assert (=> b!2612343 m!2946105))

(declare-fun m!2946933 () Bool)

(assert (=> b!2612343 m!2946933))

(assert (=> b!2612344 m!2946105))

(declare-fun m!2946935 () Bool)

(assert (=> b!2612344 m!2946935))

(assert (=> b!2612344 m!2946935))

(declare-fun m!2946937 () Bool)

(assert (=> b!2612344 m!2946937))

(assert (=> b!2611629 d!740006))

(declare-fun d!740008 () Bool)

(assert (=> d!740008 (= (tail!4199 lt!917628) (t!214155 lt!917628))))

(assert (=> b!2611629 d!740008))

(declare-fun d!740010 () Bool)

(declare-fun lt!917931 () Int)

(assert (=> d!740010 (>= lt!917931 0)))

(declare-fun e!1648350 () Int)

(assert (=> d!740010 (= lt!917931 e!1648350)))

(declare-fun c!419870 () Bool)

(assert (=> d!740010 (= c!419870 (is-Nil!30194 lt!917628))))

(assert (=> d!740010 (= (size!23374 lt!917628) lt!917931)))

(declare-fun b!2612345 () Bool)

(assert (=> b!2612345 (= e!1648350 0)))

(declare-fun b!2612346 () Bool)

(assert (=> b!2612346 (= e!1648350 (+ 1 (size!23374 (t!214155 lt!917628))))))

(assert (= (and d!740010 c!419870) b!2612345))

(assert (= (and d!740010 (not c!419870)) b!2612346))

(assert (=> b!2612346 m!2946567))

(assert (=> b!2611627 d!740010))

(assert (=> bm!167537 d!740010))

(assert (=> b!2611593 d!740010))

(declare-fun d!740012 () Bool)

(assert (=> d!740012 (= (inv!40858 (tag!5056 (h!35613 (t!214154 rules!1726)))) (= (mod (str.len (value!147736 (tag!5056 (h!35613 (t!214154 rules!1726))))) 2) 0))))

(assert (=> b!2611924 d!740012))

(declare-fun d!740014 () Bool)

(declare-fun res!1099666 () Bool)

(declare-fun e!1648351 () Bool)

(assert (=> d!740014 (=> (not res!1099666) (not e!1648351))))

(assert (=> d!740014 (= res!1099666 (semiInverseModEq!1900 (toChars!6327 (transformation!4566 (h!35613 (t!214154 rules!1726)))) (toValue!6468 (transformation!4566 (h!35613 (t!214154 rules!1726))))))))

(assert (=> d!740014 (= (inv!40861 (transformation!4566 (h!35613 (t!214154 rules!1726)))) e!1648351)))

(declare-fun b!2612347 () Bool)

(assert (=> b!2612347 (= e!1648351 (equivClasses!1801 (toChars!6327 (transformation!4566 (h!35613 (t!214154 rules!1726)))) (toValue!6468 (transformation!4566 (h!35613 (t!214154 rules!1726))))))))

(assert (= (and d!740014 res!1099666) b!2612347))

(declare-fun m!2946939 () Bool)

(assert (=> d!740014 m!2946939))

(declare-fun m!2946941 () Bool)

(assert (=> b!2612347 m!2946941))

(assert (=> b!2611924 d!740014))

(declare-fun d!740016 () Bool)

(declare-fun c!419871 () Bool)

(assert (=> d!740016 (= c!419871 (is-Node!9374 (c!419708 (dynLambda!12796 (toChars!6327 (transformation!4566 (rule!6936 separatorToken!156))) (value!147737 separatorToken!156)))))))

(declare-fun e!1648352 () Bool)

(assert (=> d!740016 (= (inv!40871 (c!419708 (dynLambda!12796 (toChars!6327 (transformation!4566 (rule!6936 separatorToken!156))) (value!147737 separatorToken!156)))) e!1648352)))

(declare-fun b!2612348 () Bool)

(assert (=> b!2612348 (= e!1648352 (inv!40879 (c!419708 (dynLambda!12796 (toChars!6327 (transformation!4566 (rule!6936 separatorToken!156))) (value!147737 separatorToken!156)))))))

(declare-fun b!2612349 () Bool)

(declare-fun e!1648353 () Bool)

(assert (=> b!2612349 (= e!1648352 e!1648353)))

(declare-fun res!1099667 () Bool)

(assert (=> b!2612349 (= res!1099667 (not (is-Leaf!14398 (c!419708 (dynLambda!12796 (toChars!6327 (transformation!4566 (rule!6936 separatorToken!156))) (value!147737 separatorToken!156))))))))

(assert (=> b!2612349 (=> res!1099667 e!1648353)))

(declare-fun b!2612350 () Bool)

(assert (=> b!2612350 (= e!1648353 (inv!40880 (c!419708 (dynLambda!12796 (toChars!6327 (transformation!4566 (rule!6936 separatorToken!156))) (value!147737 separatorToken!156)))))))

(assert (= (and d!740016 c!419871) b!2612348))

(assert (= (and d!740016 (not c!419871)) b!2612349))

(assert (= (and b!2612349 (not res!1099667)) b!2612350))

(declare-fun m!2946943 () Bool)

(assert (=> b!2612348 m!2946943))

(declare-fun m!2946945 () Bool)

(assert (=> b!2612350 m!2946945))

(assert (=> b!2611685 d!740016))

(declare-fun d!740018 () Bool)

(declare-fun lt!917934 () Int)

(assert (=> d!740018 (>= lt!917934 0)))

(declare-fun e!1648356 () Int)

(assert (=> d!740018 (= lt!917934 e!1648356)))

(declare-fun c!419874 () Bool)

(assert (=> d!740018 (= c!419874 (is-Nil!30192 (originalCharacters!5332 separatorToken!156)))))

(assert (=> d!740018 (= (size!23375 (originalCharacters!5332 separatorToken!156)) lt!917934)))

(declare-fun b!2612355 () Bool)

(assert (=> b!2612355 (= e!1648356 0)))

(declare-fun b!2612356 () Bool)

(assert (=> b!2612356 (= e!1648356 (+ 1 (size!23375 (t!214153 (originalCharacters!5332 separatorToken!156)))))))

(assert (= (and d!740018 c!419874) b!2612355))

(assert (= (and d!740018 (not c!419874)) b!2612356))

(declare-fun m!2946947 () Bool)

(assert (=> b!2612356 m!2946947))

(assert (=> b!2611680 d!740018))

(declare-fun d!740020 () Bool)

(assert (=> d!740020 (= (tail!4199 (drop!1562 lt!917628 from!862)) (t!214155 (drop!1562 lt!917628 from!862)))))

(assert (=> d!739770 d!740020))

(assert (=> d!739770 d!739786))

(declare-fun b!2612357 () Bool)

(declare-fun e!1648359 () List!30294)

(assert (=> b!2612357 (= e!1648359 Nil!30194)))

(declare-fun d!740022 () Bool)

(declare-fun e!1648361 () Bool)

(assert (=> d!740022 e!1648361))

(declare-fun res!1099668 () Bool)

(assert (=> d!740022 (=> (not res!1099668) (not e!1648361))))

(declare-fun lt!917935 () List!30294)

(assert (=> d!740022 (= res!1099668 (set.subset (content!4276 lt!917935) (content!4276 lt!917628)))))

(assert (=> d!740022 (= lt!917935 e!1648359)))

(declare-fun c!419875 () Bool)

(assert (=> d!740022 (= c!419875 (is-Nil!30194 lt!917628))))

(assert (=> d!740022 (= (drop!1562 lt!917628 (+ from!862 1)) lt!917935)))

(declare-fun bm!167636 () Bool)

(declare-fun call!167641 () Int)

(assert (=> bm!167636 (= call!167641 (size!23374 lt!917628))))

(declare-fun b!2612358 () Bool)

(declare-fun e!1648360 () Int)

(assert (=> b!2612358 (= e!1648360 call!167641)))

(declare-fun b!2612359 () Bool)

(declare-fun e!1648358 () Int)

(assert (=> b!2612359 (= e!1648360 e!1648358)))

(declare-fun c!419876 () Bool)

(assert (=> b!2612359 (= c!419876 (>= (+ from!862 1) call!167641))))

(declare-fun b!2612360 () Bool)

(assert (=> b!2612360 (= e!1648358 (- call!167641 (+ from!862 1)))))

(declare-fun b!2612361 () Bool)

(declare-fun e!1648357 () List!30294)

(assert (=> b!2612361 (= e!1648357 lt!917628)))

(declare-fun b!2612362 () Bool)

(assert (=> b!2612362 (= e!1648361 (= (size!23374 lt!917935) e!1648360))))

(declare-fun c!419878 () Bool)

(assert (=> b!2612362 (= c!419878 (<= (+ from!862 1) 0))))

(declare-fun b!2612363 () Bool)

(assert (=> b!2612363 (= e!1648358 0)))

(declare-fun b!2612364 () Bool)

(assert (=> b!2612364 (= e!1648357 (drop!1562 (t!214155 lt!917628) (- (+ from!862 1) 1)))))

(declare-fun b!2612365 () Bool)

(assert (=> b!2612365 (= e!1648359 e!1648357)))

(declare-fun c!419877 () Bool)

(assert (=> b!2612365 (= c!419877 (<= (+ from!862 1) 0))))

(assert (= (and d!740022 c!419875) b!2612357))

(assert (= (and d!740022 (not c!419875)) b!2612365))

(assert (= (and b!2612365 c!419877) b!2612361))

(assert (= (and b!2612365 (not c!419877)) b!2612364))

(assert (= (and d!740022 res!1099668) b!2612362))

(assert (= (and b!2612362 c!419878) b!2612358))

(assert (= (and b!2612362 (not c!419878)) b!2612359))

(assert (= (and b!2612359 c!419876) b!2612363))

(assert (= (and b!2612359 (not c!419876)) b!2612360))

(assert (= (or b!2612358 b!2612359 b!2612360) bm!167636))

(declare-fun m!2946949 () Bool)

(assert (=> d!740022 m!2946949))

(assert (=> d!740022 m!2946091))

(assert (=> bm!167636 m!2946087))

(declare-fun m!2946951 () Bool)

(assert (=> b!2612362 m!2946951))

(declare-fun m!2946953 () Bool)

(assert (=> b!2612364 m!2946953))

(assert (=> d!739770 d!740022))

(declare-fun d!740024 () Bool)

(assert (=> d!740024 (= (tail!4199 (drop!1562 lt!917628 from!862)) (drop!1562 lt!917628 (+ from!862 1)))))

(assert (=> d!740024 true))

(declare-fun _$28!504 () Unit!44164)

(assert (=> d!740024 (= (choose!15496 lt!917628 from!862) _$28!504)))

(declare-fun bs!473968 () Bool)

(assert (= bs!473968 d!740024))

(assert (=> bs!473968 m!2945981))

(assert (=> bs!473968 m!2945981))

(assert (=> bs!473968 m!2946081))

(assert (=> bs!473968 m!2946083))

(assert (=> d!739770 d!740024))

(declare-fun d!740026 () Bool)

(assert (=> d!740026 (= (list!11330 (dynLambda!12796 (toChars!6327 (transformation!4566 (rule!6936 separatorToken!156))) (value!147737 separatorToken!156))) (list!11334 (c!419708 (dynLambda!12796 (toChars!6327 (transformation!4566 (rule!6936 separatorToken!156))) (value!147737 separatorToken!156)))))))

(declare-fun bs!473969 () Bool)

(assert (= bs!473969 d!740026))

(declare-fun m!2946955 () Bool)

(assert (=> bs!473969 m!2946955))

(assert (=> b!2611679 d!740026))

(declare-fun d!740028 () Bool)

(declare-fun res!1099669 () Bool)

(declare-fun e!1648362 () Bool)

(assert (=> d!740028 (=> res!1099669 e!1648362)))

(assert (=> d!740028 (= res!1099669 (not (is-Cons!30193 (t!214154 rules!1726))))))

(assert (=> d!740028 (= (sepAndNonSepRulesDisjointChars!1139 rules!1726 (t!214154 rules!1726)) e!1648362)))

(declare-fun b!2612366 () Bool)

(declare-fun e!1648363 () Bool)

(assert (=> b!2612366 (= e!1648362 e!1648363)))

(declare-fun res!1099670 () Bool)

(assert (=> b!2612366 (=> (not res!1099670) (not e!1648363))))

(assert (=> b!2612366 (= res!1099670 (ruleDisjointCharsFromAllFromOtherType!507 (h!35613 (t!214154 rules!1726)) rules!1726))))

(declare-fun b!2612367 () Bool)

(assert (=> b!2612367 (= e!1648363 (sepAndNonSepRulesDisjointChars!1139 rules!1726 (t!214154 (t!214154 rules!1726))))))

(assert (= (and d!740028 (not res!1099669)) b!2612366))

(assert (= (and b!2612366 res!1099670) b!2612367))

(declare-fun m!2946957 () Bool)

(assert (=> b!2612366 m!2946957))

(declare-fun m!2946959 () Bool)

(assert (=> b!2612367 m!2946959))

(assert (=> b!2611721 d!740028))

(declare-fun d!740030 () Bool)

(declare-fun res!1099671 () Bool)

(declare-fun e!1648364 () Bool)

(assert (=> d!740030 (=> res!1099671 e!1648364)))

(assert (=> d!740030 (= res!1099671 (is-Nil!30194 (list!11328 v!6381)))))

(assert (=> d!740030 (= (forall!6264 (list!11328 v!6381) lambda!97765) e!1648364)))

(declare-fun b!2612368 () Bool)

(declare-fun e!1648365 () Bool)

(assert (=> b!2612368 (= e!1648364 e!1648365)))

(declare-fun res!1099672 () Bool)

(assert (=> b!2612368 (=> (not res!1099672) (not e!1648365))))

(assert (=> b!2612368 (= res!1099672 (dynLambda!12797 lambda!97765 (h!35614 (list!11328 v!6381))))))

(declare-fun b!2612369 () Bool)

(assert (=> b!2612369 (= e!1648365 (forall!6264 (t!214155 (list!11328 v!6381)) lambda!97765))))

(assert (= (and d!740030 (not res!1099671)) b!2612368))

(assert (= (and b!2612368 res!1099672) b!2612369))

(declare-fun b_lambda!78357 () Bool)

(assert (=> (not b_lambda!78357) (not b!2612368)))

(declare-fun m!2946961 () Bool)

(assert (=> b!2612368 m!2946961))

(declare-fun m!2946963 () Bool)

(assert (=> b!2612369 m!2946963))

(assert (=> d!739796 d!740030))

(assert (=> d!739796 d!739822))

(declare-fun b!2612381 () Bool)

(declare-fun e!1648372 () Bool)

(assert (=> b!2612381 (= e!1648372 (forall!6265 (right!23566 (c!419709 v!6381)) lambda!97765))))

(declare-fun d!740032 () Bool)

(declare-fun lt!917941 () Bool)

(assert (=> d!740032 (= lt!917941 (forall!6264 (list!11331 (c!419709 v!6381)) lambda!97765))))

(declare-fun e!1648373 () Bool)

(assert (=> d!740032 (= lt!917941 e!1648373)))

(declare-fun res!1099677 () Bool)

(assert (=> d!740032 (=> res!1099677 e!1648373)))

(assert (=> d!740032 (= res!1099677 (is-Empty!9375 (c!419709 v!6381)))))

(assert (=> d!740032 (= (forall!6265 (c!419709 v!6381) lambda!97765) lt!917941)))

(declare-fun b!2612379 () Bool)

(declare-fun e!1648374 () Bool)

(declare-fun forall!6270 (IArray!18755 Int) Bool)

(assert (=> b!2612379 (= e!1648374 (forall!6270 (xs!12359 (c!419709 v!6381)) lambda!97765))))

(declare-fun b!2612380 () Bool)

(assert (=> b!2612380 (= e!1648374 e!1648372)))

(declare-fun lt!917940 () Unit!44164)

(declare-fun lemmaForallConcat!149 (List!30294 List!30294 Int) Unit!44164)

(assert (=> b!2612380 (= lt!917940 (lemmaForallConcat!149 (list!11331 (left!23236 (c!419709 v!6381))) (list!11331 (right!23566 (c!419709 v!6381))) lambda!97765))))

(declare-fun res!1099678 () Bool)

(assert (=> b!2612380 (= res!1099678 (forall!6265 (left!23236 (c!419709 v!6381)) lambda!97765))))

(assert (=> b!2612380 (=> (not res!1099678) (not e!1648372))))

(declare-fun b!2612378 () Bool)

(assert (=> b!2612378 (= e!1648373 e!1648374)))

(declare-fun c!419881 () Bool)

(assert (=> b!2612378 (= c!419881 (is-Leaf!14399 (c!419709 v!6381)))))

(assert (= (and d!740032 (not res!1099677)) b!2612378))

(assert (= (and b!2612378 c!419881) b!2612379))

(assert (= (and b!2612378 (not c!419881)) b!2612380))

(assert (= (and b!2612380 res!1099678) b!2612381))

(declare-fun m!2946965 () Bool)

(assert (=> b!2612381 m!2946965))

(assert (=> d!740032 m!2946183))

(assert (=> d!740032 m!2946183))

(declare-fun m!2946967 () Bool)

(assert (=> d!740032 m!2946967))

(declare-fun m!2946969 () Bool)

(assert (=> b!2612379 m!2946969))

(assert (=> b!2612380 m!2946873))

(assert (=> b!2612380 m!2946875))

(assert (=> b!2612380 m!2946873))

(assert (=> b!2612380 m!2946875))

(declare-fun m!2946971 () Bool)

(assert (=> b!2612380 m!2946971))

(declare-fun m!2946973 () Bool)

(assert (=> b!2612380 m!2946973))

(assert (=> d!739796 d!740032))

(declare-fun lt!917942 () Bool)

(declare-fun d!740034 () Bool)

(assert (=> d!740034 (= lt!917942 (isEmpty!17245 (list!11330 (_2!17423 (lex!1877 thiss!14197 rules!1726 (print!1599 thiss!14197 (singletonSeq!2016 separatorToken!156)))))))))

(assert (=> d!740034 (= lt!917942 (isEmpty!17249 (c!419708 (_2!17423 (lex!1877 thiss!14197 rules!1726 (print!1599 thiss!14197 (singletonSeq!2016 separatorToken!156)))))))))

(assert (=> d!740034 (= (isEmpty!17246 (_2!17423 (lex!1877 thiss!14197 rules!1726 (print!1599 thiss!14197 (singletonSeq!2016 separatorToken!156))))) lt!917942)))

(declare-fun bs!473970 () Bool)

(assert (= bs!473970 d!740034))

(declare-fun m!2946975 () Bool)

(assert (=> bs!473970 m!2946975))

(assert (=> bs!473970 m!2946975))

(declare-fun m!2946977 () Bool)

(assert (=> bs!473970 m!2946977))

(declare-fun m!2946979 () Bool)

(assert (=> bs!473970 m!2946979))

(assert (=> b!2611715 d!740034))

(declare-fun d!740038 () Bool)

(declare-fun e!1648436 () Bool)

(assert (=> d!740038 e!1648436))

(declare-fun res!1099726 () Bool)

(assert (=> d!740038 (=> (not res!1099726) (not e!1648436))))

(declare-fun e!1648434 () Bool)

(assert (=> d!740038 (= res!1099726 e!1648434)))

(declare-fun c!419906 () Bool)

(declare-fun lt!917963 () tuple2!29762)

(assert (=> d!740038 (= c!419906 (> (size!23371 (_1!17423 lt!917963)) 0))))

(declare-fun lexTailRecV2!829 (LexerInterface!4163 List!30293 BalanceConc!18362 BalanceConc!18362 BalanceConc!18362 BalanceConc!18364) tuple2!29762)

(assert (=> d!740038 (= lt!917963 (lexTailRecV2!829 thiss!14197 rules!1726 (print!1599 thiss!14197 (singletonSeq!2016 separatorToken!156)) (BalanceConc!18363 Empty!9374) (print!1599 thiss!14197 (singletonSeq!2016 separatorToken!156)) (BalanceConc!18365 Empty!9375)))))

(assert (=> d!740038 (= (lex!1877 thiss!14197 rules!1726 (print!1599 thiss!14197 (singletonSeq!2016 separatorToken!156))) lt!917963)))

(declare-fun b!2612479 () Bool)

(declare-fun res!1099728 () Bool)

(assert (=> b!2612479 (=> (not res!1099728) (not e!1648436))))

(declare-datatypes ((tuple2!29774 0))(
  ( (tuple2!29775 (_1!17429 List!30294) (_2!17429 List!30292)) )
))
(declare-fun lexList!1154 (LexerInterface!4163 List!30293 List!30292) tuple2!29774)

(assert (=> b!2612479 (= res!1099728 (= (list!11328 (_1!17423 lt!917963)) (_1!17429 (lexList!1154 thiss!14197 rules!1726 (list!11330 (print!1599 thiss!14197 (singletonSeq!2016 separatorToken!156)))))))))

(declare-fun b!2612480 () Bool)

(declare-fun e!1648435 () Bool)

(assert (=> b!2612480 (= e!1648434 e!1648435)))

(declare-fun res!1099727 () Bool)

(declare-fun size!23381 (BalanceConc!18362) Int)

(assert (=> b!2612480 (= res!1099727 (< (size!23381 (_2!17423 lt!917963)) (size!23381 (print!1599 thiss!14197 (singletonSeq!2016 separatorToken!156)))))))

(assert (=> b!2612480 (=> (not res!1099727) (not e!1648435))))

(declare-fun b!2612481 () Bool)

(declare-fun isEmpty!17252 (BalanceConc!18364) Bool)

(assert (=> b!2612481 (= e!1648435 (not (isEmpty!17252 (_1!17423 lt!917963))))))

(declare-fun b!2612482 () Bool)

(assert (=> b!2612482 (= e!1648436 (= (list!11330 (_2!17423 lt!917963)) (_2!17429 (lexList!1154 thiss!14197 rules!1726 (list!11330 (print!1599 thiss!14197 (singletonSeq!2016 separatorToken!156)))))))))

(declare-fun b!2612483 () Bool)

(assert (=> b!2612483 (= e!1648434 (= (_2!17423 lt!917963) (print!1599 thiss!14197 (singletonSeq!2016 separatorToken!156))))))

(assert (= (and d!740038 c!419906) b!2612480))

(assert (= (and d!740038 (not c!419906)) b!2612483))

(assert (= (and b!2612480 res!1099727) b!2612481))

(assert (= (and d!740038 res!1099726) b!2612479))

(assert (= (and b!2612479 res!1099728) b!2612482))

(declare-fun m!2947085 () Bool)

(assert (=> b!2612480 m!2947085))

(assert (=> b!2612480 m!2946187))

(declare-fun m!2947087 () Bool)

(assert (=> b!2612480 m!2947087))

(declare-fun m!2947089 () Bool)

(assert (=> b!2612481 m!2947089))

(declare-fun m!2947091 () Bool)

(assert (=> d!740038 m!2947091))

(assert (=> d!740038 m!2946187))

(assert (=> d!740038 m!2946187))

(declare-fun m!2947093 () Bool)

(assert (=> d!740038 m!2947093))

(declare-fun m!2947095 () Bool)

(assert (=> b!2612482 m!2947095))

(assert (=> b!2612482 m!2946187))

(declare-fun m!2947097 () Bool)

(assert (=> b!2612482 m!2947097))

(assert (=> b!2612482 m!2947097))

(declare-fun m!2947099 () Bool)

(assert (=> b!2612482 m!2947099))

(declare-fun m!2947101 () Bool)

(assert (=> b!2612479 m!2947101))

(assert (=> b!2612479 m!2946187))

(assert (=> b!2612479 m!2947097))

(assert (=> b!2612479 m!2947097))

(assert (=> b!2612479 m!2947099))

(assert (=> b!2611715 d!740038))

(declare-fun d!740090 () Bool)

(declare-fun lt!917966 () BalanceConc!18362)

(declare-fun printList!1138 (LexerInterface!4163 List!30294) List!30292)

(assert (=> d!740090 (= (list!11330 lt!917966) (printList!1138 thiss!14197 (list!11328 (singletonSeq!2016 separatorToken!156))))))

(assert (=> d!740090 (= lt!917966 (printTailRec!1088 thiss!14197 (singletonSeq!2016 separatorToken!156) 0 (BalanceConc!18363 Empty!9374)))))

(assert (=> d!740090 (= (print!1599 thiss!14197 (singletonSeq!2016 separatorToken!156)) lt!917966)))

(declare-fun bs!473979 () Bool)

(assert (= bs!473979 d!740090))

(declare-fun m!2947103 () Bool)

(assert (=> bs!473979 m!2947103))

(assert (=> bs!473979 m!2946193))

(assert (=> bs!473979 m!2946195))

(assert (=> bs!473979 m!2946195))

(declare-fun m!2947105 () Bool)

(assert (=> bs!473979 m!2947105))

(assert (=> bs!473979 m!2946193))

(declare-fun m!2947107 () Bool)

(assert (=> bs!473979 m!2947107))

(assert (=> b!2611715 d!740090))

(declare-fun d!740092 () Bool)

(declare-fun e!1648439 () Bool)

(assert (=> d!740092 e!1648439))

(declare-fun res!1099731 () Bool)

(assert (=> d!740092 (=> (not res!1099731) (not e!1648439))))

(declare-fun lt!917969 () BalanceConc!18364)

(assert (=> d!740092 (= res!1099731 (= (list!11328 lt!917969) (Cons!30194 separatorToken!156 Nil!30194)))))

(declare-fun singleton!902 (Token!8602) BalanceConc!18364)

(assert (=> d!740092 (= lt!917969 (singleton!902 separatorToken!156))))

(assert (=> d!740092 (= (singletonSeq!2016 separatorToken!156) lt!917969)))

(declare-fun b!2612486 () Bool)

(assert (=> b!2612486 (= e!1648439 (isBalanced!2848 (c!419709 lt!917969)))))

(assert (= (and d!740092 res!1099731) b!2612486))

(declare-fun m!2947109 () Bool)

(assert (=> d!740092 m!2947109))

(declare-fun m!2947111 () Bool)

(assert (=> d!740092 m!2947111))

(declare-fun m!2947113 () Bool)

(assert (=> b!2612486 m!2947113))

(assert (=> b!2611715 d!740092))

(declare-fun bs!473980 () Bool)

(declare-fun d!740094 () Bool)

(assert (= bs!473980 (and d!740094 d!739990)))

(declare-fun lambda!97814 () Int)

(assert (=> bs!473980 (= (= (toValue!6468 (transformation!4566 (h!35613 rules!1726))) (toValue!6468 (transformation!4566 (rule!6936 separatorToken!156)))) (= lambda!97814 lambda!97810))))

(assert (=> d!740094 true))

(assert (=> d!740094 (< (dynLambda!12790 order!16065 (toValue!6468 (transformation!4566 (h!35613 rules!1726)))) (dynLambda!12801 order!16077 lambda!97814))))

(assert (=> d!740094 (= (equivClasses!1801 (toChars!6327 (transformation!4566 (h!35613 rules!1726))) (toValue!6468 (transformation!4566 (h!35613 rules!1726)))) (Forall2!772 lambda!97814))))

(declare-fun bs!473981 () Bool)

(assert (= bs!473981 d!740094))

(declare-fun m!2947115 () Bool)

(assert (=> bs!473981 m!2947115))

(assert (=> b!2611674 d!740094))

(declare-fun d!740096 () Bool)

(declare-fun lt!917970 () Token!8602)

(assert (=> d!740096 (= lt!917970 (apply!7095 (list!11328 (_1!17423 lt!917701)) 0))))

(assert (=> d!740096 (= lt!917970 (apply!7098 (c!419709 (_1!17423 lt!917701)) 0))))

(declare-fun e!1648440 () Bool)

(assert (=> d!740096 e!1648440))

(declare-fun res!1099732 () Bool)

(assert (=> d!740096 (=> (not res!1099732) (not e!1648440))))

(assert (=> d!740096 (= res!1099732 (<= 0 0))))

(assert (=> d!740096 (= (apply!7094 (_1!17423 lt!917701) 0) lt!917970)))

(declare-fun b!2612487 () Bool)

(assert (=> b!2612487 (= e!1648440 (< 0 (size!23371 (_1!17423 lt!917701))))))

(assert (= (and d!740096 res!1099732) b!2612487))

(declare-fun m!2947117 () Bool)

(assert (=> d!740096 m!2947117))

(assert (=> d!740096 m!2947117))

(declare-fun m!2947119 () Bool)

(assert (=> d!740096 m!2947119))

(declare-fun m!2947121 () Bool)

(assert (=> d!740096 m!2947121))

(assert (=> b!2612487 m!2946197))

(assert (=> b!2611713 d!740096))

(declare-fun d!740098 () Bool)

(assert (=> d!740098 (forall!6264 (dropList!869 v!6381 (+ 1 from!862)) lambda!97793)))

(declare-fun lt!917971 () Unit!44164)

(assert (=> d!740098 (= lt!917971 (choose!15498 (list!11328 v!6381) (dropList!869 v!6381 (+ 1 from!862)) lambda!97793))))

(assert (=> d!740098 (forall!6264 (list!11328 v!6381) lambda!97793)))

(assert (=> d!740098 (= (lemmaContentSubsetPreservesForall!235 (list!11328 v!6381) (dropList!869 v!6381 (+ 1 from!862)) lambda!97793) lt!917971)))

(declare-fun bs!473982 () Bool)

(assert (= bs!473982 d!740098))

(assert (=> bs!473982 m!2946383))

(declare-fun m!2947123 () Bool)

(assert (=> bs!473982 m!2947123))

(assert (=> bs!473982 m!2945991))

(assert (=> bs!473982 m!2946383))

(declare-fun m!2947125 () Bool)

(assert (=> bs!473982 m!2947125))

(assert (=> bs!473982 m!2945991))

(declare-fun m!2947127 () Bool)

(assert (=> bs!473982 m!2947127))

(assert (=> d!739832 d!740098))

(assert (=> d!739832 d!739822))

(declare-fun bs!473993 () Bool)

(declare-fun b!2612660 () Bool)

(assert (= bs!473993 (and b!2612660 b!2612100)))

(declare-fun lambda!97827 () Int)

(assert (=> bs!473993 (= lambda!97827 lambda!97804)))

(declare-fun bs!473994 () Bool)

(assert (= bs!473994 (and b!2612660 b!2611497)))

(assert (=> bs!473994 (= lambda!97827 lambda!97766)))

(declare-fun bs!473995 () Bool)

(assert (= bs!473995 (and b!2612660 d!739832)))

(assert (=> bs!473995 (not (= lambda!97827 lambda!97793))))

(declare-fun bs!473996 () Bool)

(assert (= bs!473996 (and b!2612660 d!739800)))

(assert (=> bs!473996 (= lambda!97827 lambda!97779)))

(declare-fun bs!473997 () Bool)

(assert (= bs!473997 (and b!2612660 b!2611823)))

(assert (=> bs!473997 (= lambda!97827 lambda!97794)))

(declare-fun bs!473998 () Bool)

(assert (= bs!473998 (and b!2612660 d!739928)))

(assert (=> bs!473998 (not (= lambda!97827 lambda!97803))))

(declare-fun bs!473999 () Bool)

(assert (= bs!473999 (and b!2612660 b!2611505)))

(assert (=> bs!473999 (not (= lambda!97827 lambda!97765))))

(declare-fun b!2612664 () Bool)

(declare-fun e!1648528 () Bool)

(assert (=> b!2612664 (= e!1648528 true)))

(declare-fun b!2612663 () Bool)

(declare-fun e!1648527 () Bool)

(assert (=> b!2612663 (= e!1648527 e!1648528)))

(declare-fun b!2612662 () Bool)

(declare-fun e!1648526 () Bool)

(assert (=> b!2612662 (= e!1648526 e!1648527)))

(assert (=> b!2612660 e!1648526))

(assert (= b!2612663 b!2612664))

(assert (= b!2612662 b!2612663))

(assert (= (and b!2612660 (is-Cons!30193 rules!1726)) b!2612662))

(assert (=> b!2612664 (< (dynLambda!12790 order!16065 (toValue!6468 (transformation!4566 (h!35613 rules!1726)))) (dynLambda!12791 order!16067 lambda!97827))))

(assert (=> b!2612664 (< (dynLambda!12792 order!16069 (toChars!6327 (transformation!4566 (h!35613 rules!1726)))) (dynLambda!12791 order!16067 lambda!97827))))

(assert (=> b!2612660 true))

(declare-fun call!167710 () BalanceConc!18362)

(declare-fun c!419961 () Bool)

(declare-fun bm!167703 () Bool)

(declare-fun c!419960 () Bool)

(assert (=> bm!167703 (= call!167710 (charsOf!2857 (ite c!419960 (h!35614 (dropList!869 v!6381 (+ 1 from!862))) (ite c!419961 separatorToken!156 (h!35614 (dropList!869 v!6381 (+ 1 from!862)))))))))

(declare-fun b!2612652 () Bool)

(declare-fun e!1648524 () List!30292)

(declare-fun call!167708 () BalanceConc!18362)

(assert (=> b!2612652 (= e!1648524 (list!11330 call!167708))))

(declare-fun b!2612653 () Bool)

(declare-fun e!1648522 () List!30292)

(assert (=> b!2612653 (= e!1648522 Nil!30192)))

(assert (=> b!2612653 (= (print!1599 thiss!14197 (singletonSeq!2016 (h!35614 (dropList!869 v!6381 (+ 1 from!862))))) (printTailRec!1088 thiss!14197 (singletonSeq!2016 (h!35614 (dropList!869 v!6381 (+ 1 from!862)))) 0 (BalanceConc!18363 Empty!9374)))))

(declare-fun lt!918016 () Unit!44164)

(declare-fun Unit!44175 () Unit!44164)

(assert (=> b!2612653 (= lt!918016 Unit!44175)))

(declare-fun lt!918014 () List!30292)

(declare-fun call!167712 () List!30292)

(declare-fun lt!918015 () Unit!44164)

(assert (=> b!2612653 (= lt!918015 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!784 thiss!14197 rules!1726 call!167712 lt!918014))))

(assert (=> b!2612653 false))

(declare-fun lt!918018 () Unit!44164)

(declare-fun Unit!44176 () Unit!44164)

(assert (=> b!2612653 (= lt!918018 Unit!44176)))

(declare-fun bm!167704 () Bool)

(assert (=> bm!167704 (= call!167708 call!167710)))

(declare-fun b!2612654 () Bool)

(declare-fun e!1648521 () List!30292)

(declare-fun call!167711 () List!30292)

(assert (=> b!2612654 (= e!1648521 call!167711)))

(declare-fun b!2612655 () Bool)

(assert (=> b!2612655 (= e!1648524 lt!918014)))

(declare-fun b!2612656 () Bool)

(assert (=> b!2612656 (= e!1648522 (++!7329 call!167711 lt!918014))))

(declare-fun d!740100 () Bool)

(declare-fun c!419962 () Bool)

(assert (=> d!740100 (= c!419962 (is-Cons!30194 (dropList!869 v!6381 (+ 1 from!862))))))

(declare-fun e!1648525 () List!30292)

(assert (=> d!740100 (= (printWithSeparatorTokenWhenNeededList!643 thiss!14197 rules!1726 (dropList!869 v!6381 (+ 1 from!862)) separatorToken!156) e!1648525)))

(declare-fun bm!167705 () Bool)

(declare-fun c!419959 () Bool)

(assert (=> bm!167705 (= c!419959 c!419960)))

(declare-fun call!167709 () List!30292)

(assert (=> bm!167705 (= call!167711 (++!7329 (ite c!419960 call!167709 call!167712) e!1648524))))

(declare-fun b!2612657 () Bool)

(declare-fun e!1648523 () BalanceConc!18362)

(assert (=> b!2612657 (= e!1648523 (charsOf!2857 (h!35614 (dropList!869 v!6381 (+ 1 from!862)))))))

(declare-fun bm!167706 () Bool)

(assert (=> bm!167706 (= call!167712 call!167709)))

(declare-fun c!419958 () Bool)

(assert (=> bm!167706 (= c!419958 c!419961)))

(declare-fun b!2612658 () Bool)

(assert (=> b!2612658 (= e!1648523 call!167708)))

(declare-fun b!2612659 () Bool)

(declare-fun lt!918013 () Option!5945)

(assert (=> b!2612659 (= c!419961 (and (is-Some!5944 lt!918013) (not (= (_1!17427 (v!32278 lt!918013)) (h!35614 (dropList!869 v!6381 (+ 1 from!862)))))))))

(assert (=> b!2612659 (= e!1648521 e!1648522)))

(assert (=> b!2612660 (= e!1648525 e!1648521)))

(declare-fun lt!918017 () Unit!44164)

(assert (=> b!2612660 (= lt!918017 (forallContained!922 (dropList!869 v!6381 (+ 1 from!862)) lambda!97827 (h!35614 (dropList!869 v!6381 (+ 1 from!862)))))))

(assert (=> b!2612660 (= lt!918014 (printWithSeparatorTokenWhenNeededList!643 thiss!14197 rules!1726 (t!214155 (dropList!869 v!6381 (+ 1 from!862))) separatorToken!156))))

(assert (=> b!2612660 (= lt!918013 (maxPrefix!2295 thiss!14197 rules!1726 (++!7329 (list!11330 (charsOf!2857 (h!35614 (dropList!869 v!6381 (+ 1 from!862))))) lt!918014)))))

(assert (=> b!2612660 (= c!419960 (and (is-Some!5944 lt!918013) (= (_1!17427 (v!32278 lt!918013)) (h!35614 (dropList!869 v!6381 (+ 1 from!862))))))))

(declare-fun bm!167707 () Bool)

(assert (=> bm!167707 (= call!167709 (list!11330 (ite c!419960 call!167710 e!1648523)))))

(declare-fun b!2612661 () Bool)

(assert (=> b!2612661 (= e!1648525 Nil!30192)))

(assert (= (and d!740100 c!419962) b!2612660))

(assert (= (and d!740100 (not c!419962)) b!2612661))

(assert (= (and b!2612660 c!419960) b!2612654))

(assert (= (and b!2612660 (not c!419960)) b!2612659))

(assert (= (and b!2612659 c!419961) b!2612656))

(assert (= (and b!2612659 (not c!419961)) b!2612653))

(assert (= (or b!2612656 b!2612653) bm!167704))

(assert (= (or b!2612656 b!2612653) bm!167706))

(assert (= (and bm!167706 c!419958) b!2612657))

(assert (= (and bm!167706 (not c!419958)) b!2612658))

(assert (= (or b!2612654 bm!167704) bm!167703))

(assert (= (or b!2612654 bm!167706) bm!167707))

(assert (= (or b!2612654 b!2612656) bm!167705))

(assert (= (and bm!167705 c!419959) b!2612655))

(assert (= (and bm!167705 (not c!419959)) b!2612652))

(declare-fun m!2947257 () Bool)

(assert (=> b!2612652 m!2947257))

(declare-fun m!2947259 () Bool)

(assert (=> b!2612656 m!2947259))

(assert (=> b!2612660 m!2946383))

(declare-fun m!2947261 () Bool)

(assert (=> b!2612660 m!2947261))

(declare-fun m!2947263 () Bool)

(assert (=> b!2612660 m!2947263))

(declare-fun m!2947265 () Bool)

(assert (=> b!2612660 m!2947265))

(declare-fun m!2947267 () Bool)

(assert (=> b!2612660 m!2947267))

(declare-fun m!2947269 () Bool)

(assert (=> b!2612660 m!2947269))

(assert (=> b!2612660 m!2947263))

(declare-fun m!2947271 () Bool)

(assert (=> b!2612660 m!2947271))

(assert (=> b!2612660 m!2947265))

(assert (=> b!2612660 m!2947267))

(declare-fun m!2947273 () Bool)

(assert (=> bm!167707 m!2947273))

(assert (=> b!2612657 m!2947263))

(declare-fun m!2947275 () Bool)

(assert (=> bm!167705 m!2947275))

(declare-fun m!2947277 () Bool)

(assert (=> b!2612653 m!2947277))

(assert (=> b!2612653 m!2947277))

(declare-fun m!2947279 () Bool)

(assert (=> b!2612653 m!2947279))

(assert (=> b!2612653 m!2947277))

(declare-fun m!2947281 () Bool)

(assert (=> b!2612653 m!2947281))

(declare-fun m!2947283 () Bool)

(assert (=> b!2612653 m!2947283))

(declare-fun m!2947285 () Bool)

(assert (=> bm!167703 m!2947285))

(assert (=> d!739832 d!740100))

(assert (=> d!739832 d!739812))

(declare-fun d!740146 () Bool)

(assert (=> d!740146 (= (dropList!869 v!6381 (+ 1 from!862)) (drop!1562 (list!11331 (c!419709 v!6381)) (+ 1 from!862)))))

(declare-fun bs!474000 () Bool)

(assert (= bs!474000 d!740146))

(assert (=> bs!474000 m!2946183))

(assert (=> bs!474000 m!2946183))

(declare-fun m!2947287 () Bool)

(assert (=> bs!474000 m!2947287))

(assert (=> d!739832 d!740146))

(declare-fun d!740148 () Bool)

(assert (=> d!740148 (= (list!11330 lt!917797) (list!11334 (c!419708 lt!917797)))))

(declare-fun bs!474001 () Bool)

(assert (= bs!474001 d!740148))

(declare-fun m!2947289 () Bool)

(assert (=> bs!474001 m!2947289))

(assert (=> d!739832 d!740148))

(declare-fun d!740150 () Bool)

(declare-fun lt!918019 () Token!8602)

(assert (=> d!740150 (contains!5609 (list!11328 v!6381) lt!918019)))

(declare-fun e!1648529 () Token!8602)

(assert (=> d!740150 (= lt!918019 e!1648529)))

(declare-fun c!419963 () Bool)

(assert (=> d!740150 (= c!419963 (= from!862 0))))

(declare-fun e!1648530 () Bool)

(assert (=> d!740150 e!1648530))

(declare-fun res!1099789 () Bool)

(assert (=> d!740150 (=> (not res!1099789) (not e!1648530))))

(assert (=> d!740150 (= res!1099789 (<= 0 from!862))))

(assert (=> d!740150 (= (apply!7095 (list!11328 v!6381) from!862) lt!918019)))

(declare-fun b!2612665 () Bool)

(assert (=> b!2612665 (= e!1648530 (< from!862 (size!23374 (list!11328 v!6381))))))

(declare-fun b!2612666 () Bool)

(assert (=> b!2612666 (= e!1648529 (head!5961 (list!11328 v!6381)))))

(declare-fun b!2612667 () Bool)

(assert (=> b!2612667 (= e!1648529 (apply!7095 (tail!4199 (list!11328 v!6381)) (- from!862 1)))))

(assert (= (and d!740150 res!1099789) b!2612665))

(assert (= (and d!740150 c!419963) b!2612666))

(assert (= (and d!740150 (not c!419963)) b!2612667))

(assert (=> d!740150 m!2945991))

(declare-fun m!2947291 () Bool)

(assert (=> d!740150 m!2947291))

(assert (=> b!2612665 m!2945991))

(assert (=> b!2612665 m!2946163))

(assert (=> b!2612666 m!2945991))

(declare-fun m!2947293 () Bool)

(assert (=> b!2612666 m!2947293))

(assert (=> b!2612667 m!2945991))

(declare-fun m!2947295 () Bool)

(assert (=> b!2612667 m!2947295))

(assert (=> b!2612667 m!2947295))

(declare-fun m!2947297 () Bool)

(assert (=> b!2612667 m!2947297))

(assert (=> d!739782 d!740150))

(assert (=> d!739782 d!739822))

(declare-fun d!740152 () Bool)

(declare-fun lt!918024 () Token!8602)

(assert (=> d!740152 (= lt!918024 (apply!7095 (list!11331 (c!419709 v!6381)) from!862))))

(declare-fun e!1648541 () Token!8602)

(assert (=> d!740152 (= lt!918024 e!1648541)))

(declare-fun c!419972 () Bool)

(assert (=> d!740152 (= c!419972 (is-Leaf!14399 (c!419709 v!6381)))))

(declare-fun e!1648539 () Bool)

(assert (=> d!740152 e!1648539))

(declare-fun res!1099792 () Bool)

(assert (=> d!740152 (=> (not res!1099792) (not e!1648539))))

(assert (=> d!740152 (= res!1099792 (<= 0 from!862))))

(assert (=> d!740152 (= (apply!7098 (c!419709 v!6381) from!862) lt!918024)))

(declare-fun b!2612682 () Bool)

(assert (=> b!2612682 (= e!1648539 (< from!862 (size!23376 (c!419709 v!6381))))))

(declare-fun bm!167710 () Bool)

(declare-fun c!419970 () Bool)

(declare-fun c!419971 () Bool)

(assert (=> bm!167710 (= c!419970 c!419971)))

(declare-fun e!1648540 () Int)

(declare-fun call!167715 () Token!8602)

(assert (=> bm!167710 (= call!167715 (apply!7098 (ite c!419971 (left!23236 (c!419709 v!6381)) (right!23566 (c!419709 v!6381))) e!1648540))))

(declare-fun b!2612683 () Bool)

(assert (=> b!2612683 (= e!1648540 (- from!862 (size!23376 (left!23236 (c!419709 v!6381)))))))

(declare-fun b!2612684 () Bool)

(assert (=> b!2612684 (= e!1648540 from!862)))

(declare-fun b!2612685 () Bool)

(declare-fun apply!7100 (IArray!18755 Int) Token!8602)

(assert (=> b!2612685 (= e!1648541 (apply!7100 (xs!12359 (c!419709 v!6381)) from!862))))

(declare-fun b!2612686 () Bool)

(declare-fun e!1648542 () Token!8602)

(assert (=> b!2612686 (= e!1648542 call!167715)))

(declare-fun b!2612687 () Bool)

(assert (=> b!2612687 (= e!1648541 e!1648542)))

(declare-fun lt!918025 () Bool)

(declare-fun appendIndex!262 (List!30294 List!30294 Int) Bool)

(assert (=> b!2612687 (= lt!918025 (appendIndex!262 (list!11331 (left!23236 (c!419709 v!6381))) (list!11331 (right!23566 (c!419709 v!6381))) from!862))))

(assert (=> b!2612687 (= c!419971 (< from!862 (size!23376 (left!23236 (c!419709 v!6381)))))))

(declare-fun b!2612688 () Bool)

(assert (=> b!2612688 (= e!1648542 call!167715)))

(assert (= (and d!740152 res!1099792) b!2612682))

(assert (= (and d!740152 c!419972) b!2612685))

(assert (= (and d!740152 (not c!419972)) b!2612687))

(assert (= (and b!2612687 c!419971) b!2612688))

(assert (= (and b!2612687 (not c!419971)) b!2612686))

(assert (= (or b!2612688 b!2612686) bm!167710))

(assert (= (and bm!167710 c!419970) b!2612684))

(assert (= (and bm!167710 (not c!419970)) b!2612683))

(declare-fun m!2947299 () Bool)

(assert (=> b!2612685 m!2947299))

(assert (=> b!2612687 m!2946873))

(assert (=> b!2612687 m!2946875))

(assert (=> b!2612687 m!2946873))

(assert (=> b!2612687 m!2946875))

(declare-fun m!2947301 () Bool)

(assert (=> b!2612687 m!2947301))

(declare-fun m!2947303 () Bool)

(assert (=> b!2612687 m!2947303))

(assert (=> b!2612682 m!2946165))

(assert (=> b!2612683 m!2947303))

(assert (=> d!740152 m!2946183))

(assert (=> d!740152 m!2946183))

(declare-fun m!2947305 () Bool)

(assert (=> d!740152 m!2947305))

(declare-fun m!2947307 () Bool)

(assert (=> bm!167710 m!2947307))

(assert (=> d!739782 d!740152))

(declare-fun d!740154 () Bool)

(declare-fun res!1099797 () Bool)

(declare-fun e!1648545 () Bool)

(assert (=> d!740154 (=> (not res!1099797) (not e!1648545))))

(assert (=> d!740154 (= res!1099797 (<= (size!23374 (list!11336 (xs!12359 (c!419709 v!6381)))) 512))))

(assert (=> d!740154 (= (inv!40870 (c!419709 v!6381)) e!1648545)))

(declare-fun b!2612693 () Bool)

(declare-fun res!1099798 () Bool)

(assert (=> b!2612693 (=> (not res!1099798) (not e!1648545))))

(assert (=> b!2612693 (= res!1099798 (= (csize!18981 (c!419709 v!6381)) (size!23374 (list!11336 (xs!12359 (c!419709 v!6381))))))))

(declare-fun b!2612694 () Bool)

(assert (=> b!2612694 (= e!1648545 (and (> (csize!18981 (c!419709 v!6381)) 0) (<= (csize!18981 (c!419709 v!6381)) 512)))))

(assert (= (and d!740154 res!1099797) b!2612693))

(assert (= (and b!2612693 res!1099798) b!2612694))

(assert (=> d!740154 m!2946871))

(assert (=> d!740154 m!2946871))

(declare-fun m!2947309 () Bool)

(assert (=> d!740154 m!2947309))

(assert (=> b!2612693 m!2946871))

(assert (=> b!2612693 m!2946871))

(assert (=> b!2612693 m!2947309))

(assert (=> b!2611653 d!740154))

(declare-fun d!740156 () Bool)

(assert (=> d!740156 (= (list!11330 lt!917814) (list!11334 (c!419708 lt!917814)))))

(declare-fun bs!474002 () Bool)

(assert (= bs!474002 d!740156))

(declare-fun m!2947311 () Bool)

(assert (=> bs!474002 m!2947311))

(assert (=> b!2611860 d!740156))

(declare-fun d!740158 () Bool)

(declare-fun e!1648550 () Bool)

(assert (=> d!740158 e!1648550))

(declare-fun res!1099803 () Bool)

(assert (=> d!740158 (=> (not res!1099803) (not e!1648550))))

(declare-fun lt!918028 () List!30292)

(declare-fun content!4278 (List!30292) (Set C!15578))

(assert (=> d!740158 (= res!1099803 (= (content!4278 lt!918028) (set.union (content!4278 (list!11330 (charsOf!2857 lt!917632))) (content!4278 (list!11330 (printWithSeparatorTokenWhenNeededRec!441 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862)))))))))

(declare-fun e!1648551 () List!30292)

(assert (=> d!740158 (= lt!918028 e!1648551)))

(declare-fun c!419975 () Bool)

(assert (=> d!740158 (= c!419975 (is-Nil!30192 (list!11330 (charsOf!2857 lt!917632))))))

(assert (=> d!740158 (= (++!7329 (list!11330 (charsOf!2857 lt!917632)) (list!11330 (printWithSeparatorTokenWhenNeededRec!441 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862)))) lt!918028)))

(declare-fun b!2612706 () Bool)

(assert (=> b!2612706 (= e!1648550 (or (not (= (list!11330 (printWithSeparatorTokenWhenNeededRec!441 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862))) Nil!30192)) (= lt!918028 (list!11330 (charsOf!2857 lt!917632)))))))

(declare-fun b!2612705 () Bool)

(declare-fun res!1099804 () Bool)

(assert (=> b!2612705 (=> (not res!1099804) (not e!1648550))))

(assert (=> b!2612705 (= res!1099804 (= (size!23375 lt!918028) (+ (size!23375 (list!11330 (charsOf!2857 lt!917632))) (size!23375 (list!11330 (printWithSeparatorTokenWhenNeededRec!441 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862)))))))))

(declare-fun b!2612703 () Bool)

(assert (=> b!2612703 (= e!1648551 (list!11330 (printWithSeparatorTokenWhenNeededRec!441 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862))))))

(declare-fun b!2612704 () Bool)

(assert (=> b!2612704 (= e!1648551 (Cons!30192 (h!35612 (list!11330 (charsOf!2857 lt!917632))) (++!7329 (t!214153 (list!11330 (charsOf!2857 lt!917632))) (list!11330 (printWithSeparatorTokenWhenNeededRec!441 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862))))))))

(assert (= (and d!740158 c!419975) b!2612703))

(assert (= (and d!740158 (not c!419975)) b!2612704))

(assert (= (and d!740158 res!1099803) b!2612705))

(assert (= (and b!2612705 res!1099804) b!2612706))

(declare-fun m!2947313 () Bool)

(assert (=> d!740158 m!2947313))

(assert (=> d!740158 m!2946439))

(declare-fun m!2947315 () Bool)

(assert (=> d!740158 m!2947315))

(assert (=> d!740158 m!2946441))

(declare-fun m!2947317 () Bool)

(assert (=> d!740158 m!2947317))

(declare-fun m!2947319 () Bool)

(assert (=> b!2612705 m!2947319))

(assert (=> b!2612705 m!2946439))

(declare-fun m!2947321 () Bool)

(assert (=> b!2612705 m!2947321))

(assert (=> b!2612705 m!2946441))

(declare-fun m!2947323 () Bool)

(assert (=> b!2612705 m!2947323))

(assert (=> b!2612704 m!2946441))

(declare-fun m!2947325 () Bool)

(assert (=> b!2612704 m!2947325))

(assert (=> b!2611860 d!740158))

(declare-fun d!740160 () Bool)

(assert (=> d!740160 (= (list!11330 (charsOf!2857 lt!917632)) (list!11334 (c!419708 (charsOf!2857 lt!917632))))))

(declare-fun bs!474003 () Bool)

(assert (= bs!474003 d!740160))

(assert (=> bs!474003 m!2946841))

(assert (=> b!2611860 d!740160))

(declare-fun d!740162 () Bool)

(assert (=> d!740162 (= (list!11330 (printWithSeparatorTokenWhenNeededRec!441 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862))) (list!11334 (c!419708 (printWithSeparatorTokenWhenNeededRec!441 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862)))))))

(declare-fun bs!474004 () Bool)

(assert (= bs!474004 d!740162))

(assert (=> bs!474004 m!2946843))

(assert (=> b!2611860 d!740162))

(declare-fun d!740164 () Bool)

(declare-fun e!1648552 () Bool)

(assert (=> d!740164 e!1648552))

(declare-fun res!1099805 () Bool)

(assert (=> d!740164 (=> (not res!1099805) (not e!1648552))))

(assert (=> d!740164 (= res!1099805 (appendAssocInst!619 (c!419708 call!167571) (c!419708 lt!917792)))))

(declare-fun lt!918029 () BalanceConc!18362)

(assert (=> d!740164 (= lt!918029 (BalanceConc!18363 (++!7328 (c!419708 call!167571) (c!419708 lt!917792))))))

(assert (=> d!740164 (= (++!7326 call!167571 lt!917792) lt!918029)))

(declare-fun b!2612709 () Bool)

(declare-fun res!1099807 () Bool)

(assert (=> b!2612709 (=> (not res!1099807) (not e!1648552))))

(assert (=> b!2612709 (= res!1099807 (>= (height!1355 (++!7328 (c!419708 call!167571) (c!419708 lt!917792))) (max!0 (height!1355 (c!419708 call!167571)) (height!1355 (c!419708 lt!917792)))))))

(declare-fun b!2612708 () Bool)

(declare-fun res!1099808 () Bool)

(assert (=> b!2612708 (=> (not res!1099808) (not e!1648552))))

(assert (=> b!2612708 (= res!1099808 (<= (height!1355 (++!7328 (c!419708 call!167571) (c!419708 lt!917792))) (+ (max!0 (height!1355 (c!419708 call!167571)) (height!1355 (c!419708 lt!917792))) 1)))))

(declare-fun b!2612710 () Bool)

(assert (=> b!2612710 (= e!1648552 (= (list!11330 lt!918029) (++!7329 (list!11330 call!167571) (list!11330 lt!917792))))))

(declare-fun b!2612707 () Bool)

(declare-fun res!1099806 () Bool)

(assert (=> b!2612707 (=> (not res!1099806) (not e!1648552))))

(assert (=> b!2612707 (= res!1099806 (isBalanced!2849 (++!7328 (c!419708 call!167571) (c!419708 lt!917792))))))

(assert (= (and d!740164 res!1099805) b!2612707))

(assert (= (and b!2612707 res!1099806) b!2612708))

(assert (= (and b!2612708 res!1099808) b!2612709))

(assert (= (and b!2612709 res!1099807) b!2612710))

(declare-fun m!2947327 () Bool)

(assert (=> b!2612709 m!2947327))

(declare-fun m!2947329 () Bool)

(assert (=> b!2612709 m!2947329))

(assert (=> b!2612709 m!2946695))

(assert (=> b!2612709 m!2947327))

(declare-fun m!2947331 () Bool)

(assert (=> b!2612709 m!2947331))

(assert (=> b!2612709 m!2947329))

(assert (=> b!2612709 m!2946695))

(declare-fun m!2947333 () Bool)

(assert (=> b!2612709 m!2947333))

(assert (=> b!2612708 m!2947327))

(assert (=> b!2612708 m!2947329))

(assert (=> b!2612708 m!2946695))

(assert (=> b!2612708 m!2947327))

(assert (=> b!2612708 m!2947331))

(assert (=> b!2612708 m!2947329))

(assert (=> b!2612708 m!2946695))

(assert (=> b!2612708 m!2947333))

(assert (=> b!2612707 m!2947327))

(assert (=> b!2612707 m!2947327))

(declare-fun m!2947335 () Bool)

(assert (=> b!2612707 m!2947335))

(declare-fun m!2947337 () Bool)

(assert (=> b!2612710 m!2947337))

(declare-fun m!2947339 () Bool)

(assert (=> b!2612710 m!2947339))

(assert (=> b!2612710 m!2946343))

(assert (=> b!2612710 m!2947339))

(assert (=> b!2612710 m!2946343))

(declare-fun m!2947341 () Bool)

(assert (=> b!2612710 m!2947341))

(declare-fun m!2947343 () Bool)

(assert (=> d!740164 m!2947343))

(assert (=> d!740164 m!2947327))

(assert (=> b!2611824 d!740164))

(declare-fun bs!474005 () Bool)

(declare-fun d!740166 () Bool)

(assert (= bs!474005 (and d!740166 d!739874)))

(declare-fun lambda!97828 () Int)

(assert (=> bs!474005 (= lambda!97828 lambda!97797)))

(declare-fun bs!474006 () Bool)

(assert (= bs!474006 (and d!740166 d!739952)))

(assert (=> bs!474006 (= lambda!97828 lambda!97807)))

(assert (=> d!740166 true))

(declare-fun lt!918030 () Bool)

(assert (=> d!740166 (= lt!918030 (forall!6266 (t!214154 rules!1726) lambda!97828))))

(declare-fun e!1648553 () Bool)

(assert (=> d!740166 (= lt!918030 e!1648553)))

(declare-fun res!1099809 () Bool)

(assert (=> d!740166 (=> res!1099809 e!1648553)))

(assert (=> d!740166 (= res!1099809 (not (is-Cons!30193 (t!214154 rules!1726))))))

(assert (=> d!740166 (= (rulesValidInductive!1600 thiss!14197 (t!214154 rules!1726)) lt!918030)))

(declare-fun b!2612711 () Bool)

(declare-fun e!1648554 () Bool)

(assert (=> b!2612711 (= e!1648553 e!1648554)))

(declare-fun res!1099810 () Bool)

(assert (=> b!2612711 (=> (not res!1099810) (not e!1648554))))

(assert (=> b!2612711 (= res!1099810 (ruleValid!1532 thiss!14197 (h!35613 (t!214154 rules!1726))))))

(declare-fun b!2612712 () Bool)

(assert (=> b!2612712 (= e!1648554 (rulesValidInductive!1600 thiss!14197 (t!214154 (t!214154 rules!1726))))))

(assert (= (and d!740166 (not res!1099809)) b!2612711))

(assert (= (and b!2612711 res!1099810) b!2612712))

(declare-fun m!2947345 () Bool)

(assert (=> d!740166 m!2947345))

(declare-fun m!2947347 () Bool)

(assert (=> b!2612711 m!2947347))

(declare-fun m!2947349 () Bool)

(assert (=> b!2612712 m!2947349))

(assert (=> b!2611875 d!740166))

(assert (=> bm!167536 d!740010))

(assert (=> b!2611858 d!739968))

(assert (=> b!2611858 d!739980))

(assert (=> b!2611858 d!739982))

(assert (=> b!2611858 d!739984))

(assert (=> b!2611858 d!739986))

(declare-fun lt!918031 () BalanceConc!18362)

(declare-fun d!740168 () Bool)

(assert (=> d!740168 (= (list!11330 lt!918031) (originalCharacters!5332 (ite c!419771 separatorToken!156 call!167572)))))

(assert (=> d!740168 (= lt!918031 (dynLambda!12796 (toChars!6327 (transformation!4566 (rule!6936 (ite c!419771 separatorToken!156 call!167572)))) (value!147737 (ite c!419771 separatorToken!156 call!167572))))))

(assert (=> d!740168 (= (charsOf!2857 (ite c!419771 separatorToken!156 call!167572)) lt!918031)))

(declare-fun b_lambda!78367 () Bool)

(assert (=> (not b_lambda!78367) (not d!740168)))

(declare-fun t!214241 () Bool)

(declare-fun tb!142157 () Bool)

(assert (=> (and b!2611507 (= (toChars!6327 (transformation!4566 (h!35613 rules!1726))) (toChars!6327 (transformation!4566 (rule!6936 (ite c!419771 separatorToken!156 call!167572))))) t!214241) tb!142157))

(declare-fun tp!829862 () Bool)

(declare-fun b!2612713 () Bool)

(declare-fun e!1648555 () Bool)

(assert (=> b!2612713 (= e!1648555 (and (inv!40871 (c!419708 (dynLambda!12796 (toChars!6327 (transformation!4566 (rule!6936 (ite c!419771 separatorToken!156 call!167572)))) (value!147737 (ite c!419771 separatorToken!156 call!167572))))) tp!829862))))

(declare-fun result!176860 () Bool)

(assert (=> tb!142157 (= result!176860 (and (inv!40872 (dynLambda!12796 (toChars!6327 (transformation!4566 (rule!6936 (ite c!419771 separatorToken!156 call!167572)))) (value!147737 (ite c!419771 separatorToken!156 call!167572)))) e!1648555))))

(assert (= tb!142157 b!2612713))

(declare-fun m!2947351 () Bool)

(assert (=> b!2612713 m!2947351))

(declare-fun m!2947353 () Bool)

(assert (=> tb!142157 m!2947353))

(assert (=> d!740168 t!214241))

(declare-fun b_and!191093 () Bool)

(assert (= b_and!191075 (and (=> t!214241 result!176860) b_and!191093)))

(declare-fun tb!142159 () Bool)

(declare-fun t!214243 () Bool)

(assert (=> (and b!2611491 (= (toChars!6327 (transformation!4566 (rule!6936 separatorToken!156))) (toChars!6327 (transformation!4566 (rule!6936 (ite c!419771 separatorToken!156 call!167572))))) t!214243) tb!142159))

(declare-fun result!176862 () Bool)

(assert (= result!176862 result!176860))

(assert (=> d!740168 t!214243))

(declare-fun b_and!191095 () Bool)

(assert (= b_and!191077 (and (=> t!214243 result!176862) b_and!191095)))

(declare-fun tb!142161 () Bool)

(declare-fun t!214245 () Bool)

(assert (=> (and b!2611925 (= (toChars!6327 (transformation!4566 (h!35613 (t!214154 rules!1726)))) (toChars!6327 (transformation!4566 (rule!6936 (ite c!419771 separatorToken!156 call!167572))))) t!214245) tb!142161))

(declare-fun result!176864 () Bool)

(assert (= result!176864 result!176860))

(assert (=> d!740168 t!214245))

(declare-fun b_and!191097 () Bool)

(assert (= b_and!191079 (and (=> t!214245 result!176864) b_and!191097)))

(declare-fun m!2947355 () Bool)

(assert (=> d!740168 m!2947355))

(declare-fun m!2947357 () Bool)

(assert (=> d!740168 m!2947357))

(assert (=> bm!167564 d!740168))

(declare-fun d!740170 () Bool)

(declare-fun res!1099817 () Bool)

(declare-fun e!1648558 () Bool)

(assert (=> d!740170 (=> (not res!1099817) (not e!1648558))))

(assert (=> d!740170 (= res!1099817 (= (csize!18980 (c!419709 v!6381)) (+ (size!23376 (left!23236 (c!419709 v!6381))) (size!23376 (right!23566 (c!419709 v!6381))))))))

(assert (=> d!740170 (= (inv!40869 (c!419709 v!6381)) e!1648558)))

(declare-fun b!2612720 () Bool)

(declare-fun res!1099818 () Bool)

(assert (=> b!2612720 (=> (not res!1099818) (not e!1648558))))

(assert (=> b!2612720 (= res!1099818 (and (not (= (left!23236 (c!419709 v!6381)) Empty!9375)) (not (= (right!23566 (c!419709 v!6381)) Empty!9375))))))

(declare-fun b!2612721 () Bool)

(declare-fun res!1099819 () Bool)

(assert (=> b!2612721 (=> (not res!1099819) (not e!1648558))))

(declare-fun height!1358 (Conc!9375) Int)

(assert (=> b!2612721 (= res!1099819 (= (cheight!9586 (c!419709 v!6381)) (+ (max!0 (height!1358 (left!23236 (c!419709 v!6381))) (height!1358 (right!23566 (c!419709 v!6381)))) 1)))))

(declare-fun b!2612722 () Bool)

(assert (=> b!2612722 (= e!1648558 (<= 0 (cheight!9586 (c!419709 v!6381))))))

(assert (= (and d!740170 res!1099817) b!2612720))

(assert (= (and b!2612720 res!1099818) b!2612721))

(assert (= (and b!2612721 res!1099819) b!2612722))

(assert (=> d!740170 m!2947303))

(declare-fun m!2947359 () Bool)

(assert (=> d!740170 m!2947359))

(declare-fun m!2947361 () Bool)

(assert (=> b!2612721 m!2947361))

(declare-fun m!2947363 () Bool)

(assert (=> b!2612721 m!2947363))

(assert (=> b!2612721 m!2947361))

(assert (=> b!2612721 m!2947363))

(declare-fun m!2947365 () Bool)

(assert (=> b!2612721 m!2947365))

(assert (=> b!2611651 d!740170))

(declare-fun d!740172 () Bool)

(declare-fun lt!918032 () BalanceConc!18362)

(assert (=> d!740172 (= (list!11330 lt!918032) (originalCharacters!5332 (ite c!419770 call!167568 call!167572)))))

(assert (=> d!740172 (= lt!918032 (dynLambda!12796 (toChars!6327 (transformation!4566 (rule!6936 (ite c!419770 call!167568 call!167572)))) (value!147737 (ite c!419770 call!167568 call!167572))))))

(assert (=> d!740172 (= (charsOf!2857 (ite c!419770 call!167568 call!167572)) lt!918032)))

(declare-fun b_lambda!78369 () Bool)

(assert (=> (not b_lambda!78369) (not d!740172)))

(declare-fun t!214247 () Bool)

(declare-fun tb!142163 () Bool)

(assert (=> (and b!2611507 (= (toChars!6327 (transformation!4566 (h!35613 rules!1726))) (toChars!6327 (transformation!4566 (rule!6936 (ite c!419770 call!167568 call!167572))))) t!214247) tb!142163))

(declare-fun tp!829863 () Bool)

(declare-fun e!1648559 () Bool)

(declare-fun b!2612723 () Bool)

(assert (=> b!2612723 (= e!1648559 (and (inv!40871 (c!419708 (dynLambda!12796 (toChars!6327 (transformation!4566 (rule!6936 (ite c!419770 call!167568 call!167572)))) (value!147737 (ite c!419770 call!167568 call!167572))))) tp!829863))))

(declare-fun result!176866 () Bool)

(assert (=> tb!142163 (= result!176866 (and (inv!40872 (dynLambda!12796 (toChars!6327 (transformation!4566 (rule!6936 (ite c!419770 call!167568 call!167572)))) (value!147737 (ite c!419770 call!167568 call!167572)))) e!1648559))))

(assert (= tb!142163 b!2612723))

(declare-fun m!2947367 () Bool)

(assert (=> b!2612723 m!2947367))

(declare-fun m!2947369 () Bool)

(assert (=> tb!142163 m!2947369))

(assert (=> d!740172 t!214247))

(declare-fun b_and!191099 () Bool)

(assert (= b_and!191093 (and (=> t!214247 result!176866) b_and!191099)))

(declare-fun tb!142165 () Bool)

(declare-fun t!214249 () Bool)

(assert (=> (and b!2611491 (= (toChars!6327 (transformation!4566 (rule!6936 separatorToken!156))) (toChars!6327 (transformation!4566 (rule!6936 (ite c!419770 call!167568 call!167572))))) t!214249) tb!142165))

(declare-fun result!176868 () Bool)

(assert (= result!176868 result!176866))

(assert (=> d!740172 t!214249))

(declare-fun b_and!191101 () Bool)

(assert (= b_and!191095 (and (=> t!214249 result!176868) b_and!191101)))

(declare-fun t!214251 () Bool)

(declare-fun tb!142167 () Bool)

(assert (=> (and b!2611925 (= (toChars!6327 (transformation!4566 (h!35613 (t!214154 rules!1726)))) (toChars!6327 (transformation!4566 (rule!6936 (ite c!419770 call!167568 call!167572))))) t!214251) tb!142167))

(declare-fun result!176870 () Bool)

(assert (= result!176870 result!176866))

(assert (=> d!740172 t!214251))

(declare-fun b_and!191103 () Bool)

(assert (= b_and!191097 (and (=> t!214251 result!176870) b_and!191103)))

(declare-fun m!2947371 () Bool)

(assert (=> d!740172 m!2947371))

(declare-fun m!2947373 () Bool)

(assert (=> d!740172 m!2947373))

(assert (=> bm!167563 d!740172))

(declare-fun b!2612724 () Bool)

(declare-fun e!1648562 () List!30294)

(assert (=> b!2612724 (= e!1648562 Nil!30194)))

(declare-fun d!740174 () Bool)

(declare-fun e!1648564 () Bool)

(assert (=> d!740174 e!1648564))

(declare-fun res!1099820 () Bool)

(assert (=> d!740174 (=> (not res!1099820) (not e!1648564))))

(declare-fun lt!918033 () List!30294)

(assert (=> d!740174 (= res!1099820 (set.subset (content!4276 lt!918033) (content!4276 (t!214155 lt!917628))))))

(assert (=> d!740174 (= lt!918033 e!1648562)))

(declare-fun c!419976 () Bool)

(assert (=> d!740174 (= c!419976 (is-Nil!30194 (t!214155 lt!917628)))))

(assert (=> d!740174 (= (drop!1562 (t!214155 lt!917628) (- from!862 1)) lt!918033)))

(declare-fun bm!167711 () Bool)

(declare-fun call!167716 () Int)

(assert (=> bm!167711 (= call!167716 (size!23374 (t!214155 lt!917628)))))

(declare-fun b!2612725 () Bool)

(declare-fun e!1648563 () Int)

(assert (=> b!2612725 (= e!1648563 call!167716)))

(declare-fun b!2612726 () Bool)

(declare-fun e!1648561 () Int)

(assert (=> b!2612726 (= e!1648563 e!1648561)))

(declare-fun c!419977 () Bool)

(assert (=> b!2612726 (= c!419977 (>= (- from!862 1) call!167716))))

(declare-fun b!2612727 () Bool)

(assert (=> b!2612727 (= e!1648561 (- call!167716 (- from!862 1)))))

(declare-fun b!2612728 () Bool)

(declare-fun e!1648560 () List!30294)

(assert (=> b!2612728 (= e!1648560 (t!214155 lt!917628))))

(declare-fun b!2612729 () Bool)

(assert (=> b!2612729 (= e!1648564 (= (size!23374 lt!918033) e!1648563))))

(declare-fun c!419979 () Bool)

(assert (=> b!2612729 (= c!419979 (<= (- from!862 1) 0))))

(declare-fun b!2612730 () Bool)

(assert (=> b!2612730 (= e!1648561 0)))

(declare-fun b!2612731 () Bool)

(assert (=> b!2612731 (= e!1648560 (drop!1562 (t!214155 (t!214155 lt!917628)) (- (- from!862 1) 1)))))

(declare-fun b!2612732 () Bool)

(assert (=> b!2612732 (= e!1648562 e!1648560)))

(declare-fun c!419978 () Bool)

(assert (=> b!2612732 (= c!419978 (<= (- from!862 1) 0))))

(assert (= (and d!740174 c!419976) b!2612724))

(assert (= (and d!740174 (not c!419976)) b!2612732))

(assert (= (and b!2612732 c!419978) b!2612728))

(assert (= (and b!2612732 (not c!419978)) b!2612731))

(assert (= (and d!740174 res!1099820) b!2612729))

(assert (= (and b!2612729 c!419979) b!2612725))

(assert (= (and b!2612729 (not c!419979)) b!2612726))

(assert (= (and b!2612726 c!419977) b!2612730))

(assert (= (and b!2612726 (not c!419977)) b!2612727))

(assert (= (or b!2612725 b!2612726 b!2612727) bm!167711))

(declare-fun m!2947375 () Bool)

(assert (=> d!740174 m!2947375))

(assert (=> d!740174 m!2946565))

(assert (=> bm!167711 m!2946567))

(declare-fun m!2947377 () Bool)

(assert (=> b!2612729 m!2947377))

(declare-fun m!2947379 () Bool)

(assert (=> b!2612731 m!2947379))

(assert (=> b!2611643 d!740174))

(declare-fun d!740176 () Bool)

(declare-fun lt!918034 () Int)

(assert (=> d!740176 (>= lt!918034 0)))

(declare-fun e!1648565 () Int)

(assert (=> d!740176 (= lt!918034 e!1648565)))

(declare-fun c!419980 () Bool)

(assert (=> d!740176 (= c!419980 (is-Nil!30194 lt!917680))))

(assert (=> d!740176 (= (size!23374 lt!917680) lt!918034)))

(declare-fun b!2612733 () Bool)

(assert (=> b!2612733 (= e!1648565 0)))

(declare-fun b!2612734 () Bool)

(assert (=> b!2612734 (= e!1648565 (+ 1 (size!23374 (t!214155 lt!917680))))))

(assert (= (and d!740176 c!419980) b!2612733))

(assert (= (and d!740176 (not c!419980)) b!2612734))

(declare-fun m!2947381 () Bool)

(assert (=> b!2612734 m!2947381))

(assert (=> b!2611641 d!740176))

(declare-fun d!740178 () Bool)

(assert (=> d!740178 (= (list!11330 lt!917818) (list!11334 (c!419708 lt!917818)))))

(declare-fun bs!474007 () Bool)

(assert (= bs!474007 d!740178))

(declare-fun m!2947383 () Bool)

(assert (=> bs!474007 m!2947383))

(assert (=> d!739870 d!740178))

(declare-fun d!740180 () Bool)

(declare-fun c!419981 () Bool)

(assert (=> d!740180 (= c!419981 (is-Node!9375 (left!23236 (c!419709 v!6381))))))

(declare-fun e!1648566 () Bool)

(assert (=> d!740180 (= (inv!40864 (left!23236 (c!419709 v!6381))) e!1648566)))

(declare-fun b!2612735 () Bool)

(assert (=> b!2612735 (= e!1648566 (inv!40869 (left!23236 (c!419709 v!6381))))))

(declare-fun b!2612736 () Bool)

(declare-fun e!1648567 () Bool)

(assert (=> b!2612736 (= e!1648566 e!1648567)))

(declare-fun res!1099821 () Bool)

(assert (=> b!2612736 (= res!1099821 (not (is-Leaf!14399 (left!23236 (c!419709 v!6381)))))))

(assert (=> b!2612736 (=> res!1099821 e!1648567)))

(declare-fun b!2612737 () Bool)

(assert (=> b!2612737 (= e!1648567 (inv!40870 (left!23236 (c!419709 v!6381))))))

(assert (= (and d!740180 c!419981) b!2612735))

(assert (= (and d!740180 (not c!419981)) b!2612736))

(assert (= (and b!2612736 (not res!1099821)) b!2612737))

(declare-fun m!2947385 () Bool)

(assert (=> b!2612735 m!2947385))

(declare-fun m!2947387 () Bool)

(assert (=> b!2612737 m!2947387))

(assert (=> b!2611891 d!740180))

(declare-fun d!740182 () Bool)

(declare-fun c!419982 () Bool)

(assert (=> d!740182 (= c!419982 (is-Node!9375 (right!23566 (c!419709 v!6381))))))

(declare-fun e!1648568 () Bool)

(assert (=> d!740182 (= (inv!40864 (right!23566 (c!419709 v!6381))) e!1648568)))

(declare-fun b!2612738 () Bool)

(assert (=> b!2612738 (= e!1648568 (inv!40869 (right!23566 (c!419709 v!6381))))))

(declare-fun b!2612739 () Bool)

(declare-fun e!1648569 () Bool)

(assert (=> b!2612739 (= e!1648568 e!1648569)))

(declare-fun res!1099822 () Bool)

(assert (=> b!2612739 (= res!1099822 (not (is-Leaf!14399 (right!23566 (c!419709 v!6381)))))))

(assert (=> b!2612739 (=> res!1099822 e!1648569)))

(declare-fun b!2612740 () Bool)

(assert (=> b!2612740 (= e!1648569 (inv!40870 (right!23566 (c!419709 v!6381))))))

(assert (= (and d!740182 c!419982) b!2612738))

(assert (= (and d!740182 (not c!419982)) b!2612739))

(assert (= (and b!2612739 (not res!1099822)) b!2612740))

(declare-fun m!2947389 () Bool)

(assert (=> b!2612738 m!2947389))

(declare-fun m!2947391 () Bool)

(assert (=> b!2612740 m!2947391))

(assert (=> b!2611891 d!740182))

(declare-fun d!740184 () Bool)

(declare-fun res!1099823 () Bool)

(declare-fun e!1648570 () Bool)

(assert (=> d!740184 (=> res!1099823 e!1648570)))

(assert (=> d!740184 (= res!1099823 (is-Nil!30194 (list!11328 v!6381)))))

(assert (=> d!740184 (= (forall!6264 (list!11328 v!6381) lambda!97779) e!1648570)))

(declare-fun b!2612741 () Bool)

(declare-fun e!1648571 () Bool)

(assert (=> b!2612741 (= e!1648570 e!1648571)))

(declare-fun res!1099824 () Bool)

(assert (=> b!2612741 (=> (not res!1099824) (not e!1648571))))

(assert (=> b!2612741 (= res!1099824 (dynLambda!12797 lambda!97779 (h!35614 (list!11328 v!6381))))))

(declare-fun b!2612742 () Bool)

(assert (=> b!2612742 (= e!1648571 (forall!6264 (t!214155 (list!11328 v!6381)) lambda!97779))))

(assert (= (and d!740184 (not res!1099823)) b!2612741))

(assert (= (and b!2612741 res!1099824) b!2612742))

(declare-fun b_lambda!78371 () Bool)

(assert (=> (not b_lambda!78371) (not b!2612741)))

(declare-fun m!2947393 () Bool)

(assert (=> b!2612741 m!2947393))

(declare-fun m!2947395 () Bool)

(assert (=> b!2612742 m!2947395))

(assert (=> d!739800 d!740184))

(assert (=> d!739800 d!739822))

(declare-fun d!740186 () Bool)

(declare-fun lt!918035 () Bool)

(assert (=> d!740186 (= lt!918035 (forall!6264 (list!11328 v!6381) lambda!97779))))

(assert (=> d!740186 (= lt!918035 (forall!6265 (c!419709 v!6381) lambda!97779))))

(assert (=> d!740186 (= (forall!6262 v!6381 lambda!97779) lt!918035)))

(declare-fun bs!474008 () Bool)

(assert (= bs!474008 d!740186))

(assert (=> bs!474008 m!2945991))

(assert (=> bs!474008 m!2945991))

(assert (=> bs!474008 m!2946139))

(declare-fun m!2947397 () Bool)

(assert (=> bs!474008 m!2947397))

(assert (=> d!739800 d!740186))

(assert (=> d!739800 d!739788))

(declare-fun d!740188 () Bool)

(assert (=> d!740188 (= (list!11330 lt!917792) (list!11334 (c!419708 lt!917792)))))

(declare-fun bs!474009 () Bool)

(assert (= bs!474009 d!740188))

(declare-fun m!2947399 () Bool)

(assert (=> bs!474009 m!2947399))

(assert (=> b!2611818 d!740188))

(declare-fun d!740190 () Bool)

(declare-fun lt!918036 () BalanceConc!18362)

(assert (=> d!740190 (= (list!11330 lt!918036) (printList!1138 thiss!14197 (list!11328 (singletonSeq!2016 call!167572))))))

(assert (=> d!740190 (= lt!918036 (printTailRec!1088 thiss!14197 (singletonSeq!2016 call!167572) 0 (BalanceConc!18363 Empty!9374)))))

(assert (=> d!740190 (= (print!1599 thiss!14197 (singletonSeq!2016 call!167572)) lt!918036)))

(declare-fun bs!474010 () Bool)

(assert (= bs!474010 d!740190))

(declare-fun m!2947401 () Bool)

(assert (=> bs!474010 m!2947401))

(assert (=> bs!474010 m!2946337))

(declare-fun m!2947403 () Bool)

(assert (=> bs!474010 m!2947403))

(assert (=> bs!474010 m!2947403))

(declare-fun m!2947405 () Bool)

(assert (=> bs!474010 m!2947405))

(assert (=> bs!474010 m!2946337))

(assert (=> bs!474010 m!2946347))

(assert (=> b!2611818 d!740190))

(declare-fun b!2612832 () Bool)

(declare-fun res!1099865 () Bool)

(declare-fun e!1648630 () Bool)

(assert (=> b!2612832 (=> (not res!1099865) (not e!1648630))))

(declare-fun lt!918124 () Token!8602)

(declare-fun matchR!3603 (Regex!7710 List!30292) Bool)

(declare-datatypes ((Option!5947 0))(
  ( (None!5946) (Some!5946 (v!32281 Rule!8932)) )
))
(declare-fun get!9532 (Option!5947) Rule!8932)

(declare-fun getRuleFromTag!814 (LexerInterface!4163 List!30293 String!33826) Option!5947)

(assert (=> b!2612832 (= res!1099865 (matchR!3603 (regex!4566 (get!9532 (getRuleFromTag!814 thiss!14197 rules!1726 (tag!5056 (rule!6936 lt!918124))))) (list!11330 (charsOf!2857 lt!918124))))))

(declare-fun b!2612834 () Bool)

(declare-fun e!1648631 () Unit!44164)

(declare-fun Unit!44179 () Unit!44164)

(assert (=> b!2612834 (= e!1648631 Unit!44179)))

(declare-fun lt!918126 () List!30292)

(assert (=> b!2612834 (= lt!918126 (++!7329 (list!11330 call!167569) (list!11330 lt!917792)))))

(declare-fun lt!918131 () Unit!44164)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!418 (LexerInterface!4163 Rule!8932 List!30293 List!30292) Unit!44164)

(assert (=> b!2612834 (= lt!918131 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!418 thiss!14197 (rule!6936 lt!918124) rules!1726 lt!918126))))

(declare-fun isEmpty!17254 (Option!5945) Bool)

(declare-fun maxPrefixOneRule!1461 (LexerInterface!4163 Rule!8932 List!30292) Option!5945)

(assert (=> b!2612834 (isEmpty!17254 (maxPrefixOneRule!1461 thiss!14197 (rule!6936 lt!918124) lt!918126))))

(declare-fun lt!918121 () Unit!44164)

(assert (=> b!2612834 (= lt!918121 lt!918131)))

(declare-fun lt!918134 () List!30292)

(assert (=> b!2612834 (= lt!918134 (list!11330 (charsOf!2857 lt!918124)))))

(declare-fun lt!918128 () Unit!44164)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!406 (LexerInterface!4163 Rule!8932 List!30292 List!30292) Unit!44164)

(assert (=> b!2612834 (= lt!918128 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!406 thiss!14197 (rule!6936 lt!918124) lt!918134 (++!7329 (list!11330 call!167569) (list!11330 lt!917792))))))

(assert (=> b!2612834 (not (matchR!3603 (regex!4566 (rule!6936 lt!918124)) lt!918134))))

(declare-fun lt!918135 () Unit!44164)

(assert (=> b!2612834 (= lt!918135 lt!918128)))

(assert (=> b!2612834 false))

(declare-fun d!740192 () Bool)

(assert (=> d!740192 (isDefined!4762 (maxPrefix!2295 thiss!14197 rules!1726 (++!7329 (list!11330 call!167569) (list!11330 lt!917792))))))

(declare-fun lt!918127 () Unit!44164)

(assert (=> d!740192 (= lt!918127 e!1648631)))

(declare-fun c!420006 () Bool)

(assert (=> d!740192 (= c!420006 (isEmpty!17254 (maxPrefix!2295 thiss!14197 rules!1726 (++!7329 (list!11330 call!167569) (list!11330 lt!917792)))))))

(declare-fun lt!918130 () Unit!44164)

(declare-fun lt!918133 () Unit!44164)

(assert (=> d!740192 (= lt!918130 lt!918133)))

(assert (=> d!740192 e!1648630))

(declare-fun res!1099864 () Bool)

(assert (=> d!740192 (=> (not res!1099864) (not e!1648630))))

(declare-fun isDefined!4765 (Option!5947) Bool)

(assert (=> d!740192 (= res!1099864 (isDefined!4765 (getRuleFromTag!814 thiss!14197 rules!1726 (tag!5056 (rule!6936 lt!918124)))))))

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!814 (LexerInterface!4163 List!30293 List!30292 Token!8602) Unit!44164)

(assert (=> d!740192 (= lt!918133 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!814 thiss!14197 rules!1726 (list!11330 call!167569) lt!918124))))

(declare-fun lt!918125 () Unit!44164)

(declare-fun lt!918129 () Unit!44164)

(assert (=> d!740192 (= lt!918125 lt!918129)))

(declare-fun lt!918123 () List!30292)

(assert (=> d!740192 (isPrefix!2424 lt!918123 (++!7329 (list!11330 call!167569) (list!11330 lt!917792)))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!382 (List!30292 List!30292 List!30292) Unit!44164)

(assert (=> d!740192 (= lt!918129 (lemmaPrefixStaysPrefixWhenAddingToSuffix!382 lt!918123 (list!11330 call!167569) (list!11330 lt!917792)))))

(assert (=> d!740192 (= lt!918123 (list!11330 (charsOf!2857 lt!918124)))))

(declare-fun lt!918122 () Unit!44164)

(declare-fun lt!918136 () Unit!44164)

(assert (=> d!740192 (= lt!918122 lt!918136)))

(declare-fun lt!918132 () List!30292)

(declare-fun lt!918120 () List!30292)

(assert (=> d!740192 (isPrefix!2424 lt!918132 (++!7329 lt!918132 lt!918120))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1601 (List!30292 List!30292) Unit!44164)

(assert (=> d!740192 (= lt!918136 (lemmaConcatTwoListThenFirstIsPrefix!1601 lt!918132 lt!918120))))

(assert (=> d!740192 (= lt!918120 (_2!17427 (get!9529 (maxPrefix!2295 thiss!14197 rules!1726 (list!11330 call!167569)))))))

(assert (=> d!740192 (= lt!918132 (list!11330 (charsOf!2857 lt!918124)))))

(declare-fun seqFromList!3166 (List!30292) BalanceConc!18362)

(assert (=> d!740192 (= lt!918124 (head!5961 (list!11328 (_1!17423 (lex!1877 thiss!14197 rules!1726 (seqFromList!3166 (list!11330 call!167569)))))))))

(assert (=> d!740192 (not (isEmpty!17243 rules!1726))))

(assert (=> d!740192 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!784 thiss!14197 rules!1726 (list!11330 call!167569) (list!11330 lt!917792)) lt!918127)))

(declare-fun b!2612835 () Bool)

(declare-fun Unit!44180 () Unit!44164)

(assert (=> b!2612835 (= e!1648631 Unit!44180)))

(declare-fun b!2612833 () Bool)

(assert (=> b!2612833 (= e!1648630 (= (rule!6936 lt!918124) (get!9532 (getRuleFromTag!814 thiss!14197 rules!1726 (tag!5056 (rule!6936 lt!918124))))))))

(assert (= (and d!740192 res!1099864) b!2612832))

(assert (= (and b!2612832 res!1099865) b!2612833))

(assert (= (and d!740192 c!420006) b!2612834))

(assert (= (and d!740192 (not c!420006)) b!2612835))

(declare-fun m!2947579 () Bool)

(assert (=> b!2612832 m!2947579))

(declare-fun m!2947581 () Bool)

(assert (=> b!2612832 m!2947581))

(declare-fun m!2947583 () Bool)

(assert (=> b!2612832 m!2947583))

(declare-fun m!2947585 () Bool)

(assert (=> b!2612832 m!2947585))

(declare-fun m!2947587 () Bool)

(assert (=> b!2612832 m!2947587))

(assert (=> b!2612832 m!2947583))

(assert (=> b!2612832 m!2947587))

(assert (=> b!2612832 m!2947579))

(assert (=> b!2612834 m!2947587))

(declare-fun m!2947589 () Bool)

(assert (=> b!2612834 m!2947589))

(assert (=> b!2612834 m!2947587))

(assert (=> b!2612834 m!2947583))

(assert (=> b!2612834 m!2947589))

(declare-fun m!2947591 () Bool)

(assert (=> b!2612834 m!2947591))

(assert (=> b!2612834 m!2946341))

(assert (=> b!2612834 m!2946343))

(declare-fun m!2947593 () Bool)

(assert (=> b!2612834 m!2947593))

(declare-fun m!2947595 () Bool)

(assert (=> b!2612834 m!2947595))

(declare-fun m!2947597 () Bool)

(assert (=> b!2612834 m!2947597))

(assert (=> b!2612834 m!2947593))

(declare-fun m!2947599 () Bool)

(assert (=> b!2612834 m!2947599))

(declare-fun m!2947601 () Bool)

(assert (=> d!740192 m!2947601))

(declare-fun m!2947603 () Bool)

(assert (=> d!740192 m!2947603))

(declare-fun m!2947605 () Bool)

(assert (=> d!740192 m!2947605))

(declare-fun m!2947607 () Bool)

(assert (=> d!740192 m!2947607))

(declare-fun m!2947609 () Bool)

(assert (=> d!740192 m!2947609))

(assert (=> d!740192 m!2947601))

(declare-fun m!2947611 () Bool)

(assert (=> d!740192 m!2947611))

(assert (=> d!740192 m!2946341))

(assert (=> d!740192 m!2946343))

(declare-fun m!2947613 () Bool)

(assert (=> d!740192 m!2947613))

(assert (=> d!740192 m!2946341))

(declare-fun m!2947615 () Bool)

(assert (=> d!740192 m!2947615))

(assert (=> d!740192 m!2945953))

(assert (=> d!740192 m!2946341))

(declare-fun m!2947617 () Bool)

(assert (=> d!740192 m!2947617))

(assert (=> d!740192 m!2946341))

(declare-fun m!2947619 () Bool)

(assert (=> d!740192 m!2947619))

(assert (=> d!740192 m!2947587))

(assert (=> d!740192 m!2947579))

(assert (=> d!740192 m!2947593))

(declare-fun m!2947621 () Bool)

(assert (=> d!740192 m!2947621))

(assert (=> d!740192 m!2947579))

(declare-fun m!2947623 () Bool)

(assert (=> d!740192 m!2947623))

(assert (=> d!740192 m!2947587))

(assert (=> d!740192 m!2947583))

(assert (=> d!740192 m!2947593))

(assert (=> d!740192 m!2947603))

(assert (=> d!740192 m!2947603))

(declare-fun m!2947625 () Bool)

(assert (=> d!740192 m!2947625))

(assert (=> d!740192 m!2947607))

(assert (=> d!740192 m!2947615))

(declare-fun m!2947627 () Bool)

(assert (=> d!740192 m!2947627))

(assert (=> d!740192 m!2946341))

(assert (=> d!740192 m!2946343))

(assert (=> d!740192 m!2947593))

(declare-fun m!2947629 () Bool)

(assert (=> d!740192 m!2947629))

(assert (=> d!740192 m!2947619))

(declare-fun m!2947631 () Bool)

(assert (=> d!740192 m!2947631))

(assert (=> b!2612833 m!2947579))

(assert (=> b!2612833 m!2947579))

(assert (=> b!2612833 m!2947581))

(assert (=> b!2611818 d!740192))

(declare-fun d!740224 () Bool)

(declare-fun lt!918156 () BalanceConc!18362)

(declare-fun printListTailRec!496 (LexerInterface!4163 List!30294 List!30292) List!30292)

(assert (=> d!740224 (= (list!11330 lt!918156) (printListTailRec!496 thiss!14197 (dropList!869 (singletonSeq!2016 call!167572) 0) (list!11330 (BalanceConc!18363 Empty!9374))))))

(declare-fun e!1648636 () BalanceConc!18362)

(assert (=> d!740224 (= lt!918156 e!1648636)))

(declare-fun c!420009 () Bool)

(assert (=> d!740224 (= c!420009 (>= 0 (size!23371 (singletonSeq!2016 call!167572))))))

(declare-fun e!1648637 () Bool)

(assert (=> d!740224 e!1648637))

(declare-fun res!1099868 () Bool)

(assert (=> d!740224 (=> (not res!1099868) (not e!1648637))))

(assert (=> d!740224 (= res!1099868 (>= 0 0))))

(assert (=> d!740224 (= (printTailRec!1088 thiss!14197 (singletonSeq!2016 call!167572) 0 (BalanceConc!18363 Empty!9374)) lt!918156)))

(declare-fun b!2612842 () Bool)

(assert (=> b!2612842 (= e!1648637 (<= 0 (size!23371 (singletonSeq!2016 call!167572))))))

(declare-fun b!2612843 () Bool)

(assert (=> b!2612843 (= e!1648636 (BalanceConc!18363 Empty!9374))))

(declare-fun b!2612844 () Bool)

(assert (=> b!2612844 (= e!1648636 (printTailRec!1088 thiss!14197 (singletonSeq!2016 call!167572) (+ 0 1) (++!7326 (BalanceConc!18363 Empty!9374) (charsOf!2857 (apply!7094 (singletonSeq!2016 call!167572) 0)))))))

(declare-fun lt!918154 () List!30294)

(assert (=> b!2612844 (= lt!918154 (list!11328 (singletonSeq!2016 call!167572)))))

(declare-fun lt!918155 () Unit!44164)

(assert (=> b!2612844 (= lt!918155 (lemmaDropApply!777 lt!918154 0))))

(assert (=> b!2612844 (= (head!5961 (drop!1562 lt!918154 0)) (apply!7095 lt!918154 0))))

(declare-fun lt!918152 () Unit!44164)

(assert (=> b!2612844 (= lt!918152 lt!918155)))

(declare-fun lt!918157 () List!30294)

(assert (=> b!2612844 (= lt!918157 (list!11328 (singletonSeq!2016 call!167572)))))

(declare-fun lt!918153 () Unit!44164)

(assert (=> b!2612844 (= lt!918153 (lemmaDropTail!751 lt!918157 0))))

(assert (=> b!2612844 (= (tail!4199 (drop!1562 lt!918157 0)) (drop!1562 lt!918157 (+ 0 1)))))

(declare-fun lt!918151 () Unit!44164)

(assert (=> b!2612844 (= lt!918151 lt!918153)))

(assert (= (and d!740224 res!1099868) b!2612842))

(assert (= (and d!740224 c!420009) b!2612843))

(assert (= (and d!740224 (not c!420009)) b!2612844))

(assert (=> d!740224 m!2946337))

(declare-fun m!2947633 () Bool)

(assert (=> d!740224 m!2947633))

(declare-fun m!2947635 () Bool)

(assert (=> d!740224 m!2947635))

(assert (=> d!740224 m!2946337))

(declare-fun m!2947637 () Bool)

(assert (=> d!740224 m!2947637))

(assert (=> d!740224 m!2947637))

(declare-fun m!2947639 () Bool)

(assert (=> d!740224 m!2947639))

(declare-fun m!2947641 () Bool)

(assert (=> d!740224 m!2947641))

(assert (=> d!740224 m!2947639))

(assert (=> b!2612842 m!2946337))

(assert (=> b!2612842 m!2947633))

(declare-fun m!2947643 () Bool)

(assert (=> b!2612844 m!2947643))

(assert (=> b!2612844 m!2946337))

(assert (=> b!2612844 m!2947403))

(declare-fun m!2947645 () Bool)

(assert (=> b!2612844 m!2947645))

(declare-fun m!2947647 () Bool)

(assert (=> b!2612844 m!2947647))

(declare-fun m!2947649 () Bool)

(assert (=> b!2612844 m!2947649))

(declare-fun m!2947651 () Bool)

(assert (=> b!2612844 m!2947651))

(declare-fun m!2947653 () Bool)

(assert (=> b!2612844 m!2947653))

(declare-fun m!2947655 () Bool)

(assert (=> b!2612844 m!2947655))

(assert (=> b!2612844 m!2947653))

(assert (=> b!2612844 m!2947649))

(assert (=> b!2612844 m!2946337))

(declare-fun m!2947657 () Bool)

(assert (=> b!2612844 m!2947657))

(declare-fun m!2947659 () Bool)

(assert (=> b!2612844 m!2947659))

(assert (=> b!2612844 m!2946337))

(declare-fun m!2947661 () Bool)

(assert (=> b!2612844 m!2947661))

(assert (=> b!2612844 m!2947661))

(declare-fun m!2947663 () Bool)

(assert (=> b!2612844 m!2947663))

(assert (=> b!2612844 m!2947663))

(assert (=> b!2612844 m!2947657))

(declare-fun m!2947665 () Bool)

(assert (=> b!2612844 m!2947665))

(assert (=> b!2611818 d!740224))

(declare-fun d!740226 () Bool)

(assert (=> d!740226 (= (list!11330 call!167569) (list!11334 (c!419708 call!167569)))))

(declare-fun bs!474024 () Bool)

(assert (= bs!474024 d!740226))

(declare-fun m!2947667 () Bool)

(assert (=> bs!474024 m!2947667))

(assert (=> b!2611818 d!740226))

(declare-fun d!740228 () Bool)

(declare-fun e!1648638 () Bool)

(assert (=> d!740228 e!1648638))

(declare-fun res!1099869 () Bool)

(assert (=> d!740228 (=> (not res!1099869) (not e!1648638))))

(declare-fun lt!918158 () BalanceConc!18364)

(assert (=> d!740228 (= res!1099869 (= (list!11328 lt!918158) (Cons!30194 call!167572 Nil!30194)))))

(assert (=> d!740228 (= lt!918158 (singleton!902 call!167572))))

(assert (=> d!740228 (= (singletonSeq!2016 call!167572) lt!918158)))

(declare-fun b!2612845 () Bool)

(assert (=> b!2612845 (= e!1648638 (isBalanced!2848 (c!419709 lt!918158)))))

(assert (= (and d!740228 res!1099869) b!2612845))

(declare-fun m!2947669 () Bool)

(assert (=> d!740228 m!2947669))

(declare-fun m!2947671 () Bool)

(assert (=> d!740228 m!2947671))

(declare-fun m!2947673 () Bool)

(assert (=> b!2612845 m!2947673))

(assert (=> b!2611818 d!740228))

(declare-fun bs!474025 () Bool)

(declare-fun d!740230 () Bool)

(assert (= bs!474025 (and d!740230 d!739994)))

(declare-fun lambda!97831 () Int)

(assert (=> bs!474025 (= (and (= (toChars!6327 (transformation!4566 (rule!6936 separatorToken!156))) (toChars!6327 (transformation!4566 (h!35613 rules!1726)))) (= (toValue!6468 (transformation!4566 (rule!6936 separatorToken!156))) (toValue!6468 (transformation!4566 (h!35613 rules!1726))))) (= lambda!97831 lambda!97813))))

(assert (=> d!740230 true))

(assert (=> d!740230 (< (dynLambda!12792 order!16069 (toChars!6327 (transformation!4566 (rule!6936 separatorToken!156)))) (dynLambda!12802 order!16079 lambda!97831))))

(assert (=> d!740230 true))

(assert (=> d!740230 (< (dynLambda!12790 order!16065 (toValue!6468 (transformation!4566 (rule!6936 separatorToken!156)))) (dynLambda!12802 order!16079 lambda!97831))))

(assert (=> d!740230 (= (semiInverseModEq!1900 (toChars!6327 (transformation!4566 (rule!6936 separatorToken!156))) (toValue!6468 (transformation!4566 (rule!6936 separatorToken!156)))) (Forall!1173 lambda!97831))))

(declare-fun bs!474026 () Bool)

(assert (= bs!474026 d!740230))

(declare-fun m!2947675 () Bool)

(assert (=> bs!474026 m!2947675))

(assert (=> d!739830 d!740230))

(declare-fun d!740232 () Bool)

(declare-fun charsToInt!0 (List!30291) (_ BitVec 32))

(assert (=> d!740232 (= (inv!16 (value!147737 separatorToken!156)) (= (charsToInt!0 (text!33963 (value!147737 separatorToken!156))) (value!147728 (value!147737 separatorToken!156))))))

(declare-fun bs!474027 () Bool)

(assert (= bs!474027 d!740232))

(declare-fun m!2947677 () Bool)

(assert (=> bs!474027 m!2947677))

(assert (=> b!2611706 d!740232))

(declare-fun d!740234 () Bool)

(declare-fun lt!918159 () Bool)

(assert (=> d!740234 (= lt!918159 (set.member lt!917632 (content!4276 (t!214155 lt!917628))))))

(declare-fun e!1648639 () Bool)

(assert (=> d!740234 (= lt!918159 e!1648639)))

(declare-fun res!1099870 () Bool)

(assert (=> d!740234 (=> (not res!1099870) (not e!1648639))))

(assert (=> d!740234 (= res!1099870 (is-Cons!30194 (t!214155 lt!917628)))))

(assert (=> d!740234 (= (contains!5609 (t!214155 lt!917628) lt!917632) lt!918159)))

(declare-fun b!2612846 () Bool)

(declare-fun e!1648640 () Bool)

(assert (=> b!2612846 (= e!1648639 e!1648640)))

(declare-fun res!1099871 () Bool)

(assert (=> b!2612846 (=> res!1099871 e!1648640)))

(assert (=> b!2612846 (= res!1099871 (= (h!35614 (t!214155 lt!917628)) lt!917632))))

(declare-fun b!2612847 () Bool)

(assert (=> b!2612847 (= e!1648640 (contains!5609 (t!214155 (t!214155 lt!917628)) lt!917632))))

(assert (= (and d!740234 res!1099870) b!2612846))

(assert (= (and b!2612846 (not res!1099871)) b!2612847))

(assert (=> d!740234 m!2946565))

(declare-fun m!2947679 () Bool)

(assert (=> d!740234 m!2947679))

(declare-fun m!2947681 () Bool)

(assert (=> b!2612847 m!2947681))

(assert (=> b!2611691 d!740234))

(declare-fun bs!474040 () Bool)

(declare-fun d!740236 () Bool)

(assert (= bs!474040 (and d!740236 b!2612100)))

(declare-fun lambda!97837 () Int)

(assert (=> bs!474040 (= lambda!97837 lambda!97804)))

(declare-fun bs!474041 () Bool)

(assert (= bs!474041 (and d!740236 b!2611497)))

(assert (=> bs!474041 (= lambda!97837 lambda!97766)))

(declare-fun bs!474042 () Bool)

(assert (= bs!474042 (and d!740236 d!739832)))

(assert (=> bs!474042 (not (= lambda!97837 lambda!97793))))

(declare-fun bs!474043 () Bool)

(assert (= bs!474043 (and d!740236 d!739800)))

(assert (=> bs!474043 (= lambda!97837 lambda!97779)))

(declare-fun bs!474044 () Bool)

(assert (= bs!474044 (and d!740236 b!2611823)))

(assert (=> bs!474044 (= lambda!97837 lambda!97794)))

(declare-fun bs!474045 () Bool)

(assert (= bs!474045 (and d!740236 d!739928)))

(assert (=> bs!474045 (not (= lambda!97837 lambda!97803))))

(declare-fun bs!474046 () Bool)

(assert (= bs!474046 (and d!740236 b!2612660)))

(assert (=> bs!474046 (= lambda!97837 lambda!97827)))

(declare-fun bs!474047 () Bool)

(assert (= bs!474047 (and d!740236 b!2611505)))

(assert (=> bs!474047 (not (= lambda!97837 lambda!97765))))

(declare-fun b!2612926 () Bool)

(declare-fun e!1648702 () Bool)

(assert (=> b!2612926 (= e!1648702 true)))

(declare-fun b!2612925 () Bool)

(declare-fun e!1648701 () Bool)

(assert (=> b!2612925 (= e!1648701 e!1648702)))

(declare-fun b!2612924 () Bool)

(declare-fun e!1648700 () Bool)

(assert (=> b!2612924 (= e!1648700 e!1648701)))

(assert (=> d!740236 e!1648700))

(assert (= b!2612925 b!2612926))

(assert (= b!2612924 b!2612925))

(assert (= (and d!740236 (is-Cons!30193 rules!1726)) b!2612924))

(assert (=> b!2612926 (< (dynLambda!12790 order!16065 (toValue!6468 (transformation!4566 (h!35613 rules!1726)))) (dynLambda!12791 order!16067 lambda!97837))))

(assert (=> b!2612926 (< (dynLambda!12792 order!16069 (toChars!6327 (transformation!4566 (h!35613 rules!1726)))) (dynLambda!12791 order!16067 lambda!97837))))

(assert (=> d!740236 true))

(declare-fun lt!918205 () Bool)

(assert (=> d!740236 (= lt!918205 (forall!6264 (list!11328 v!6381) lambda!97837))))

(declare-fun e!1648698 () Bool)

(assert (=> d!740236 (= lt!918205 e!1648698)))

(declare-fun res!1099910 () Bool)

(assert (=> d!740236 (=> res!1099910 e!1648698)))

(assert (=> d!740236 (= res!1099910 (not (is-Cons!30194 (list!11328 v!6381))))))

(assert (=> d!740236 (not (isEmpty!17243 rules!1726))))

(assert (=> d!740236 (= (rulesProduceEachTokenIndividuallyList!1436 thiss!14197 rules!1726 (list!11328 v!6381)) lt!918205)))

(declare-fun b!2612922 () Bool)

(declare-fun e!1648699 () Bool)

(assert (=> b!2612922 (= e!1648698 e!1648699)))

(declare-fun res!1099909 () Bool)

(assert (=> b!2612922 (=> (not res!1099909) (not e!1648699))))

(assert (=> b!2612922 (= res!1099909 (rulesProduceIndividualToken!1875 thiss!14197 rules!1726 (h!35614 (list!11328 v!6381))))))

(declare-fun b!2612923 () Bool)

(assert (=> b!2612923 (= e!1648699 (rulesProduceEachTokenIndividuallyList!1436 thiss!14197 rules!1726 (t!214155 (list!11328 v!6381))))))

(assert (= (and d!740236 (not res!1099910)) b!2612922))

(assert (= (and b!2612922 res!1099909) b!2612923))

(assert (=> d!740236 m!2945991))

(declare-fun m!2947815 () Bool)

(assert (=> d!740236 m!2947815))

(assert (=> d!740236 m!2945953))

(declare-fun m!2947817 () Bool)

(assert (=> b!2612922 m!2947817))

(declare-fun m!2947819 () Bool)

(assert (=> b!2612923 m!2947819))

(assert (=> b!2611668 d!740236))

(assert (=> b!2611668 d!739822))

(declare-fun d!740266 () Bool)

(assert (=> d!740266 (dynLambda!12797 lambda!97766 lt!917632)))

(assert (=> d!740266 true))

(declare-fun _$7!909 () Unit!44164)

(assert (=> d!740266 (= (choose!15499 lt!917628 lambda!97766 lt!917632) _$7!909)))

(declare-fun b_lambda!78377 () Bool)

(assert (=> (not b_lambda!78377) (not d!740266)))

(declare-fun bs!474048 () Bool)

(assert (= bs!474048 d!740266))

(assert (=> bs!474048 m!2946391))

(assert (=> d!739860 d!740266))

(declare-fun d!740268 () Bool)

(declare-fun res!1099911 () Bool)

(declare-fun e!1648703 () Bool)

(assert (=> d!740268 (=> res!1099911 e!1648703)))

(assert (=> d!740268 (= res!1099911 (is-Nil!30194 lt!917628))))

(assert (=> d!740268 (= (forall!6264 lt!917628 lambda!97766) e!1648703)))

(declare-fun b!2612927 () Bool)

(declare-fun e!1648704 () Bool)

(assert (=> b!2612927 (= e!1648703 e!1648704)))

(declare-fun res!1099912 () Bool)

(assert (=> b!2612927 (=> (not res!1099912) (not e!1648704))))

(assert (=> b!2612927 (= res!1099912 (dynLambda!12797 lambda!97766 (h!35614 lt!917628)))))

(declare-fun b!2612928 () Bool)

(assert (=> b!2612928 (= e!1648704 (forall!6264 (t!214155 lt!917628) lambda!97766))))

(assert (= (and d!740268 (not res!1099911)) b!2612927))

(assert (= (and b!2612927 res!1099912) b!2612928))

(declare-fun b_lambda!78379 () Bool)

(assert (=> (not b_lambda!78379) (not b!2612927)))

(declare-fun m!2947821 () Bool)

(assert (=> b!2612927 m!2947821))

(declare-fun m!2947823 () Bool)

(assert (=> b!2612928 m!2947823))

(assert (=> d!739860 d!740268))

(assert (=> d!739824 d!740092))

(declare-fun d!740270 () Bool)

(declare-fun lt!918206 () Int)

(assert (=> d!740270 (= lt!918206 (size!23374 (list!11328 (_1!17423 lt!917701))))))

(assert (=> d!740270 (= lt!918206 (size!23376 (c!419709 (_1!17423 lt!917701))))))

(assert (=> d!740270 (= (size!23371 (_1!17423 lt!917701)) lt!918206)))

(declare-fun bs!474049 () Bool)

(assert (= bs!474049 d!740270))

(assert (=> bs!474049 m!2947117))

(assert (=> bs!474049 m!2947117))

(declare-fun m!2947825 () Bool)

(assert (=> bs!474049 m!2947825))

(declare-fun m!2947827 () Bool)

(assert (=> bs!474049 m!2947827))

(assert (=> d!739824 d!740270))

(assert (=> d!739824 d!740090))

(declare-fun d!740272 () Bool)

(assert (=> d!740272 (= (list!11328 (singletonSeq!2016 separatorToken!156)) (list!11331 (c!419709 (singletonSeq!2016 separatorToken!156))))))

(declare-fun bs!474050 () Bool)

(assert (= bs!474050 d!740272))

(declare-fun m!2947829 () Bool)

(assert (=> bs!474050 m!2947829))

(assert (=> d!739824 d!740272))

(assert (=> d!739824 d!739788))

(assert (=> d!739824 d!740038))

(declare-fun d!740274 () Bool)

(assert (=> d!740274 (= (list!11328 (_1!17423 (lex!1877 thiss!14197 rules!1726 (print!1599 thiss!14197 (singletonSeq!2016 separatorToken!156))))) (list!11331 (c!419709 (_1!17423 (lex!1877 thiss!14197 rules!1726 (print!1599 thiss!14197 (singletonSeq!2016 separatorToken!156)))))))))

(declare-fun bs!474051 () Bool)

(assert (= bs!474051 d!740274))

(declare-fun m!2947831 () Bool)

(assert (=> bs!474051 m!2947831))

(assert (=> d!739824 d!740274))

(assert (=> d!739814 d!739972))

(declare-fun b!2612941 () Bool)

(declare-fun e!1648709 () Bool)

(declare-fun isEmpty!17255 (Conc!9375) Bool)

(assert (=> b!2612941 (= e!1648709 (not (isEmpty!17255 (right!23566 (c!419709 v!6381)))))))

(declare-fun d!740276 () Bool)

(declare-fun res!1099929 () Bool)

(declare-fun e!1648710 () Bool)

(assert (=> d!740276 (=> res!1099929 e!1648710)))

(assert (=> d!740276 (= res!1099929 (not (is-Node!9375 (c!419709 v!6381))))))

(assert (=> d!740276 (= (isBalanced!2848 (c!419709 v!6381)) e!1648710)))

(declare-fun b!2612942 () Bool)

(assert (=> b!2612942 (= e!1648710 e!1648709)))

(declare-fun res!1099927 () Bool)

(assert (=> b!2612942 (=> (not res!1099927) (not e!1648709))))

(assert (=> b!2612942 (= res!1099927 (<= (- 1) (- (height!1358 (left!23236 (c!419709 v!6381))) (height!1358 (right!23566 (c!419709 v!6381))))))))

(declare-fun b!2612943 () Bool)

(declare-fun res!1099930 () Bool)

(assert (=> b!2612943 (=> (not res!1099930) (not e!1648709))))

(assert (=> b!2612943 (= res!1099930 (<= (- (height!1358 (left!23236 (c!419709 v!6381))) (height!1358 (right!23566 (c!419709 v!6381)))) 1))))

(declare-fun b!2612944 () Bool)

(declare-fun res!1099925 () Bool)

(assert (=> b!2612944 (=> (not res!1099925) (not e!1648709))))

(assert (=> b!2612944 (= res!1099925 (isBalanced!2848 (right!23566 (c!419709 v!6381))))))

(declare-fun b!2612945 () Bool)

(declare-fun res!1099928 () Bool)

(assert (=> b!2612945 (=> (not res!1099928) (not e!1648709))))

(assert (=> b!2612945 (= res!1099928 (not (isEmpty!17255 (left!23236 (c!419709 v!6381)))))))

(declare-fun b!2612946 () Bool)

(declare-fun res!1099926 () Bool)

(assert (=> b!2612946 (=> (not res!1099926) (not e!1648709))))

(assert (=> b!2612946 (= res!1099926 (isBalanced!2848 (left!23236 (c!419709 v!6381))))))

(assert (= (and d!740276 (not res!1099929)) b!2612942))

(assert (= (and b!2612942 res!1099927) b!2612943))

(assert (= (and b!2612943 res!1099930) b!2612946))

(assert (= (and b!2612946 res!1099926) b!2612944))

(assert (= (and b!2612944 res!1099925) b!2612945))

(assert (= (and b!2612945 res!1099928) b!2612941))

(declare-fun m!2947833 () Bool)

(assert (=> b!2612946 m!2947833))

(declare-fun m!2947835 () Bool)

(assert (=> b!2612941 m!2947835))

(assert (=> b!2612942 m!2947361))

(assert (=> b!2612942 m!2947363))

(assert (=> b!2612943 m!2947361))

(assert (=> b!2612943 m!2947363))

(declare-fun m!2947837 () Bool)

(assert (=> b!2612944 m!2947837))

(declare-fun m!2947839 () Bool)

(assert (=> b!2612945 m!2947839))

(assert (=> d!739810 d!740276))

(declare-fun d!740278 () Bool)

(declare-fun charsToBigInt!1 (List!30291) Int)

(assert (=> d!740278 (= (inv!17 (value!147737 separatorToken!156)) (= (charsToBigInt!1 (text!33964 (value!147737 separatorToken!156))) (value!147729 (value!147737 separatorToken!156))))))

(declare-fun bs!474052 () Bool)

(assert (= bs!474052 d!740278))

(declare-fun m!2947841 () Bool)

(assert (=> bs!474052 m!2947841))

(assert (=> b!2611704 d!740278))

(assert (=> b!2611832 d!739814))

(assert (=> b!2611635 d!740010))

(declare-fun d!740280 () Bool)

(assert (=> d!740280 (= (isEmpty!17245 (originalCharacters!5332 separatorToken!156)) (is-Nil!30192 (originalCharacters!5332 separatorToken!156)))))

(assert (=> d!739808 d!740280))

(declare-fun d!740282 () Bool)

(assert (=> d!740282 (= (head!5961 lt!917628) (h!35614 lt!917628))))

(assert (=> b!2611628 d!740282))

(declare-fun d!740284 () Bool)

(declare-fun c!420027 () Bool)

(assert (=> d!740284 (= c!420027 (is-Nil!30194 lt!917667))))

(declare-fun e!1648711 () (Set Token!8602))

(assert (=> d!740284 (= (content!4276 lt!917667) e!1648711)))

(declare-fun b!2612947 () Bool)

(assert (=> b!2612947 (= e!1648711 (as set.empty (Set Token!8602)))))

(declare-fun b!2612948 () Bool)

(assert (=> b!2612948 (= e!1648711 (set.union (set.insert (h!35614 lt!917667) (as set.empty (Set Token!8602))) (content!4276 (t!214155 lt!917667))))))

(assert (= (and d!740284 c!420027) b!2612947))

(assert (= (and d!740284 (not c!420027)) b!2612948))

(declare-fun m!2947843 () Bool)

(assert (=> b!2612948 m!2947843))

(declare-fun m!2947845 () Bool)

(assert (=> b!2612948 m!2947845))

(assert (=> d!739776 d!740284))

(assert (=> d!739776 d!739972))

(assert (=> d!739822 d!739976))

(declare-fun d!740286 () Bool)

(declare-fun res!1099935 () Bool)

(declare-fun e!1648716 () Bool)

(assert (=> d!740286 (=> res!1099935 e!1648716)))

(assert (=> d!740286 (= res!1099935 (is-Nil!30193 rules!1726))))

(assert (=> d!740286 (= (noDuplicateTag!1701 thiss!14197 rules!1726 Nil!30199) e!1648716)))

(declare-fun b!2612953 () Bool)

(declare-fun e!1648717 () Bool)

(assert (=> b!2612953 (= e!1648716 e!1648717)))

(declare-fun res!1099936 () Bool)

(assert (=> b!2612953 (=> (not res!1099936) (not e!1648717))))

(declare-fun contains!5615 (List!30299 String!33826) Bool)

(assert (=> b!2612953 (= res!1099936 (not (contains!5615 Nil!30199 (tag!5056 (h!35613 rules!1726)))))))

(declare-fun b!2612954 () Bool)

(assert (=> b!2612954 (= e!1648717 (noDuplicateTag!1701 thiss!14197 (t!214154 rules!1726) (Cons!30199 (tag!5056 (h!35613 rules!1726)) Nil!30199)))))

(assert (= (and d!740286 (not res!1099935)) b!2612953))

(assert (= (and b!2612953 res!1099936) b!2612954))

(declare-fun m!2947847 () Bool)

(assert (=> b!2612953 m!2947847))

(declare-fun m!2947849 () Bool)

(assert (=> b!2612954 m!2947849))

(assert (=> b!2611662 d!740286))

(declare-fun d!740288 () Bool)

(assert (=> d!740288 (= (inv!40872 (dynLambda!12796 (toChars!6327 (transformation!4566 (rule!6936 lt!917632))) (value!147737 lt!917632))) (isBalanced!2849 (c!419708 (dynLambda!12796 (toChars!6327 (transformation!4566 (rule!6936 lt!917632))) (value!147737 lt!917632)))))))

(declare-fun bs!474053 () Bool)

(assert (= bs!474053 d!740288))

(declare-fun m!2947851 () Bool)

(assert (=> bs!474053 m!2947851))

(assert (=> tb!142123 d!740288))

(declare-fun b!2612956 () Bool)

(declare-fun e!1648718 () Bool)

(declare-fun tp!829866 () Bool)

(declare-fun tp!829869 () Bool)

(assert (=> b!2612956 (= e!1648718 (and tp!829866 tp!829869))))

(assert (=> b!2611905 (= tp!829793 e!1648718)))

(declare-fun b!2612958 () Bool)

(declare-fun tp!829867 () Bool)

(declare-fun tp!829868 () Bool)

(assert (=> b!2612958 (= e!1648718 (and tp!829867 tp!829868))))

(declare-fun b!2612957 () Bool)

(declare-fun tp!829865 () Bool)

(assert (=> b!2612957 (= e!1648718 tp!829865)))

(declare-fun b!2612955 () Bool)

(assert (=> b!2612955 (= e!1648718 tp_is_empty!13727)))

(assert (= (and b!2611905 (is-ElementMatch!7710 (regOne!15932 (regex!4566 (h!35613 rules!1726))))) b!2612955))

(assert (= (and b!2611905 (is-Concat!12498 (regOne!15932 (regex!4566 (h!35613 rules!1726))))) b!2612956))

(assert (= (and b!2611905 (is-Star!7710 (regOne!15932 (regex!4566 (h!35613 rules!1726))))) b!2612957))

(assert (= (and b!2611905 (is-Union!7710 (regOne!15932 (regex!4566 (h!35613 rules!1726))))) b!2612958))

(declare-fun b!2612960 () Bool)

(declare-fun e!1648719 () Bool)

(declare-fun tp!829871 () Bool)

(declare-fun tp!829874 () Bool)

(assert (=> b!2612960 (= e!1648719 (and tp!829871 tp!829874))))

(assert (=> b!2611905 (= tp!829796 e!1648719)))

(declare-fun b!2612962 () Bool)

(declare-fun tp!829872 () Bool)

(declare-fun tp!829873 () Bool)

(assert (=> b!2612962 (= e!1648719 (and tp!829872 tp!829873))))

(declare-fun b!2612961 () Bool)

(declare-fun tp!829870 () Bool)

(assert (=> b!2612961 (= e!1648719 tp!829870)))

(declare-fun b!2612959 () Bool)

(assert (=> b!2612959 (= e!1648719 tp_is_empty!13727)))

(assert (= (and b!2611905 (is-ElementMatch!7710 (regTwo!15932 (regex!4566 (h!35613 rules!1726))))) b!2612959))

(assert (= (and b!2611905 (is-Concat!12498 (regTwo!15932 (regex!4566 (h!35613 rules!1726))))) b!2612960))

(assert (= (and b!2611905 (is-Star!7710 (regTwo!15932 (regex!4566 (h!35613 rules!1726))))) b!2612961))

(assert (= (and b!2611905 (is-Union!7710 (regTwo!15932 (regex!4566 (h!35613 rules!1726))))) b!2612962))

(declare-fun b!2612965 () Bool)

(declare-fun b_free!73493 () Bool)

(declare-fun b_next!74197 () Bool)

(assert (=> b!2612965 (= b_free!73493 (not b_next!74197))))

(declare-fun tp!829876 () Bool)

(declare-fun b_and!191111 () Bool)

(assert (=> b!2612965 (= tp!829876 b_and!191111)))

(declare-fun b_free!73495 () Bool)

(declare-fun b_next!74199 () Bool)

(assert (=> b!2612965 (= b_free!73495 (not b_next!74199))))

(declare-fun tb!142175 () Bool)

(declare-fun t!214265 () Bool)

(assert (=> (and b!2612965 (= (toChars!6327 (transformation!4566 (h!35613 (t!214154 (t!214154 rules!1726))))) (toChars!6327 (transformation!4566 (rule!6936 lt!917632)))) t!214265) tb!142175))

(declare-fun result!176878 () Bool)

(assert (= result!176878 result!176810))

(assert (=> d!739870 t!214265))

(declare-fun t!214267 () Bool)

(declare-fun tb!142177 () Bool)

(assert (=> (and b!2612965 (= (toChars!6327 (transformation!4566 (h!35613 (t!214154 (t!214154 rules!1726))))) (toChars!6327 (transformation!4566 (rule!6936 (ite c!419771 separatorToken!156 call!167572))))) t!214267) tb!142177))

(declare-fun result!176880 () Bool)

(assert (= result!176880 result!176860))

(assert (=> d!740168 t!214267))

(declare-fun tb!142179 () Bool)

(declare-fun t!214269 () Bool)

(assert (=> (and b!2612965 (= (toChars!6327 (transformation!4566 (h!35613 (t!214154 (t!214154 rules!1726))))) (toChars!6327 (transformation!4566 (rule!6936 separatorToken!156)))) t!214269) tb!142179))

(declare-fun result!176882 () Bool)

(assert (= result!176882 result!176798))

(assert (=> b!2611679 t!214269))

(declare-fun tb!142181 () Bool)

(declare-fun t!214271 () Bool)

(assert (=> (and b!2612965 (= (toChars!6327 (transformation!4566 (h!35613 (t!214154 (t!214154 rules!1726))))) (toChars!6327 (transformation!4566 (rule!6936 (apply!7094 v!6381 (+ 1 from!862)))))) t!214271) tb!142181))

(declare-fun result!176884 () Bool)

(assert (= result!176884 result!176842))

(assert (=> d!739934 t!214271))

(declare-fun t!214273 () Bool)

(declare-fun tb!142183 () Bool)

(assert (=> (and b!2612965 (= (toChars!6327 (transformation!4566 (h!35613 (t!214154 (t!214154 rules!1726))))) (toChars!6327 (transformation!4566 (rule!6936 (ite c!419770 call!167568 call!167572))))) t!214273) tb!142183))

(declare-fun result!176886 () Bool)

(assert (= result!176886 result!176866))

(assert (=> d!740172 t!214273))

(declare-fun b_and!191113 () Bool)

(declare-fun tp!829878 () Bool)

(assert (=> b!2612965 (= tp!829878 (and (=> t!214265 result!176878) (=> t!214273 result!176886) (=> t!214271 result!176884) (=> t!214267 result!176880) (=> t!214269 result!176882) b_and!191113))))

(declare-fun e!1648721 () Bool)

(assert (=> b!2612965 (= e!1648721 (and tp!829876 tp!829878))))

(declare-fun e!1648723 () Bool)

(declare-fun tp!829875 () Bool)

(declare-fun b!2612964 () Bool)

(assert (=> b!2612964 (= e!1648723 (and tp!829875 (inv!40858 (tag!5056 (h!35613 (t!214154 (t!214154 rules!1726))))) (inv!40861 (transformation!4566 (h!35613 (t!214154 (t!214154 rules!1726))))) e!1648721))))

(declare-fun b!2612963 () Bool)

(declare-fun e!1648722 () Bool)

(declare-fun tp!829877 () Bool)

(assert (=> b!2612963 (= e!1648722 (and e!1648723 tp!829877))))

(assert (=> b!2611923 (= tp!829812 e!1648722)))

(assert (= b!2612964 b!2612965))

(assert (= b!2612963 b!2612964))

(assert (= (and b!2611923 (is-Cons!30193 (t!214154 (t!214154 rules!1726)))) b!2612963))

(declare-fun m!2947853 () Bool)

(assert (=> b!2612964 m!2947853))

(declare-fun m!2947855 () Bool)

(assert (=> b!2612964 m!2947855))

(declare-fun b!2612967 () Bool)

(declare-fun e!1648724 () Bool)

(declare-fun tp!829880 () Bool)

(declare-fun tp!829883 () Bool)

(assert (=> b!2612967 (= e!1648724 (and tp!829880 tp!829883))))

(assert (=> b!2611906 (= tp!829792 e!1648724)))

(declare-fun b!2612969 () Bool)

(declare-fun tp!829881 () Bool)

(declare-fun tp!829882 () Bool)

(assert (=> b!2612969 (= e!1648724 (and tp!829881 tp!829882))))

(declare-fun b!2612968 () Bool)

(declare-fun tp!829879 () Bool)

(assert (=> b!2612968 (= e!1648724 tp!829879)))

(declare-fun b!2612966 () Bool)

(assert (=> b!2612966 (= e!1648724 tp_is_empty!13727)))

(assert (= (and b!2611906 (is-ElementMatch!7710 (reg!8039 (regex!4566 (h!35613 rules!1726))))) b!2612966))

(assert (= (and b!2611906 (is-Concat!12498 (reg!8039 (regex!4566 (h!35613 rules!1726))))) b!2612967))

(assert (= (and b!2611906 (is-Star!7710 (reg!8039 (regex!4566 (h!35613 rules!1726))))) b!2612968))

(assert (= (and b!2611906 (is-Union!7710 (reg!8039 (regex!4566 (h!35613 rules!1726))))) b!2612969))

(declare-fun tp!829884 () Bool)

(declare-fun b!2612970 () Bool)

(declare-fun e!1648726 () Bool)

(declare-fun tp!829885 () Bool)

(assert (=> b!2612970 (= e!1648726 (and (inv!40864 (left!23236 (left!23236 (c!419709 v!6381)))) tp!829885 (inv!40864 (right!23566 (left!23236 (c!419709 v!6381)))) tp!829884))))

(declare-fun b!2612972 () Bool)

(declare-fun e!1648725 () Bool)

(declare-fun tp!829886 () Bool)

(assert (=> b!2612972 (= e!1648725 tp!829886)))

(declare-fun b!2612971 () Bool)

(assert (=> b!2612971 (= e!1648726 (and (inv!40875 (xs!12359 (left!23236 (c!419709 v!6381)))) e!1648725))))

(assert (=> b!2611891 (= tp!829780 (and (inv!40864 (left!23236 (c!419709 v!6381))) e!1648726))))

(assert (= (and b!2611891 (is-Node!9375 (left!23236 (c!419709 v!6381)))) b!2612970))

(assert (= b!2612971 b!2612972))

(assert (= (and b!2611891 (is-Leaf!14399 (left!23236 (c!419709 v!6381)))) b!2612971))

(declare-fun m!2947857 () Bool)

(assert (=> b!2612970 m!2947857))

(declare-fun m!2947859 () Bool)

(assert (=> b!2612970 m!2947859))

(declare-fun m!2947861 () Bool)

(assert (=> b!2612971 m!2947861))

(assert (=> b!2611891 m!2946469))

(declare-fun b!2612973 () Bool)

(declare-fun e!1648728 () Bool)

(declare-fun tp!829888 () Bool)

(declare-fun tp!829887 () Bool)

(assert (=> b!2612973 (= e!1648728 (and (inv!40864 (left!23236 (right!23566 (c!419709 v!6381)))) tp!829888 (inv!40864 (right!23566 (right!23566 (c!419709 v!6381)))) tp!829887))))

(declare-fun b!2612975 () Bool)

(declare-fun e!1648727 () Bool)

(declare-fun tp!829889 () Bool)

(assert (=> b!2612975 (= e!1648727 tp!829889)))

(declare-fun b!2612974 () Bool)

(assert (=> b!2612974 (= e!1648728 (and (inv!40875 (xs!12359 (right!23566 (c!419709 v!6381)))) e!1648727))))

(assert (=> b!2611891 (= tp!829779 (and (inv!40864 (right!23566 (c!419709 v!6381))) e!1648728))))

(assert (= (and b!2611891 (is-Node!9375 (right!23566 (c!419709 v!6381)))) b!2612973))

(assert (= b!2612974 b!2612975))

(assert (= (and b!2611891 (is-Leaf!14399 (right!23566 (c!419709 v!6381)))) b!2612974))

(declare-fun m!2947863 () Bool)

(assert (=> b!2612973 m!2947863))

(declare-fun m!2947865 () Bool)

(assert (=> b!2612973 m!2947865))

(declare-fun m!2947867 () Bool)

(assert (=> b!2612974 m!2947867))

(assert (=> b!2611891 m!2946471))

(declare-fun b!2612984 () Bool)

(declare-fun tp!829897 () Bool)

(declare-fun e!1648734 () Bool)

(declare-fun tp!829898 () Bool)

(assert (=> b!2612984 (= e!1648734 (and (inv!40871 (left!23235 (c!419708 (dynLambda!12796 (toChars!6327 (transformation!4566 (rule!6936 lt!917632))) (value!147737 lt!917632))))) tp!829897 (inv!40871 (right!23565 (c!419708 (dynLambda!12796 (toChars!6327 (transformation!4566 (rule!6936 lt!917632))) (value!147737 lt!917632))))) tp!829898))))

(declare-fun b!2612986 () Bool)

(declare-fun e!1648733 () Bool)

(declare-fun tp!829896 () Bool)

(assert (=> b!2612986 (= e!1648733 tp!829896)))

(declare-fun b!2612985 () Bool)

(declare-fun inv!40883 (IArray!18753) Bool)

(assert (=> b!2612985 (= e!1648734 (and (inv!40883 (xs!12358 (c!419708 (dynLambda!12796 (toChars!6327 (transformation!4566 (rule!6936 lt!917632))) (value!147737 lt!917632))))) e!1648733))))

(assert (=> b!2611869 (= tp!829769 (and (inv!40871 (c!419708 (dynLambda!12796 (toChars!6327 (transformation!4566 (rule!6936 lt!917632))) (value!147737 lt!917632)))) e!1648734))))

(assert (= (and b!2611869 (is-Node!9374 (c!419708 (dynLambda!12796 (toChars!6327 (transformation!4566 (rule!6936 lt!917632))) (value!147737 lt!917632))))) b!2612984))

(assert (= b!2612985 b!2612986))

(assert (= (and b!2611869 (is-Leaf!14398 (c!419708 (dynLambda!12796 (toChars!6327 (transformation!4566 (rule!6936 lt!917632))) (value!147737 lt!917632))))) b!2612985))

(declare-fun m!2947869 () Bool)

(assert (=> b!2612984 m!2947869))

(declare-fun m!2947871 () Bool)

(assert (=> b!2612984 m!2947871))

(declare-fun m!2947873 () Bool)

(assert (=> b!2612985 m!2947873))

(assert (=> b!2611869 m!2946451))

(declare-fun b!2612988 () Bool)

(declare-fun e!1648735 () Bool)

(declare-fun tp!829900 () Bool)

(declare-fun tp!829903 () Bool)

(assert (=> b!2612988 (= e!1648735 (and tp!829900 tp!829903))))

(assert (=> b!2611914 (= tp!829799 e!1648735)))

(declare-fun b!2612990 () Bool)

(declare-fun tp!829901 () Bool)

(declare-fun tp!829902 () Bool)

(assert (=> b!2612990 (= e!1648735 (and tp!829901 tp!829902))))

(declare-fun b!2612989 () Bool)

(declare-fun tp!829899 () Bool)

(assert (=> b!2612989 (= e!1648735 tp!829899)))

(declare-fun b!2612987 () Bool)

(assert (=> b!2612987 (= e!1648735 tp_is_empty!13727)))

(assert (= (and b!2611914 (is-ElementMatch!7710 (regOne!15933 (regex!4566 (rule!6936 separatorToken!156))))) b!2612987))

(assert (= (and b!2611914 (is-Concat!12498 (regOne!15933 (regex!4566 (rule!6936 separatorToken!156))))) b!2612988))

(assert (= (and b!2611914 (is-Star!7710 (regOne!15933 (regex!4566 (rule!6936 separatorToken!156))))) b!2612989))

(assert (= (and b!2611914 (is-Union!7710 (regOne!15933 (regex!4566 (rule!6936 separatorToken!156))))) b!2612990))

(declare-fun b!2612992 () Bool)

(declare-fun e!1648736 () Bool)

(declare-fun tp!829905 () Bool)

(declare-fun tp!829908 () Bool)

(assert (=> b!2612992 (= e!1648736 (and tp!829905 tp!829908))))

(assert (=> b!2611914 (= tp!829800 e!1648736)))

(declare-fun b!2612994 () Bool)

(declare-fun tp!829906 () Bool)

(declare-fun tp!829907 () Bool)

(assert (=> b!2612994 (= e!1648736 (and tp!829906 tp!829907))))

(declare-fun b!2612993 () Bool)

(declare-fun tp!829904 () Bool)

(assert (=> b!2612993 (= e!1648736 tp!829904)))

(declare-fun b!2612991 () Bool)

(assert (=> b!2612991 (= e!1648736 tp_is_empty!13727)))

(assert (= (and b!2611914 (is-ElementMatch!7710 (regTwo!15933 (regex!4566 (rule!6936 separatorToken!156))))) b!2612991))

(assert (= (and b!2611914 (is-Concat!12498 (regTwo!15933 (regex!4566 (rule!6936 separatorToken!156))))) b!2612992))

(assert (= (and b!2611914 (is-Star!7710 (regTwo!15933 (regex!4566 (rule!6936 separatorToken!156))))) b!2612993))

(assert (= (and b!2611914 (is-Union!7710 (regTwo!15933 (regex!4566 (rule!6936 separatorToken!156))))) b!2612994))

(declare-fun b!2612997 () Bool)

(declare-fun e!1648739 () Bool)

(assert (=> b!2612997 (= e!1648739 true)))

(declare-fun b!2612996 () Bool)

(declare-fun e!1648738 () Bool)

(assert (=> b!2612996 (= e!1648738 e!1648739)))

(declare-fun b!2612995 () Bool)

(declare-fun e!1648737 () Bool)

(assert (=> b!2612995 (= e!1648737 e!1648738)))

(assert (=> b!2611827 e!1648737))

(assert (= b!2612996 b!2612997))

(assert (= b!2612995 b!2612996))

(assert (= (and b!2611827 (is-Cons!30193 (t!214154 rules!1726))) b!2612995))

(assert (=> b!2612997 (< (dynLambda!12790 order!16065 (toValue!6468 (transformation!4566 (h!35613 (t!214154 rules!1726))))) (dynLambda!12791 order!16067 lambda!97794))))

(assert (=> b!2612997 (< (dynLambda!12792 order!16069 (toChars!6327 (transformation!4566 (h!35613 (t!214154 rules!1726))))) (dynLambda!12791 order!16067 lambda!97794))))

(declare-fun b!2612999 () Bool)

(declare-fun e!1648740 () Bool)

(declare-fun tp!829910 () Bool)

(declare-fun tp!829913 () Bool)

(assert (=> b!2612999 (= e!1648740 (and tp!829910 tp!829913))))

(assert (=> b!2611912 (= tp!829798 e!1648740)))

(declare-fun b!2613001 () Bool)

(declare-fun tp!829911 () Bool)

(declare-fun tp!829912 () Bool)

(assert (=> b!2613001 (= e!1648740 (and tp!829911 tp!829912))))

(declare-fun b!2613000 () Bool)

(declare-fun tp!829909 () Bool)

(assert (=> b!2613000 (= e!1648740 tp!829909)))

(declare-fun b!2612998 () Bool)

(assert (=> b!2612998 (= e!1648740 tp_is_empty!13727)))

(assert (= (and b!2611912 (is-ElementMatch!7710 (regOne!15932 (regex!4566 (rule!6936 separatorToken!156))))) b!2612998))

(assert (= (and b!2611912 (is-Concat!12498 (regOne!15932 (regex!4566 (rule!6936 separatorToken!156))))) b!2612999))

(assert (= (and b!2611912 (is-Star!7710 (regOne!15932 (regex!4566 (rule!6936 separatorToken!156))))) b!2613000))

(assert (= (and b!2611912 (is-Union!7710 (regOne!15932 (regex!4566 (rule!6936 separatorToken!156))))) b!2613001))

(declare-fun b!2613003 () Bool)

(declare-fun e!1648741 () Bool)

(declare-fun tp!829915 () Bool)

(declare-fun tp!829918 () Bool)

(assert (=> b!2613003 (= e!1648741 (and tp!829915 tp!829918))))

(assert (=> b!2611912 (= tp!829801 e!1648741)))

(declare-fun b!2613005 () Bool)

(declare-fun tp!829916 () Bool)

(declare-fun tp!829917 () Bool)

(assert (=> b!2613005 (= e!1648741 (and tp!829916 tp!829917))))

(declare-fun b!2613004 () Bool)

(declare-fun tp!829914 () Bool)

(assert (=> b!2613004 (= e!1648741 tp!829914)))

(declare-fun b!2613002 () Bool)

(assert (=> b!2613002 (= e!1648741 tp_is_empty!13727)))

(assert (= (and b!2611912 (is-ElementMatch!7710 (regTwo!15932 (regex!4566 (rule!6936 separatorToken!156))))) b!2613002))

(assert (= (and b!2611912 (is-Concat!12498 (regTwo!15932 (regex!4566 (rule!6936 separatorToken!156))))) b!2613003))

(assert (= (and b!2611912 (is-Star!7710 (regTwo!15932 (regex!4566 (rule!6936 separatorToken!156))))) b!2613004))

(assert (= (and b!2611912 (is-Union!7710 (regTwo!15932 (regex!4566 (rule!6936 separatorToken!156))))) b!2613005))

(declare-fun b!2613006 () Bool)

(declare-fun e!1648742 () Bool)

(declare-fun tp!829919 () Bool)

(assert (=> b!2613006 (= e!1648742 (and tp_is_empty!13727 tp!829919))))

(assert (=> b!2611882 (= tp!829772 e!1648742)))

(assert (= (and b!2611882 (is-Cons!30192 (t!214153 (originalCharacters!5332 separatorToken!156)))) b!2613006))

(declare-fun b!2613009 () Bool)

(declare-fun e!1648745 () Bool)

(assert (=> b!2613009 (= e!1648745 true)))

(declare-fun b!2613008 () Bool)

(declare-fun e!1648744 () Bool)

(assert (=> b!2613008 (= e!1648744 e!1648745)))

(declare-fun b!2613007 () Bool)

(declare-fun e!1648743 () Bool)

(assert (=> b!2613007 (= e!1648743 e!1648744)))

(assert (=> b!2611908 e!1648743))

(assert (= b!2613008 b!2613009))

(assert (= b!2613007 b!2613008))

(assert (= (and b!2611908 (is-Cons!30193 (t!214154 (t!214154 rules!1726)))) b!2613007))

(assert (=> b!2613009 (< (dynLambda!12790 order!16065 (toValue!6468 (transformation!4566 (h!35613 (t!214154 (t!214154 rules!1726)))))) (dynLambda!12791 order!16067 lambda!97766))))

(assert (=> b!2613009 (< (dynLambda!12792 order!16069 (toChars!6327 (transformation!4566 (h!35613 (t!214154 (t!214154 rules!1726)))))) (dynLambda!12791 order!16067 lambda!97766))))

(declare-fun b!2613011 () Bool)

(declare-fun e!1648746 () Bool)

(declare-fun tp!829921 () Bool)

(declare-fun tp!829924 () Bool)

(assert (=> b!2613011 (= e!1648746 (and tp!829921 tp!829924))))

(assert (=> b!2611913 (= tp!829797 e!1648746)))

(declare-fun b!2613013 () Bool)

(declare-fun tp!829922 () Bool)

(declare-fun tp!829923 () Bool)

(assert (=> b!2613013 (= e!1648746 (and tp!829922 tp!829923))))

(declare-fun b!2613012 () Bool)

(declare-fun tp!829920 () Bool)

(assert (=> b!2613012 (= e!1648746 tp!829920)))

(declare-fun b!2613010 () Bool)

(assert (=> b!2613010 (= e!1648746 tp_is_empty!13727)))

(assert (= (and b!2611913 (is-ElementMatch!7710 (reg!8039 (regex!4566 (rule!6936 separatorToken!156))))) b!2613010))

(assert (= (and b!2611913 (is-Concat!12498 (reg!8039 (regex!4566 (rule!6936 separatorToken!156))))) b!2613011))

(assert (= (and b!2611913 (is-Star!7710 (reg!8039 (regex!4566 (rule!6936 separatorToken!156))))) b!2613012))

(assert (= (and b!2611913 (is-Union!7710 (reg!8039 (regex!4566 (rule!6936 separatorToken!156))))) b!2613013))

(declare-fun b!2613015 () Bool)

(declare-fun e!1648747 () Bool)

(declare-fun tp!829926 () Bool)

(declare-fun tp!829929 () Bool)

(assert (=> b!2613015 (= e!1648747 (and tp!829926 tp!829929))))

(assert (=> b!2611924 (= tp!829810 e!1648747)))

(declare-fun b!2613017 () Bool)

(declare-fun tp!829927 () Bool)

(declare-fun tp!829928 () Bool)

(assert (=> b!2613017 (= e!1648747 (and tp!829927 tp!829928))))

(declare-fun b!2613016 () Bool)

(declare-fun tp!829925 () Bool)

(assert (=> b!2613016 (= e!1648747 tp!829925)))

(declare-fun b!2613014 () Bool)

(assert (=> b!2613014 (= e!1648747 tp_is_empty!13727)))

(assert (= (and b!2611924 (is-ElementMatch!7710 (regex!4566 (h!35613 (t!214154 rules!1726))))) b!2613014))

(assert (= (and b!2611924 (is-Concat!12498 (regex!4566 (h!35613 (t!214154 rules!1726))))) b!2613015))

(assert (= (and b!2611924 (is-Star!7710 (regex!4566 (h!35613 (t!214154 rules!1726))))) b!2613016))

(assert (= (and b!2611924 (is-Union!7710 (regex!4566 (h!35613 (t!214154 rules!1726))))) b!2613017))

(declare-fun tp!829931 () Bool)

(declare-fun e!1648749 () Bool)

(declare-fun tp!829932 () Bool)

(declare-fun b!2613018 () Bool)

(assert (=> b!2613018 (= e!1648749 (and (inv!40871 (left!23235 (c!419708 (dynLambda!12796 (toChars!6327 (transformation!4566 (rule!6936 separatorToken!156))) (value!147737 separatorToken!156))))) tp!829931 (inv!40871 (right!23565 (c!419708 (dynLambda!12796 (toChars!6327 (transformation!4566 (rule!6936 separatorToken!156))) (value!147737 separatorToken!156))))) tp!829932))))

(declare-fun b!2613020 () Bool)

(declare-fun e!1648748 () Bool)

(declare-fun tp!829930 () Bool)

(assert (=> b!2613020 (= e!1648748 tp!829930)))

(declare-fun b!2613019 () Bool)

(assert (=> b!2613019 (= e!1648749 (and (inv!40883 (xs!12358 (c!419708 (dynLambda!12796 (toChars!6327 (transformation!4566 (rule!6936 separatorToken!156))) (value!147737 separatorToken!156))))) e!1648748))))

(assert (=> b!2611685 (= tp!829765 (and (inv!40871 (c!419708 (dynLambda!12796 (toChars!6327 (transformation!4566 (rule!6936 separatorToken!156))) (value!147737 separatorToken!156)))) e!1648749))))

(assert (= (and b!2611685 (is-Node!9374 (c!419708 (dynLambda!12796 (toChars!6327 (transformation!4566 (rule!6936 separatorToken!156))) (value!147737 separatorToken!156))))) b!2613018))

(assert (= b!2613019 b!2613020))

(assert (= (and b!2611685 (is-Leaf!14398 (c!419708 (dynLambda!12796 (toChars!6327 (transformation!4566 (rule!6936 separatorToken!156))) (value!147737 separatorToken!156))))) b!2613019))

(declare-fun m!2947875 () Bool)

(assert (=> b!2613018 m!2947875))

(declare-fun m!2947877 () Bool)

(assert (=> b!2613018 m!2947877))

(declare-fun m!2947879 () Bool)

(assert (=> b!2613019 m!2947879))

(assert (=> b!2611685 m!2946149))

(declare-fun b!2613034 () Bool)

(declare-fun b_free!73497 () Bool)

(declare-fun b_next!74201 () Bool)

(assert (=> b!2613034 (= b_free!73497 (not b_next!74201))))

(declare-fun tp!829944 () Bool)

(declare-fun b_and!191115 () Bool)

(assert (=> b!2613034 (= tp!829944 b_and!191115)))

(declare-fun b_free!73499 () Bool)

(declare-fun b_next!74203 () Bool)

(assert (=> b!2613034 (= b_free!73499 (not b_next!74203))))

(declare-fun tb!142185 () Bool)

(declare-fun t!214275 () Bool)

(assert (=> (and b!2613034 (= (toChars!6327 (transformation!4566 (rule!6936 (h!35614 (innerList!9435 (xs!12359 (c!419709 v!6381))))))) (toChars!6327 (transformation!4566 (rule!6936 lt!917632)))) t!214275) tb!142185))

(declare-fun result!176892 () Bool)

(assert (= result!176892 result!176810))

(assert (=> d!739870 t!214275))

(declare-fun tb!142187 () Bool)

(declare-fun t!214277 () Bool)

(assert (=> (and b!2613034 (= (toChars!6327 (transformation!4566 (rule!6936 (h!35614 (innerList!9435 (xs!12359 (c!419709 v!6381))))))) (toChars!6327 (transformation!4566 (rule!6936 (ite c!419771 separatorToken!156 call!167572))))) t!214277) tb!142187))

(declare-fun result!176894 () Bool)

(assert (= result!176894 result!176860))

(assert (=> d!740168 t!214277))

(declare-fun t!214279 () Bool)

(declare-fun tb!142189 () Bool)

(assert (=> (and b!2613034 (= (toChars!6327 (transformation!4566 (rule!6936 (h!35614 (innerList!9435 (xs!12359 (c!419709 v!6381))))))) (toChars!6327 (transformation!4566 (rule!6936 separatorToken!156)))) t!214279) tb!142189))

(declare-fun result!176896 () Bool)

(assert (= result!176896 result!176798))

(assert (=> b!2611679 t!214279))

(declare-fun t!214281 () Bool)

(declare-fun tb!142191 () Bool)

(assert (=> (and b!2613034 (= (toChars!6327 (transformation!4566 (rule!6936 (h!35614 (innerList!9435 (xs!12359 (c!419709 v!6381))))))) (toChars!6327 (transformation!4566 (rule!6936 (apply!7094 v!6381 (+ 1 from!862)))))) t!214281) tb!142191))

(declare-fun result!176898 () Bool)

(assert (= result!176898 result!176842))

(assert (=> d!739934 t!214281))

(declare-fun tb!142193 () Bool)

(declare-fun t!214283 () Bool)

(assert (=> (and b!2613034 (= (toChars!6327 (transformation!4566 (rule!6936 (h!35614 (innerList!9435 (xs!12359 (c!419709 v!6381))))))) (toChars!6327 (transformation!4566 (rule!6936 (ite c!419770 call!167568 call!167572))))) t!214283) tb!142193))

(declare-fun result!176900 () Bool)

(assert (= result!176900 result!176866))

(assert (=> d!740172 t!214283))

(declare-fun b_and!191117 () Bool)

(declare-fun tp!829947 () Bool)

(assert (=> b!2613034 (= tp!829947 (and (=> t!214277 result!176894) (=> t!214275 result!176892) (=> t!214281 result!176898) (=> t!214283 result!176900) (=> t!214279 result!176896) b_and!191117))))

(declare-fun b!2613031 () Bool)

(declare-fun tp!829945 () Bool)

(declare-fun e!1648766 () Bool)

(declare-fun e!1648767 () Bool)

(assert (=> b!2613031 (= e!1648767 (and (inv!40862 (h!35614 (innerList!9435 (xs!12359 (c!419709 v!6381))))) e!1648766 tp!829945))))

(declare-fun b!2613032 () Bool)

(declare-fun tp!829946 () Bool)

(declare-fun e!1648763 () Bool)

(assert (=> b!2613032 (= e!1648766 (and (inv!21 (value!147737 (h!35614 (innerList!9435 (xs!12359 (c!419709 v!6381)))))) e!1648763 tp!829946))))

(declare-fun e!1648762 () Bool)

(declare-fun tp!829943 () Bool)

(declare-fun b!2613033 () Bool)

(assert (=> b!2613033 (= e!1648763 (and tp!829943 (inv!40858 (tag!5056 (rule!6936 (h!35614 (innerList!9435 (xs!12359 (c!419709 v!6381))))))) (inv!40861 (transformation!4566 (rule!6936 (h!35614 (innerList!9435 (xs!12359 (c!419709 v!6381))))))) e!1648762))))

(assert (=> b!2611893 (= tp!829781 e!1648767)))

(assert (=> b!2613034 (= e!1648762 (and tp!829944 tp!829947))))

(assert (= b!2613033 b!2613034))

(assert (= b!2613032 b!2613033))

(assert (= b!2613031 b!2613032))

(assert (= (and b!2611893 (is-Cons!30194 (innerList!9435 (xs!12359 (c!419709 v!6381))))) b!2613031))

(declare-fun m!2947881 () Bool)

(assert (=> b!2613031 m!2947881))

(declare-fun m!2947883 () Bool)

(assert (=> b!2613032 m!2947883))

(declare-fun m!2947885 () Bool)

(assert (=> b!2613033 m!2947885))

(declare-fun m!2947887 () Bool)

(assert (=> b!2613033 m!2947887))

(declare-fun b!2613036 () Bool)

(declare-fun e!1648768 () Bool)

(declare-fun tp!829949 () Bool)

(declare-fun tp!829952 () Bool)

(assert (=> b!2613036 (= e!1648768 (and tp!829949 tp!829952))))

(assert (=> b!2611907 (= tp!829794 e!1648768)))

(declare-fun b!2613038 () Bool)

(declare-fun tp!829950 () Bool)

(declare-fun tp!829951 () Bool)

(assert (=> b!2613038 (= e!1648768 (and tp!829950 tp!829951))))

(declare-fun b!2613037 () Bool)

(declare-fun tp!829948 () Bool)

(assert (=> b!2613037 (= e!1648768 tp!829948)))

(declare-fun b!2613035 () Bool)

(assert (=> b!2613035 (= e!1648768 tp_is_empty!13727)))

(assert (= (and b!2611907 (is-ElementMatch!7710 (regOne!15933 (regex!4566 (h!35613 rules!1726))))) b!2613035))

(assert (= (and b!2611907 (is-Concat!12498 (regOne!15933 (regex!4566 (h!35613 rules!1726))))) b!2613036))

(assert (= (and b!2611907 (is-Star!7710 (regOne!15933 (regex!4566 (h!35613 rules!1726))))) b!2613037))

(assert (= (and b!2611907 (is-Union!7710 (regOne!15933 (regex!4566 (h!35613 rules!1726))))) b!2613038))

(declare-fun b!2613040 () Bool)

(declare-fun e!1648769 () Bool)

(declare-fun tp!829954 () Bool)

(declare-fun tp!829957 () Bool)

(assert (=> b!2613040 (= e!1648769 (and tp!829954 tp!829957))))

(assert (=> b!2611907 (= tp!829795 e!1648769)))

(declare-fun b!2613042 () Bool)

(declare-fun tp!829955 () Bool)

(declare-fun tp!829956 () Bool)

(assert (=> b!2613042 (= e!1648769 (and tp!829955 tp!829956))))

(declare-fun b!2613041 () Bool)

(declare-fun tp!829953 () Bool)

(assert (=> b!2613041 (= e!1648769 tp!829953)))

(declare-fun b!2613039 () Bool)

(assert (=> b!2613039 (= e!1648769 tp_is_empty!13727)))

(assert (= (and b!2611907 (is-ElementMatch!7710 (regTwo!15933 (regex!4566 (h!35613 rules!1726))))) b!2613039))

(assert (= (and b!2611907 (is-Concat!12498 (regTwo!15933 (regex!4566 (h!35613 rules!1726))))) b!2613040))

(assert (= (and b!2611907 (is-Star!7710 (regTwo!15933 (regex!4566 (h!35613 rules!1726))))) b!2613041))

(assert (= (and b!2611907 (is-Union!7710 (regTwo!15933 (regex!4566 (h!35613 rules!1726))))) b!2613042))

(declare-fun b!2613045 () Bool)

(declare-fun e!1648772 () Bool)

(assert (=> b!2613045 (= e!1648772 true)))

(declare-fun b!2613044 () Bool)

(declare-fun e!1648771 () Bool)

(assert (=> b!2613044 (= e!1648771 e!1648772)))

(declare-fun b!2613043 () Bool)

(declare-fun e!1648770 () Bool)

(assert (=> b!2613043 (= e!1648770 e!1648771)))

(assert (=> b!2611669 e!1648770))

(assert (= b!2613044 b!2613045))

(assert (= b!2613043 b!2613044))

(assert (= (and b!2611669 (is-Cons!30193 (t!214154 rules!1726))) b!2613043))

(assert (=> b!2613045 (< (dynLambda!12790 order!16065 (toValue!6468 (transformation!4566 (h!35613 (t!214154 rules!1726))))) (dynLambda!12791 order!16067 lambda!97779))))

(assert (=> b!2613045 (< (dynLambda!12792 order!16069 (toChars!6327 (transformation!4566 (h!35613 (t!214154 rules!1726))))) (dynLambda!12791 order!16067 lambda!97779))))

(declare-fun b_lambda!78381 () Bool)

(assert (= b_lambda!78355 (or d!739874 b_lambda!78381)))

(declare-fun bs!474054 () Bool)

(declare-fun d!740290 () Bool)

(assert (= bs!474054 (and d!740290 d!739874)))

(assert (=> bs!474054 (= (dynLambda!12800 lambda!97797 (h!35613 rules!1726)) (ruleValid!1532 thiss!14197 (h!35613 rules!1726)))))

(assert (=> bs!474054 m!2946465))

(assert (=> b!2612184 d!740290))

(declare-fun b_lambda!78383 () Bool)

(assert (= b_lambda!78349 (or b!2611823 b_lambda!78383)))

(declare-fun bs!474055 () Bool)

(declare-fun d!740292 () Bool)

(assert (= bs!474055 (and d!740292 b!2611823)))

(assert (=> bs!474055 (= (dynLambda!12797 lambda!97794 (apply!7094 v!6381 (+ 1 from!862))) (rulesProduceIndividualToken!1875 thiss!14197 rules!1726 (apply!7094 v!6381 (+ 1 from!862))))))

(assert (=> bs!474055 m!2946335))

(declare-fun m!2947889 () Bool)

(assert (=> bs!474055 m!2947889))

(assert (=> d!739938 d!740292))

(declare-fun b_lambda!78385 () Bool)

(assert (= b_lambda!78379 (or b!2611497 b_lambda!78385)))

(declare-fun bs!474056 () Bool)

(declare-fun d!740294 () Bool)

(assert (= bs!474056 (and d!740294 b!2611497)))

(assert (=> bs!474056 (= (dynLambda!12797 lambda!97766 (h!35614 lt!917628)) (rulesProduceIndividualToken!1875 thiss!14197 rules!1726 (h!35614 lt!917628)))))

(declare-fun m!2947891 () Bool)

(assert (=> bs!474056 m!2947891))

(assert (=> b!2612927 d!740294))

(declare-fun b_lambda!78387 () Bool)

(assert (= b_lambda!78377 (or b!2611497 b_lambda!78387)))

(assert (=> d!740266 d!739878))

(declare-fun b_lambda!78389 () Bool)

(assert (= b_lambda!78353 (or b!2611505 b_lambda!78389)))

(declare-fun bs!474057 () Bool)

(declare-fun d!740296 () Bool)

(assert (= bs!474057 (and d!740296 b!2611505)))

(assert (=> bs!474057 (= (dynLambda!12797 lambda!97765 (h!35614 lt!917628)) (not (isSeparator!4566 (rule!6936 (h!35614 lt!917628)))))))

(assert (=> b!2612159 d!740296))

(declare-fun b_lambda!78391 () Bool)

(assert (= b_lambda!78371 (or d!739800 b_lambda!78391)))

(declare-fun bs!474058 () Bool)

(declare-fun d!740298 () Bool)

(assert (= bs!474058 (and d!740298 d!739800)))

(assert (=> bs!474058 (= (dynLambda!12797 lambda!97779 (h!35614 (list!11328 v!6381))) (rulesProduceIndividualToken!1875 thiss!14197 rules!1726 (h!35614 (list!11328 v!6381))))))

(assert (=> bs!474058 m!2947817))

(assert (=> b!2612741 d!740298))

(declare-fun b_lambda!78393 () Bool)

(assert (= b_lambda!78351 (or b!2611505 b_lambda!78393)))

(declare-fun bs!474059 () Bool)

(declare-fun d!740300 () Bool)

(assert (= bs!474059 (and d!740300 b!2611505)))

(assert (=> bs!474059 (= (dynLambda!12797 lambda!97765 (h!35614 (dropList!869 v!6381 from!862))) (not (isSeparator!4566 (rule!6936 (h!35614 (dropList!869 v!6381 from!862))))))))

(assert (=> b!2612157 d!740300))

(declare-fun b_lambda!78395 () Bool)

(assert (= b_lambda!78357 (or b!2611505 b_lambda!78395)))

(declare-fun bs!474060 () Bool)

(declare-fun d!740302 () Bool)

(assert (= bs!474060 (and d!740302 b!2611505)))

(assert (=> bs!474060 (= (dynLambda!12797 lambda!97765 (h!35614 (list!11328 v!6381))) (not (isSeparator!4566 (rule!6936 (h!35614 (list!11328 v!6381))))))))

(assert (=> b!2612368 d!740302))

(declare-fun b_lambda!78397 () Bool)

(assert (= b_lambda!78335 (or (and b!2611925 b_free!73487 (= (toChars!6327 (transformation!4566 (h!35613 (t!214154 rules!1726)))) (toChars!6327 (transformation!4566 (rule!6936 lt!917632))))) (and b!2611491 b_free!73475 (= (toChars!6327 (transformation!4566 (rule!6936 separatorToken!156))) (toChars!6327 (transformation!4566 (rule!6936 lt!917632))))) (and b!2613034 b_free!73499 (= (toChars!6327 (transformation!4566 (rule!6936 (h!35614 (innerList!9435 (xs!12359 (c!419709 v!6381))))))) (toChars!6327 (transformation!4566 (rule!6936 lt!917632))))) (and b!2611507 b_free!73471 (= (toChars!6327 (transformation!4566 (h!35613 rules!1726))) (toChars!6327 (transformation!4566 (rule!6936 lt!917632))))) (and b!2612965 b_free!73495 (= (toChars!6327 (transformation!4566 (h!35613 (t!214154 (t!214154 rules!1726))))) (toChars!6327 (transformation!4566 (rule!6936 lt!917632))))) b_lambda!78397)))

(push 1)

(assert (not b!2612315))

(assert (not b!2612682))

(assert (not d!739932))

(assert (not b!2612266))

(assert (not b!2612178))

(assert (not b!2612097))

(assert (not b!2613031))

(assert (not b!2612145))

(assert (not b!2612348))

(assert (not b!2612319))

(assert (not d!740092))

(assert b_and!191113)

(assert (not b!2612201))

(assert (not b!2612248))

(assert (not b!2612108))

(assert (not b!2612048))

(assert (not b!2612712))

(assert (not b!2612941))

(assert (not b!2612944))

(assert (not b!2612255))

(assert (not d!739988))

(assert (not b!2612709))

(assert (not b!2612943))

(assert (not b!2612482))

(assert (not b!2612381))

(assert (not b!2612967))

(assert (not b!2612738))

(assert (not b!2612139))

(assert (not b!2612844))

(assert (not b!2612847))

(assert (not bm!167705))

(assert (not b!2612347))

(assert (not d!740006))

(assert (not b!2612162))

(assert (not d!739992))

(assert (not d!740274))

(assert (not d!739916))

(assert (not b!2613043))

(assert (not b!2612282))

(assert (not b!2613015))

(assert (not b!2613040))

(assert (not b!2612660))

(assert (not b!2612687))

(assert (not bm!167586))

(assert (not b!2612964))

(assert (not d!740234))

(assert (not tb!142157))

(assert (not b_lambda!78387))

(assert (not b!2612068))

(assert (not b!2612110))

(assert (not d!740236))

(assert (not d!740272))

(assert (not b!2612070))

(assert (not b!2612078))

(assert (not b!2612161))

(assert (not b!2613018))

(assert (not b!2612203))

(assert (not b_next!74175))

(assert (not b!2612362))

(assert (not d!739908))

(assert (not b_lambda!78369))

(assert (not bs!474058))

(assert (not b!2612652))

(assert (not b!2612350))

(assert (not b!2613032))

(assert (not b!2611685))

(assert (not b!2612735))

(assert (not b!2612723))

(assert (not bm!167579))

(assert (not b!2612924))

(assert (not b_lambda!78397))

(assert (not b!2612055))

(assert (not d!739990))

(assert (not b!2612046))

(assert (not b!2612341))

(assert (not b_next!74179))

(assert (not b!2612369))

(assert (not b!2613012))

(assert (not d!739934))

(assert (not bm!167583))

(assert (not b!2612975))

(assert (not d!740228))

(assert (not b!2612083))

(assert (not bm!167577))

(assert (not bm!167624))

(assert (not b!2612971))

(assert (not b!2612711))

(assert (not d!739940))

(assert (not b!2612922))

(assert (not b!2612119))

(assert (not b!2612834))

(assert (not b!2612202))

(assert (not bm!167635))

(assert (not d!740192))

(assert (not bm!167634))

(assert (not b_lambda!78393))

(assert (not b!2613001))

(assert (not b!2612994))

(assert (not b!2612344))

(assert (not d!739962))

(assert (not b!2612280))

(assert (not b!2612111))

(assert (not d!739994))

(assert (not d!739918))

(assert (not b!2612969))

(assert (not b!2612101))

(assert (not b!2612080))

(assert (not b!2612163))

(assert (not d!740156))

(assert (not b!2612084))

(assert (not d!740090))

(assert (not b!2612970))

(assert (not b!2612833))

(assert (not d!740162))

(assert (not b!2612144))

(assert (not b!2612710))

(assert (not d!739928))

(assert (not b!2612165))

(assert (not b!2612487))

(assert (not b!2612479))

(assert (not bm!167711))

(assert (not b!2613042))

(assert (not b!2612693))

(assert (not bm!167621))

(assert (not b!2612253))

(assert (not b!2612067))

(assert (not b_next!74203))

(assert (not b!2613005))

(assert (not d!740094))

(assert (not d!740168))

(assert b_and!191115)

(assert (not d!740188))

(assert (not b!2612121))

(assert (not b!2612653))

(assert (not d!740024))

(assert (not b!2612956))

(assert (not b!2612740))

(assert (not d!740270))

(assert (not b!2612367))

(assert (not b!2612942))

(assert (not b!2612294))

(assert (not bm!167578))

(assert (not b!2612657))

(assert (not d!739948))

(assert (not d!739960))

(assert (not b!2612295))

(assert (not bs!474055))

(assert (not d!740154))

(assert (not b_next!74177))

(assert (not d!740164))

(assert (not b!2612656))

(assert (not b!2612343))

(assert (not b!2612946))

(assert (not bm!167581))

(assert (not d!740148))

(assert (not bm!167636))

(assert (not b_next!74199))

(assert (not b_lambda!78383))

(assert (not bm!167707))

(assert (not b!2612185))

(assert (not b!2612069))

(assert b_and!191101)

(assert (not b!2612713))

(assert (not b_lambda!78339))

(assert (not b!2612963))

(assert (not bm!167710))

(assert b_and!191039)

(assert (not b!2612667))

(assert (not d!739958))

(assert (not b!2612379))

(assert (not d!740224))

(assert (not b!2612960))

(assert (not b!2612072))

(assert (not b!2612972))

(assert (not b!2612342))

(assert (not b!2612339))

(assert (not d!740230))

(assert (not b_lambda!78385))

(assert (not b_next!74201))

(assert (not b!2613003))

(assert (not bm!167633))

(assert (not b!2612177))

(assert (not d!740152))

(assert (not bm!167619))

(assert (not b!2612721))

(assert (not b!2612143))

(assert (not b!2612685))

(assert (not b!2612986))

(assert (not d!739942))

(assert (not d!740170))

(assert (not b!2613013))

(assert (not b!2612737))

(assert (not b!2612082))

(assert (not b!2613020))

(assert (not b!2613041))

(assert (not d!740034))

(assert (not tb!142163))

(assert (not d!740032))

(assert (not b!2613004))

(assert (not b!2612961))

(assert b_and!191035)

(assert (not b_next!74197))

(assert (not d!740098))

(assert (not d!739944))

(assert (not b_lambda!78389))

(assert (not d!740158))

(assert (not b!2612990))

(assert (not b!2612928))

(assert (not d!740022))

(assert b_and!191099)

(assert (not b!2612324))

(assert (not b!2612107))

(assert (not b!2612665))

(assert (not bm!167576))

(assert (not d!739968))

(assert (not d!740166))

(assert (not d!739998))

(assert (not d!740000))

(assert (not b!2612945))

(assert (not b!2612989))

(assert (not d!739938))

(assert (not b!2612274))

(assert (not b!2612988))

(assert (not bm!167629))

(assert (not b!2613016))

(assert (not b!2613036))

(assert (not b!2612992))

(assert (not bs!474056))

(assert (not b!2612356))

(assert (not d!739926))

(assert (not b!2612486))

(assert (not b!2612167))

(assert (not d!740174))

(assert (not b!2613011))

(assert (not d!739974))

(assert (not bs!474054))

(assert (not b!2612109))

(assert (not b!2612364))

(assert (not b!2612117))

(assert (not d!739954))

(assert (not b_lambda!78381))

(assert (not d!739924))

(assert (not b!2612993))

(assert (not b!2612200))

(assert (not b!2612984))

(assert (not b_next!74189))

(assert (not b!2613017))

(assert (not b!2612160))

(assert (not b!2612683))

(assert (not b!2612104))

(assert (not b!2612321))

(assert (not b_next!74173))

(assert (not b!2612704))

(assert (not b!2612071))

(assert (not b!2612954))

(assert (not b!2612179))

(assert (not b!2612958))

(assert tp_is_empty!13727)

(assert (not b!2612734))

(assert (not d!739922))

(assert (not b!2612096))

(assert (not b!2612708))

(assert (not b!2612142))

(assert (not d!740278))

(assert (not b!2612380))

(assert (not d!740096))

(assert (not bm!167582))

(assert (not d!740172))

(assert (not b!2612923))

(assert (not d!740186))

(assert (not b!2613019))

(assert (not bm!167572))

(assert (not b!2612316))

(assert (not b!2613007))

(assert (not b!2612366))

(assert b_and!191117)

(assert (not b!2612092))

(assert (not b!2612272))

(assert (not d!739914))

(assert (not b!2612968))

(assert (not b!2612995))

(assert (not b!2613006))

(assert (not d!740038))

(assert (not b!2612140))

(assert (not b!2612199))

(assert (not b!2613037))

(assert (not b!2612254))

(assert b_and!191111)

(assert (not b_lambda!78337))

(assert (not b_next!74191))

(assert (not b!2612953))

(assert (not d!740150))

(assert (not b!2612999))

(assert (not bm!167575))

(assert (not d!740146))

(assert (not d!739936))

(assert (not b!2613033))

(assert (not b_lambda!78367))

(assert (not b!2612662))

(assert (not b!2612962))

(assert b_and!191063)

(assert (not b!2612974))

(assert (not b!2612985))

(assert (not b!2612481))

(assert (not b!2612705))

(assert (not d!740004))

(assert b_and!191103)

(assert (not b!2613038))

(assert (not b!2612480))

(assert (not b!2612198))

(assert (not b!2612707))

(assert (not d!740026))

(assert (not d!740178))

(assert (not b!2612151))

(assert (not d!740232))

(assert (not b_lambda!78395))

(assert (not b!2613000))

(assert (not b!2611869))

(assert (not b!2612141))

(assert (not d!739952))

(assert (not b!2612090))

(assert (not b!2612346))

(assert (not b!2612100))

(assert (not d!740226))

(assert (not b!2612832))

(assert (not b!2612957))

(assert (not b!2612842))

(assert (not b!2612973))

(assert (not b!2612095))

(assert (not b!2612250))

(assert (not d!740160))

(assert (not d!739906))

(assert (not d!740288))

(assert (not b_lambda!78391))

(assert (not b!2612729))

(assert (not bm!167626))

(assert (not b!2612845))

(assert (not d!740190))

(assert (not b!2612320))

(assert (not b!2612314))

(assert (not b!2612158))

(assert (not b_lambda!78347))

(assert (not b!2612666))

(assert (not b!2612094))

(assert (not b!2612146))

(assert (not b!2612731))

(assert (not b!2611891))

(assert (not bm!167703))

(assert (not d!740014))

(assert (not tb!142139))

(assert (not b!2612948))

(assert (not b!2612742))

(check-sat)

(pop 1)

(push 1)

(assert b_and!191113)

(assert (not b_next!74175))

(assert (not b_next!74179))

(assert (not b_next!74177))

(assert b_and!191039)

(assert (not b_next!74201))

(assert (not b_next!74189))

(assert (not b_next!74173))

(assert b_and!191117)

(assert (not b_next!74203))

(assert b_and!191115)

(assert (not b_next!74199))

(assert b_and!191101)

(assert b_and!191099)

(assert b_and!191035)

(assert (not b_next!74197))

(assert b_and!191111)

(assert (not b_next!74191))

(assert b_and!191063)

(assert b_and!191103)

(check-sat)

(pop 1)

