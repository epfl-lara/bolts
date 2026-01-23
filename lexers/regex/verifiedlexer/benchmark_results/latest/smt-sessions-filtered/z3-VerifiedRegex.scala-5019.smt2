; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!253826 () Bool)

(assert start!253826)

(declare-fun b!2610994 () Bool)

(declare-fun b_free!73413 () Bool)

(declare-fun b_next!74117 () Bool)

(assert (=> b!2610994 (= b_free!73413 (not b_next!74117))))

(declare-fun tp!829541 () Bool)

(declare-fun b_and!190979 () Bool)

(assert (=> b!2610994 (= tp!829541 b_and!190979)))

(declare-fun b_free!73415 () Bool)

(declare-fun b_next!74119 () Bool)

(assert (=> b!2610994 (= b_free!73415 (not b_next!74119))))

(declare-fun tp!829546 () Bool)

(declare-fun b_and!190981 () Bool)

(assert (=> b!2610994 (= tp!829546 b_and!190981)))

(declare-fun b!2611003 () Bool)

(declare-fun b_free!73417 () Bool)

(declare-fun b_next!74121 () Bool)

(assert (=> b!2611003 (= b_free!73417 (not b_next!74121))))

(declare-fun tp!829538 () Bool)

(declare-fun b_and!190983 () Bool)

(assert (=> b!2611003 (= tp!829538 b_and!190983)))

(declare-fun b_free!73419 () Bool)

(declare-fun b_next!74123 () Bool)

(assert (=> b!2611003 (= b_free!73419 (not b_next!74123))))

(declare-fun tp!829544 () Bool)

(declare-fun b_and!190985 () Bool)

(assert (=> b!2611003 (= tp!829544 b_and!190985)))

(declare-fun bs!473895 () Bool)

(declare-fun b!2610998 () Bool)

(declare-fun b!2610996 () Bool)

(assert (= bs!473895 (and b!2610998 b!2610996)))

(declare-fun lambda!97706 () Int)

(declare-fun lambda!97705 () Int)

(assert (=> bs!473895 (not (= lambda!97706 lambda!97705))))

(declare-fun b!2611022 () Bool)

(declare-fun e!1647448 () Bool)

(assert (=> b!2611022 (= e!1647448 true)))

(declare-fun b!2611021 () Bool)

(declare-fun e!1647447 () Bool)

(assert (=> b!2611021 (= e!1647447 e!1647448)))

(declare-fun b!2611020 () Bool)

(declare-fun e!1647446 () Bool)

(assert (=> b!2611020 (= e!1647446 e!1647447)))

(assert (=> b!2610998 e!1647446))

(assert (= b!2611021 b!2611022))

(assert (= b!2611020 b!2611021))

(declare-datatypes ((String!33788 0))(
  ( (String!33789 (value!147510 String)) )
))
(declare-datatypes ((List!30263 0))(
  ( (Nil!30163) (Cons!30163 (h!35583 (_ BitVec 16)) (t!214096 List!30263)) )
))
(declare-datatypes ((C!15564 0))(
  ( (C!15565 (val!9716 Int)) )
))
(declare-datatypes ((Regex!7703 0))(
  ( (ElementMatch!7703 (c!419686 C!15564)) (Concat!12484 (regOne!15918 Regex!7703) (regTwo!15918 Regex!7703)) (EmptyExpr!7703) (Star!7703 (reg!8032 Regex!7703)) (EmptyLang!7703) (Union!7703 (regOne!15919 Regex!7703) (regTwo!15919 Regex!7703)) )
))
(declare-datatypes ((TokenValue!4781 0))(
  ( (FloatLiteralValue!9562 (text!33912 List!30263)) (TokenValueExt!4780 (__x!19395 Int)) (Broken!23905 (value!147511 List!30263)) (Object!4880) (End!4781) (Def!4781) (Underscore!4781) (Match!4781) (Else!4781) (Error!4781) (Case!4781) (If!4781) (Extends!4781) (Abstract!4781) (Class!4781) (Val!4781) (DelimiterValue!9562 (del!4841 List!30263)) (KeywordValue!4787 (value!147512 List!30263)) (CommentValue!9562 (value!147513 List!30263)) (WhitespaceValue!9562 (value!147514 List!30263)) (IndentationValue!4781 (value!147515 List!30263)) (String!33790) (Int32!4781) (Broken!23906 (value!147516 List!30263)) (Boolean!4782) (Unit!44142) (OperatorValue!4784 (op!4841 List!30263)) (IdentifierValue!9562 (value!147517 List!30263)) (IdentifierValue!9563 (value!147518 List!30263)) (WhitespaceValue!9563 (value!147519 List!30263)) (True!9562) (False!9562) (Broken!23907 (value!147520 List!30263)) (Broken!23908 (value!147521 List!30263)) (True!9563) (RightBrace!4781) (RightBracket!4781) (Colon!4781) (Null!4781) (Comma!4781) (LeftBracket!4781) (False!9563) (LeftBrace!4781) (ImaginaryLiteralValue!4781 (text!33913 List!30263)) (StringLiteralValue!14343 (value!147522 List!30263)) (EOFValue!4781 (value!147523 List!30263)) (IdentValue!4781 (value!147524 List!30263)) (DelimiterValue!9563 (value!147525 List!30263)) (DedentValue!4781 (value!147526 List!30263)) (NewLineValue!4781 (value!147527 List!30263)) (IntegerValue!14343 (value!147528 (_ BitVec 32)) (text!33914 List!30263)) (IntegerValue!14344 (value!147529 Int) (text!33915 List!30263)) (Times!4781) (Or!4781) (Equal!4781) (Minus!4781) (Broken!23909 (value!147530 List!30263)) (And!4781) (Div!4781) (LessEqual!4781) (Mod!4781) (Concat!12485) (Not!4781) (Plus!4781) (SpaceValue!4781 (value!147531 List!30263)) (IntegerValue!14345 (value!147532 Int) (text!33916 List!30263)) (StringLiteralValue!14344 (text!33917 List!30263)) (FloatLiteralValue!9563 (text!33918 List!30263)) (BytesLiteralValue!4781 (value!147533 List!30263)) (CommentValue!9563 (value!147534 List!30263)) (StringLiteralValue!14345 (value!147535 List!30263)) (ErrorTokenValue!4781 (msg!4842 List!30263)) )
))
(declare-datatypes ((List!30264 0))(
  ( (Nil!30164) (Cons!30164 (h!35584 C!15564) (t!214097 List!30264)) )
))
(declare-datatypes ((IArray!18725 0))(
  ( (IArray!18726 (innerList!9420 List!30264)) )
))
(declare-datatypes ((Conc!9360 0))(
  ( (Node!9360 (left!23203 Conc!9360) (right!23533 Conc!9360) (csize!18950 Int) (cheight!9571 Int)) (Leaf!14380 (xs!12344 IArray!18725) (csize!18951 Int)) (Empty!9360) )
))
(declare-datatypes ((BalanceConc!18334 0))(
  ( (BalanceConc!18335 (c!419687 Conc!9360)) )
))
(declare-datatypes ((TokenValueInjection!9002 0))(
  ( (TokenValueInjection!9003 (toValue!6461 Int) (toChars!6320 Int)) )
))
(declare-datatypes ((Rule!8918 0))(
  ( (Rule!8919 (regex!4559 Regex!7703) (tag!5049 String!33788) (isSeparator!4559 Bool) (transformation!4559 TokenValueInjection!9002)) )
))
(declare-datatypes ((List!30265 0))(
  ( (Nil!30165) (Cons!30165 (h!35585 Rule!8918) (t!214098 List!30265)) )
))
(declare-fun rules!1726 () List!30265)

(get-info :version)

(assert (= (and b!2610998 ((_ is Cons!30165) rules!1726)) b!2611020))

(declare-fun order!16023 () Int)

(declare-fun order!16025 () Int)

(declare-fun dynLambda!12769 (Int Int) Int)

(declare-fun dynLambda!12770 (Int Int) Int)

(assert (=> b!2611022 (< (dynLambda!12769 order!16023 (toValue!6461 (transformation!4559 (h!35585 rules!1726)))) (dynLambda!12770 order!16025 lambda!97706))))

(declare-fun order!16027 () Int)

(declare-fun dynLambda!12771 (Int Int) Int)

(assert (=> b!2611022 (< (dynLambda!12771 order!16027 (toChars!6320 (transformation!4559 (h!35585 rules!1726)))) (dynLambda!12770 order!16025 lambda!97706))))

(assert (=> b!2610998 true))

(declare-fun b!2610992 () Bool)

(declare-fun res!1099033 () Bool)

(declare-fun e!1647425 () Bool)

(assert (=> b!2610992 (=> (not res!1099033) (not e!1647425))))

(declare-fun isEmpty!17236 (List!30265) Bool)

(assert (=> b!2610992 (= res!1099033 (not (isEmpty!17236 rules!1726)))))

(declare-fun b!2610993 () Bool)

(declare-fun res!1099031 () Bool)

(assert (=> b!2610993 (=> (not res!1099031) (not e!1647425))))

(declare-fun sepAndNonSepRulesDisjointChars!1132 (List!30265 List!30265) Bool)

(assert (=> b!2610993 (= res!1099031 (sepAndNonSepRulesDisjointChars!1132 rules!1726 rules!1726))))

(declare-fun e!1647430 () Bool)

(assert (=> b!2610994 (= e!1647430 (and tp!829541 tp!829546))))

(declare-fun b!2610995 () Bool)

(declare-fun res!1099030 () Bool)

(assert (=> b!2610995 (=> (not res!1099030) (not e!1647425))))

(declare-datatypes ((LexerInterface!4156 0))(
  ( (LexerInterfaceExt!4153 (__x!19396 Int)) (Lexer!4154) )
))
(declare-fun thiss!14197 () LexerInterface!4156)

(declare-datatypes ((Token!8588 0))(
  ( (Token!8589 (value!147536 TokenValue!4781) (rule!6929 Rule!8918) (size!23356 Int) (originalCharacters!5325 List!30264)) )
))
(declare-fun separatorToken!156 () Token!8588)

(declare-fun rulesProduceIndividualToken!1868 (LexerInterface!4156 List!30265 Token!8588) Bool)

(assert (=> b!2610995 (= res!1099030 (rulesProduceIndividualToken!1868 thiss!14197 rules!1726 separatorToken!156))))

(declare-fun res!1099034 () Bool)

(assert (=> b!2610996 (=> (not res!1099034) (not e!1647425))))

(declare-datatypes ((List!30266 0))(
  ( (Nil!30166) (Cons!30166 (h!35586 Token!8588) (t!214099 List!30266)) )
))
(declare-datatypes ((IArray!18727 0))(
  ( (IArray!18728 (innerList!9421 List!30266)) )
))
(declare-datatypes ((Conc!9361 0))(
  ( (Node!9361 (left!23204 Conc!9361) (right!23534 Conc!9361) (csize!18952 Int) (cheight!9572 Int)) (Leaf!14381 (xs!12345 IArray!18727) (csize!18953 Int)) (Empty!9361) )
))
(declare-datatypes ((BalanceConc!18336 0))(
  ( (BalanceConc!18337 (c!419688 Conc!9361)) )
))
(declare-fun v!6381 () BalanceConc!18336)

(declare-fun forall!6255 (BalanceConc!18336 Int) Bool)

(assert (=> b!2610996 (= res!1099034 (forall!6255 v!6381 lambda!97705))))

(declare-fun b!2610997 () Bool)

(declare-fun res!1099025 () Bool)

(assert (=> b!2610997 (=> (not res!1099025) (not e!1647425))))

(declare-fun rulesProduceEachTokenIndividually!976 (LexerInterface!4156 List!30265 BalanceConc!18336) Bool)

(assert (=> b!2610997 (= res!1099025 (rulesProduceEachTokenIndividually!976 thiss!14197 rules!1726 v!6381))))

(declare-fun e!1647435 () Bool)

(declare-fun e!1647429 () Bool)

(assert (=> b!2610998 (= e!1647435 e!1647429)))

(declare-fun res!1099026 () Bool)

(assert (=> b!2610998 (=> res!1099026 e!1647429)))

(declare-fun from!862 () Int)

(declare-fun lt!917445 () Int)

(assert (=> b!2610998 (= res!1099026 (or (< (+ 1 from!862) 0) (> (+ 1 from!862) lt!917445)))))

(declare-datatypes ((Unit!44143 0))(
  ( (Unit!44144) )
))
(declare-fun lt!917442 () Unit!44143)

(declare-fun lt!917439 () Token!8588)

(declare-fun lt!917443 () List!30266)

(declare-fun forallContained!915 (List!30266 Int Token!8588) Unit!44143)

(assert (=> b!2610998 (= lt!917442 (forallContained!915 lt!917443 lambda!97706 lt!917439))))

(declare-fun b!2610999 () Bool)

(declare-fun e!1647432 () Bool)

(declare-fun e!1647428 () Bool)

(declare-fun tp!829540 () Bool)

(assert (=> b!2610999 (= e!1647432 (and e!1647428 tp!829540))))

(declare-fun b!2611000 () Bool)

(declare-fun res!1099032 () Bool)

(assert (=> b!2611000 (=> res!1099032 e!1647435)))

(declare-fun contains!5594 (List!30266 Token!8588) Bool)

(assert (=> b!2611000 (= res!1099032 (not (contains!5594 lt!917443 lt!917439)))))

(declare-fun b!2611001 () Bool)

(declare-fun e!1647438 () Bool)

(assert (=> b!2611001 (= e!1647438 (not e!1647435))))

(declare-fun res!1099024 () Bool)

(assert (=> b!2611001 (=> res!1099024 e!1647435)))

(declare-fun contains!5595 (BalanceConc!18336 Token!8588) Bool)

(assert (=> b!2611001 (= res!1099024 (not (contains!5595 v!6381 lt!917439)))))

(declare-fun apply!7080 (BalanceConc!18336 Int) Token!8588)

(assert (=> b!2611001 (= lt!917439 (apply!7080 v!6381 from!862))))

(declare-fun lt!917441 () List!30266)

(declare-fun tail!4192 (List!30266) List!30266)

(declare-fun drop!1555 (List!30266 Int) List!30266)

(assert (=> b!2611001 (= (tail!4192 lt!917441) (drop!1555 lt!917443 (+ 1 from!862)))))

(declare-fun lt!917438 () Unit!44143)

(declare-fun lemmaDropTail!744 (List!30266 Int) Unit!44143)

(assert (=> b!2611001 (= lt!917438 (lemmaDropTail!744 lt!917443 from!862))))

(declare-fun head!5954 (List!30266) Token!8588)

(declare-fun apply!7081 (List!30266 Int) Token!8588)

(assert (=> b!2611001 (= (head!5954 lt!917441) (apply!7081 lt!917443 from!862))))

(assert (=> b!2611001 (= lt!917441 (drop!1555 lt!917443 from!862))))

(declare-fun lt!917440 () Unit!44143)

(declare-fun lemmaDropApply!770 (List!30266 Int) Unit!44143)

(assert (=> b!2611001 (= lt!917440 (lemmaDropApply!770 lt!917443 from!862))))

(declare-fun tp!829539 () Bool)

(declare-fun e!1647427 () Bool)

(declare-fun e!1647426 () Bool)

(declare-fun b!2611002 () Bool)

(declare-fun inv!21 (TokenValue!4781) Bool)

(assert (=> b!2611002 (= e!1647427 (and (inv!21 (value!147536 separatorToken!156)) e!1647426 tp!829539))))

(declare-fun e!1647439 () Bool)

(assert (=> b!2611003 (= e!1647439 (and tp!829538 tp!829544))))

(declare-fun b!2611004 () Bool)

(declare-fun tp!829545 () Bool)

(declare-fun inv!40816 (String!33788) Bool)

(declare-fun inv!40821 (TokenValueInjection!9002) Bool)

(assert (=> b!2611004 (= e!1647428 (and tp!829545 (inv!40816 (tag!5049 (h!35585 rules!1726))) (inv!40821 (transformation!4559 (h!35585 rules!1726))) e!1647439))))

(declare-fun b!2611005 () Bool)

(assert (=> b!2611005 (= e!1647425 e!1647438)))

(declare-fun res!1099023 () Bool)

(assert (=> b!2611005 (=> (not res!1099023) (not e!1647438))))

(assert (=> b!2611005 (= res!1099023 (< from!862 lt!917445))))

(declare-fun lt!917444 () Unit!44143)

(declare-fun lemmaContentSubsetPreservesForall!228 (List!30266 List!30266 Int) Unit!44143)

(declare-fun dropList!862 (BalanceConc!18336 Int) List!30266)

(assert (=> b!2611005 (= lt!917444 (lemmaContentSubsetPreservesForall!228 lt!917443 (dropList!862 v!6381 from!862) lambda!97705))))

(declare-fun list!11321 (BalanceConc!18336) List!30266)

(assert (=> b!2611005 (= lt!917443 (list!11321 v!6381))))

(declare-fun b!2611006 () Bool)

(declare-fun res!1099029 () Bool)

(assert (=> b!2611006 (=> (not res!1099029) (not e!1647425))))

(assert (=> b!2611006 (= res!1099029 (isSeparator!4559 (rule!6929 separatorToken!156)))))

(declare-fun b!2611007 () Bool)

(declare-fun e!1647434 () Bool)

(assert (=> b!2611007 (= e!1647434 e!1647425)))

(declare-fun res!1099027 () Bool)

(assert (=> b!2611007 (=> (not res!1099027) (not e!1647425))))

(assert (=> b!2611007 (= res!1099027 (<= from!862 lt!917445))))

(declare-fun size!23357 (BalanceConc!18336) Int)

(assert (=> b!2611007 (= lt!917445 (size!23357 v!6381))))

(declare-fun b!2611009 () Bool)

(declare-fun res!1099028 () Bool)

(assert (=> b!2611009 (=> (not res!1099028) (not e!1647425))))

(declare-fun rulesInvariant!3656 (LexerInterface!4156 List!30265) Bool)

(assert (=> b!2611009 (= res!1099028 (rulesInvariant!3656 thiss!14197 rules!1726))))

(declare-fun res!1099035 () Bool)

(assert (=> start!253826 (=> (not res!1099035) (not e!1647434))))

(assert (=> start!253826 (= res!1099035 (and ((_ is Lexer!4154) thiss!14197) (>= from!862 0)))))

(assert (=> start!253826 e!1647434))

(assert (=> start!253826 true))

(assert (=> start!253826 e!1647432))

(declare-fun inv!40822 (Token!8588) Bool)

(assert (=> start!253826 (and (inv!40822 separatorToken!156) e!1647427)))

(declare-fun e!1647436 () Bool)

(declare-fun inv!40823 (BalanceConc!18336) Bool)

(assert (=> start!253826 (and (inv!40823 v!6381) e!1647436)))

(declare-fun b!2611008 () Bool)

(declare-fun tp!829543 () Bool)

(declare-fun inv!40824 (Conc!9361) Bool)

(assert (=> b!2611008 (= e!1647436 (and (inv!40824 (c!419688 v!6381)) tp!829543))))

(declare-fun b!2611010 () Bool)

(assert (=> b!2611010 (= e!1647429 (forall!6255 v!6381 lambda!97705))))

(declare-fun tp!829542 () Bool)

(declare-fun b!2611011 () Bool)

(assert (=> b!2611011 (= e!1647426 (and tp!829542 (inv!40816 (tag!5049 (rule!6929 separatorToken!156))) (inv!40821 (transformation!4559 (rule!6929 separatorToken!156))) e!1647430))))

(assert (= (and start!253826 res!1099035) b!2611007))

(assert (= (and b!2611007 res!1099027) b!2610992))

(assert (= (and b!2610992 res!1099033) b!2611009))

(assert (= (and b!2611009 res!1099028) b!2610997))

(assert (= (and b!2610997 res!1099025) b!2610995))

(assert (= (and b!2610995 res!1099030) b!2611006))

(assert (= (and b!2611006 res!1099029) b!2610996))

(assert (= (and b!2610996 res!1099034) b!2610993))

(assert (= (and b!2610993 res!1099031) b!2611005))

(assert (= (and b!2611005 res!1099023) b!2611001))

(assert (= (and b!2611001 (not res!1099024)) b!2611000))

(assert (= (and b!2611000 (not res!1099032)) b!2610998))

(assert (= (and b!2610998 (not res!1099026)) b!2611010))

(assert (= b!2611004 b!2611003))

(assert (= b!2610999 b!2611004))

(assert (= (and start!253826 ((_ is Cons!30165) rules!1726)) b!2610999))

(assert (= b!2611011 b!2610994))

(assert (= b!2611002 b!2611011))

(assert (= start!253826 b!2611002))

(assert (= start!253826 b!2611008))

(declare-fun m!2945527 () Bool)

(assert (=> b!2611010 m!2945527))

(declare-fun m!2945529 () Bool)

(assert (=> b!2610998 m!2945529))

(declare-fun m!2945531 () Bool)

(assert (=> b!2610997 m!2945531))

(declare-fun m!2945533 () Bool)

(assert (=> b!2610992 m!2945533))

(declare-fun m!2945535 () Bool)

(assert (=> b!2611000 m!2945535))

(declare-fun m!2945537 () Bool)

(assert (=> b!2610993 m!2945537))

(declare-fun m!2945539 () Bool)

(assert (=> b!2611011 m!2945539))

(declare-fun m!2945541 () Bool)

(assert (=> b!2611011 m!2945541))

(declare-fun m!2945543 () Bool)

(assert (=> start!253826 m!2945543))

(declare-fun m!2945545 () Bool)

(assert (=> start!253826 m!2945545))

(assert (=> b!2610996 m!2945527))

(declare-fun m!2945547 () Bool)

(assert (=> b!2611005 m!2945547))

(assert (=> b!2611005 m!2945547))

(declare-fun m!2945549 () Bool)

(assert (=> b!2611005 m!2945549))

(declare-fun m!2945551 () Bool)

(assert (=> b!2611005 m!2945551))

(declare-fun m!2945553 () Bool)

(assert (=> b!2611007 m!2945553))

(declare-fun m!2945555 () Bool)

(assert (=> b!2611002 m!2945555))

(declare-fun m!2945557 () Bool)

(assert (=> b!2611009 m!2945557))

(declare-fun m!2945559 () Bool)

(assert (=> b!2611001 m!2945559))

(declare-fun m!2945561 () Bool)

(assert (=> b!2611001 m!2945561))

(declare-fun m!2945563 () Bool)

(assert (=> b!2611001 m!2945563))

(declare-fun m!2945565 () Bool)

(assert (=> b!2611001 m!2945565))

(declare-fun m!2945567 () Bool)

(assert (=> b!2611001 m!2945567))

(declare-fun m!2945569 () Bool)

(assert (=> b!2611001 m!2945569))

(declare-fun m!2945571 () Bool)

(assert (=> b!2611001 m!2945571))

(declare-fun m!2945573 () Bool)

(assert (=> b!2611001 m!2945573))

(declare-fun m!2945575 () Bool)

(assert (=> b!2611001 m!2945575))

(declare-fun m!2945577 () Bool)

(assert (=> b!2611004 m!2945577))

(declare-fun m!2945579 () Bool)

(assert (=> b!2611004 m!2945579))

(declare-fun m!2945581 () Bool)

(assert (=> b!2610995 m!2945581))

(declare-fun m!2945583 () Bool)

(assert (=> b!2611008 m!2945583))

(check-sat (not b!2610996) b_and!190981 (not b_next!74121) b_and!190979 (not b!2610997) (not b!2611004) (not b!2610992) (not b!2610998) (not b!2611020) b_and!190985 (not b!2611010) (not b!2611005) (not b!2611008) (not b_next!74119) (not b!2611011) (not b_next!74123) (not b!2611001) (not b_next!74117) b_and!190983 (not b!2610995) (not b!2611002) (not b!2610993) (not b!2611000) (not b!2610999) (not b!2611009) (not start!253826) (not b!2611007))
(check-sat b_and!190981 (not b_next!74119) (not b_next!74121) b_and!190979 (not b_next!74123) b_and!190985 (not b_next!74117) b_and!190983)
