; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!253822 () Bool)

(assert start!253822)

(declare-fun b!2610848 () Bool)

(declare-fun b_free!73397 () Bool)

(declare-fun b_next!74101 () Bool)

(assert (=> b!2610848 (= b_free!73397 (not b_next!74101))))

(declare-fun tp!829491 () Bool)

(declare-fun b_and!190963 () Bool)

(assert (=> b!2610848 (= tp!829491 b_and!190963)))

(declare-fun b_free!73399 () Bool)

(declare-fun b_next!74103 () Bool)

(assert (=> b!2610848 (= b_free!73399 (not b_next!74103))))

(declare-fun tp!829487 () Bool)

(declare-fun b_and!190965 () Bool)

(assert (=> b!2610848 (= tp!829487 b_and!190965)))

(declare-fun b!2610850 () Bool)

(declare-fun b_free!73401 () Bool)

(declare-fun b_next!74105 () Bool)

(assert (=> b!2610850 (= b_free!73401 (not b_next!74105))))

(declare-fun tp!829490 () Bool)

(declare-fun b_and!190967 () Bool)

(assert (=> b!2610850 (= tp!829490 b_and!190967)))

(declare-fun b_free!73403 () Bool)

(declare-fun b_next!74107 () Bool)

(assert (=> b!2610850 (= b_free!73403 (not b_next!74107))))

(declare-fun tp!829484 () Bool)

(declare-fun b_and!190969 () Bool)

(assert (=> b!2610850 (= tp!829484 b_and!190969)))

(declare-fun bs!473891 () Bool)

(declare-fun b!2610856 () Bool)

(declare-fun b!2610864 () Bool)

(assert (= bs!473891 (and b!2610856 b!2610864)))

(declare-fun lambda!97686 () Int)

(declare-fun lambda!97685 () Int)

(assert (=> bs!473891 (not (= lambda!97686 lambda!97685))))

(declare-fun b!2610876 () Bool)

(declare-fun e!1647340 () Bool)

(assert (=> b!2610876 (= e!1647340 true)))

(declare-fun b!2610875 () Bool)

(declare-fun e!1647339 () Bool)

(assert (=> b!2610875 (= e!1647339 e!1647340)))

(declare-fun b!2610874 () Bool)

(declare-fun e!1647338 () Bool)

(assert (=> b!2610874 (= e!1647338 e!1647339)))

(assert (=> b!2610856 e!1647338))

(assert (= b!2610875 b!2610876))

(assert (= b!2610874 b!2610875))

(declare-datatypes ((List!30255 0))(
  ( (Nil!30155) (Cons!30155 (h!35575 (_ BitVec 16)) (t!214080 List!30255)) )
))
(declare-datatypes ((C!15560 0))(
  ( (C!15561 (val!9714 Int)) )
))
(declare-datatypes ((Regex!7701 0))(
  ( (ElementMatch!7701 (c!419680 C!15560)) (Concat!12480 (regOne!15914 Regex!7701) (regTwo!15914 Regex!7701)) (EmptyExpr!7701) (Star!7701 (reg!8030 Regex!7701)) (EmptyLang!7701) (Union!7701 (regOne!15915 Regex!7701) (regTwo!15915 Regex!7701)) )
))
(declare-datatypes ((TokenValue!4779 0))(
  ( (FloatLiteralValue!9558 (text!33898 List!30255)) (TokenValueExt!4778 (__x!19391 Int)) (Broken!23895 (value!147453 List!30255)) (Object!4878) (End!4779) (Def!4779) (Underscore!4779) (Match!4779) (Else!4779) (Error!4779) (Case!4779) (If!4779) (Extends!4779) (Abstract!4779) (Class!4779) (Val!4779) (DelimiterValue!9558 (del!4839 List!30255)) (KeywordValue!4785 (value!147454 List!30255)) (CommentValue!9558 (value!147455 List!30255)) (WhitespaceValue!9558 (value!147456 List!30255)) (IndentationValue!4779 (value!147457 List!30255)) (String!33778) (Int32!4779) (Broken!23896 (value!147458 List!30255)) (Boolean!4780) (Unit!44136) (OperatorValue!4782 (op!4839 List!30255)) (IdentifierValue!9558 (value!147459 List!30255)) (IdentifierValue!9559 (value!147460 List!30255)) (WhitespaceValue!9559 (value!147461 List!30255)) (True!9558) (False!9558) (Broken!23897 (value!147462 List!30255)) (Broken!23898 (value!147463 List!30255)) (True!9559) (RightBrace!4779) (RightBracket!4779) (Colon!4779) (Null!4779) (Comma!4779) (LeftBracket!4779) (False!9559) (LeftBrace!4779) (ImaginaryLiteralValue!4779 (text!33899 List!30255)) (StringLiteralValue!14337 (value!147464 List!30255)) (EOFValue!4779 (value!147465 List!30255)) (IdentValue!4779 (value!147466 List!30255)) (DelimiterValue!9559 (value!147467 List!30255)) (DedentValue!4779 (value!147468 List!30255)) (NewLineValue!4779 (value!147469 List!30255)) (IntegerValue!14337 (value!147470 (_ BitVec 32)) (text!33900 List!30255)) (IntegerValue!14338 (value!147471 Int) (text!33901 List!30255)) (Times!4779) (Or!4779) (Equal!4779) (Minus!4779) (Broken!23899 (value!147472 List!30255)) (And!4779) (Div!4779) (LessEqual!4779) (Mod!4779) (Concat!12481) (Not!4779) (Plus!4779) (SpaceValue!4779 (value!147473 List!30255)) (IntegerValue!14339 (value!147474 Int) (text!33902 List!30255)) (StringLiteralValue!14338 (text!33903 List!30255)) (FloatLiteralValue!9559 (text!33904 List!30255)) (BytesLiteralValue!4779 (value!147475 List!30255)) (CommentValue!9559 (value!147476 List!30255)) (StringLiteralValue!14339 (value!147477 List!30255)) (ErrorTokenValue!4779 (msg!4840 List!30255)) )
))
(declare-datatypes ((List!30256 0))(
  ( (Nil!30156) (Cons!30156 (h!35576 C!15560) (t!214081 List!30256)) )
))
(declare-datatypes ((IArray!18717 0))(
  ( (IArray!18718 (innerList!9416 List!30256)) )
))
(declare-datatypes ((Conc!9356 0))(
  ( (Node!9356 (left!23194 Conc!9356) (right!23524 Conc!9356) (csize!18942 Int) (cheight!9567 Int)) (Leaf!14375 (xs!12340 IArray!18717) (csize!18943 Int)) (Empty!9356) )
))
(declare-datatypes ((BalanceConc!18326 0))(
  ( (BalanceConc!18327 (c!419681 Conc!9356)) )
))
(declare-datatypes ((TokenValueInjection!8998 0))(
  ( (TokenValueInjection!8999 (toValue!6459 Int) (toChars!6318 Int)) )
))
(declare-datatypes ((String!33779 0))(
  ( (String!33780 (value!147478 String)) )
))
(declare-datatypes ((Rule!8914 0))(
  ( (Rule!8915 (regex!4557 Regex!7701) (tag!5047 String!33779) (isSeparator!4557 Bool) (transformation!4557 TokenValueInjection!8998)) )
))
(declare-datatypes ((List!30257 0))(
  ( (Nil!30157) (Cons!30157 (h!35577 Rule!8914) (t!214082 List!30257)) )
))
(declare-fun rules!1726 () List!30257)

(get-info :version)

(assert (= (and b!2610856 ((_ is Cons!30157) rules!1726)) b!2610874))

(declare-fun order!16011 () Int)

(declare-fun order!16013 () Int)

(declare-fun dynLambda!12763 (Int Int) Int)

(declare-fun dynLambda!12764 (Int Int) Int)

(assert (=> b!2610876 (< (dynLambda!12763 order!16011 (toValue!6459 (transformation!4557 (h!35577 rules!1726)))) (dynLambda!12764 order!16013 lambda!97686))))

(declare-fun order!16015 () Int)

(declare-fun dynLambda!12765 (Int Int) Int)

(assert (=> b!2610876 (< (dynLambda!12765 order!16015 (toChars!6318 (transformation!4557 (h!35577 rules!1726)))) (dynLambda!12764 order!16013 lambda!97686))))

(assert (=> b!2610856 true))

(declare-fun e!1647330 () Bool)

(declare-fun tp!829486 () Bool)

(declare-fun b!2610847 () Bool)

(declare-fun e!1647327 () Bool)

(declare-datatypes ((Token!8584 0))(
  ( (Token!8585 (value!147479 TokenValue!4779) (rule!6927 Rule!8914) (size!23352 Int) (originalCharacters!5323 List!30256)) )
))
(declare-fun separatorToken!156 () Token!8584)

(declare-fun inv!21 (TokenValue!4779) Bool)

(assert (=> b!2610847 (= e!1647327 (and (inv!21 (value!147479 separatorToken!156)) e!1647330 tp!829486))))

(declare-fun e!1647323 () Bool)

(assert (=> b!2610848 (= e!1647323 (and tp!829491 tp!829487))))

(declare-fun b!2610849 () Bool)

(declare-fun res!1098956 () Bool)

(declare-fun e!1647318 () Bool)

(assert (=> b!2610849 (=> (not res!1098956) (not e!1647318))))

(declare-datatypes ((LexerInterface!4154 0))(
  ( (LexerInterfaceExt!4151 (__x!19392 Int)) (Lexer!4152) )
))
(declare-fun thiss!14197 () LexerInterface!4154)

(declare-fun rulesProduceIndividualToken!1866 (LexerInterface!4154 List!30257 Token!8584) Bool)

(assert (=> b!2610849 (= res!1098956 (rulesProduceIndividualToken!1866 thiss!14197 rules!1726 separatorToken!156))))

(declare-fun e!1647325 () Bool)

(assert (=> b!2610850 (= e!1647325 (and tp!829490 tp!829484))))

(declare-fun res!1098955 () Bool)

(declare-fun e!1647328 () Bool)

(assert (=> start!253822 (=> (not res!1098955) (not e!1647328))))

(declare-fun from!862 () Int)

(assert (=> start!253822 (= res!1098955 (and ((_ is Lexer!4152) thiss!14197) (>= from!862 0)))))

(assert (=> start!253822 e!1647328))

(assert (=> start!253822 true))

(declare-fun e!1647319 () Bool)

(assert (=> start!253822 e!1647319))

(declare-fun inv!40810 (Token!8584) Bool)

(assert (=> start!253822 (and (inv!40810 separatorToken!156) e!1647327)))

(declare-datatypes ((List!30258 0))(
  ( (Nil!30158) (Cons!30158 (h!35578 Token!8584) (t!214083 List!30258)) )
))
(declare-datatypes ((IArray!18719 0))(
  ( (IArray!18720 (innerList!9417 List!30258)) )
))
(declare-datatypes ((Conc!9357 0))(
  ( (Node!9357 (left!23195 Conc!9357) (right!23525 Conc!9357) (csize!18944 Int) (cheight!9568 Int)) (Leaf!14376 (xs!12341 IArray!18719) (csize!18945 Int)) (Empty!9357) )
))
(declare-datatypes ((BalanceConc!18328 0))(
  ( (BalanceConc!18329 (c!419682 Conc!9357)) )
))
(declare-fun v!6381 () BalanceConc!18328)

(declare-fun e!1647324 () Bool)

(declare-fun inv!40811 (BalanceConc!18328) Bool)

(assert (=> start!253822 (and (inv!40811 v!6381) e!1647324)))

(declare-fun b!2610851 () Bool)

(declare-fun e!1647322 () Bool)

(declare-fun e!1647329 () Bool)

(assert (=> b!2610851 (= e!1647322 (not e!1647329))))

(declare-fun res!1098947 () Bool)

(assert (=> b!2610851 (=> res!1098947 e!1647329)))

(declare-fun lt!917393 () Token!8584)

(declare-fun contains!5590 (BalanceConc!18328 Token!8584) Bool)

(assert (=> b!2610851 (= res!1098947 (not (contains!5590 v!6381 lt!917393)))))

(declare-fun apply!7076 (BalanceConc!18328 Int) Token!8584)

(assert (=> b!2610851 (= lt!917393 (apply!7076 v!6381 from!862))))

(declare-fun lt!917395 () List!30258)

(declare-fun lt!917391 () List!30258)

(declare-fun tail!4190 (List!30258) List!30258)

(declare-fun drop!1553 (List!30258 Int) List!30258)

(assert (=> b!2610851 (= (tail!4190 lt!917395) (drop!1553 lt!917391 (+ 1 from!862)))))

(declare-datatypes ((Unit!44137 0))(
  ( (Unit!44138) )
))
(declare-fun lt!917394 () Unit!44137)

(declare-fun lemmaDropTail!742 (List!30258 Int) Unit!44137)

(assert (=> b!2610851 (= lt!917394 (lemmaDropTail!742 lt!917391 from!862))))

(declare-fun head!5952 (List!30258) Token!8584)

(declare-fun apply!7077 (List!30258 Int) Token!8584)

(assert (=> b!2610851 (= (head!5952 lt!917395) (apply!7077 lt!917391 from!862))))

(assert (=> b!2610851 (= lt!917395 (drop!1553 lt!917391 from!862))))

(declare-fun lt!917390 () Unit!44137)

(declare-fun lemmaDropApply!768 (List!30258 Int) Unit!44137)

(assert (=> b!2610851 (= lt!917390 (lemmaDropApply!768 lt!917391 from!862))))

(declare-fun b!2610852 () Bool)

(declare-fun res!1098953 () Bool)

(assert (=> b!2610852 (=> (not res!1098953) (not e!1647318))))

(declare-fun rulesProduceEachTokenIndividually!974 (LexerInterface!4154 List!30257 BalanceConc!18328) Bool)

(assert (=> b!2610852 (= res!1098953 (rulesProduceEachTokenIndividually!974 thiss!14197 rules!1726 v!6381))))

(declare-fun b!2610853 () Bool)

(declare-fun tp!829492 () Bool)

(declare-fun inv!40812 (Conc!9357) Bool)

(assert (=> b!2610853 (= e!1647324 (and (inv!40812 (c!419682 v!6381)) tp!829492))))

(declare-fun b!2610854 () Bool)

(assert (=> b!2610854 (= e!1647318 e!1647322)))

(declare-fun res!1098946 () Bool)

(assert (=> b!2610854 (=> (not res!1098946) (not e!1647322))))

(declare-fun lt!917392 () Int)

(assert (=> b!2610854 (= res!1098946 (< from!862 lt!917392))))

(declare-fun lt!917396 () Unit!44137)

(declare-fun lemmaContentSubsetPreservesForall!226 (List!30258 List!30258 Int) Unit!44137)

(declare-fun dropList!860 (BalanceConc!18328 Int) List!30258)

(assert (=> b!2610854 (= lt!917396 (lemmaContentSubsetPreservesForall!226 lt!917391 (dropList!860 v!6381 from!862) lambda!97685))))

(declare-fun list!11319 (BalanceConc!18328) List!30258)

(assert (=> b!2610854 (= lt!917391 (list!11319 v!6381))))

(declare-fun tp!829489 () Bool)

(declare-fun e!1647326 () Bool)

(declare-fun b!2610855 () Bool)

(declare-fun inv!40805 (String!33779) Bool)

(declare-fun inv!40813 (TokenValueInjection!8998) Bool)

(assert (=> b!2610855 (= e!1647326 (and tp!829489 (inv!40805 (tag!5047 (h!35577 rules!1726))) (inv!40813 (transformation!4557 (h!35577 rules!1726))) e!1647323))))

(assert (=> b!2610856 (= e!1647329 (and (>= (+ 1 from!862) 0) (<= (+ 1 from!862) lt!917392)))))

(declare-fun lt!917397 () Unit!44137)

(declare-fun forallContained!913 (List!30258 Int Token!8584) Unit!44137)

(assert (=> b!2610856 (= lt!917397 (forallContained!913 lt!917391 lambda!97686 lt!917393))))

(declare-fun b!2610857 () Bool)

(declare-fun res!1098954 () Bool)

(assert (=> b!2610857 (=> res!1098954 e!1647329)))

(declare-fun contains!5591 (List!30258 Token!8584) Bool)

(assert (=> b!2610857 (= res!1098954 (not (contains!5591 lt!917391 lt!917393)))))

(declare-fun tp!829488 () Bool)

(declare-fun b!2610858 () Bool)

(assert (=> b!2610858 (= e!1647330 (and tp!829488 (inv!40805 (tag!5047 (rule!6927 separatorToken!156))) (inv!40813 (transformation!4557 (rule!6927 separatorToken!156))) e!1647325))))

(declare-fun b!2610859 () Bool)

(declare-fun res!1098950 () Bool)

(assert (=> b!2610859 (=> (not res!1098950) (not e!1647318))))

(assert (=> b!2610859 (= res!1098950 (isSeparator!4557 (rule!6927 separatorToken!156)))))

(declare-fun b!2610860 () Bool)

(declare-fun res!1098949 () Bool)

(assert (=> b!2610860 (=> (not res!1098949) (not e!1647318))))

(declare-fun isEmpty!17234 (List!30257) Bool)

(assert (=> b!2610860 (= res!1098949 (not (isEmpty!17234 rules!1726)))))

(declare-fun b!2610861 () Bool)

(declare-fun tp!829485 () Bool)

(assert (=> b!2610861 (= e!1647319 (and e!1647326 tp!829485))))

(declare-fun b!2610862 () Bool)

(declare-fun res!1098948 () Bool)

(assert (=> b!2610862 (=> (not res!1098948) (not e!1647318))))

(declare-fun rulesInvariant!3654 (LexerInterface!4154 List!30257) Bool)

(assert (=> b!2610862 (= res!1098948 (rulesInvariant!3654 thiss!14197 rules!1726))))

(declare-fun b!2610863 () Bool)

(assert (=> b!2610863 (= e!1647328 e!1647318)))

(declare-fun res!1098957 () Bool)

(assert (=> b!2610863 (=> (not res!1098957) (not e!1647318))))

(assert (=> b!2610863 (= res!1098957 (<= from!862 lt!917392))))

(declare-fun size!23353 (BalanceConc!18328) Int)

(assert (=> b!2610863 (= lt!917392 (size!23353 v!6381))))

(declare-fun res!1098951 () Bool)

(assert (=> b!2610864 (=> (not res!1098951) (not e!1647318))))

(declare-fun forall!6253 (BalanceConc!18328 Int) Bool)

(assert (=> b!2610864 (= res!1098951 (forall!6253 v!6381 lambda!97685))))

(declare-fun b!2610865 () Bool)

(declare-fun res!1098952 () Bool)

(assert (=> b!2610865 (=> (not res!1098952) (not e!1647318))))

(declare-fun sepAndNonSepRulesDisjointChars!1130 (List!30257 List!30257) Bool)

(assert (=> b!2610865 (= res!1098952 (sepAndNonSepRulesDisjointChars!1130 rules!1726 rules!1726))))

(assert (= (and start!253822 res!1098955) b!2610863))

(assert (= (and b!2610863 res!1098957) b!2610860))

(assert (= (and b!2610860 res!1098949) b!2610862))

(assert (= (and b!2610862 res!1098948) b!2610852))

(assert (= (and b!2610852 res!1098953) b!2610849))

(assert (= (and b!2610849 res!1098956) b!2610859))

(assert (= (and b!2610859 res!1098950) b!2610864))

(assert (= (and b!2610864 res!1098951) b!2610865))

(assert (= (and b!2610865 res!1098952) b!2610854))

(assert (= (and b!2610854 res!1098946) b!2610851))

(assert (= (and b!2610851 (not res!1098947)) b!2610857))

(assert (= (and b!2610857 (not res!1098954)) b!2610856))

(assert (= b!2610855 b!2610848))

(assert (= b!2610861 b!2610855))

(assert (= (and start!253822 ((_ is Cons!30157) rules!1726)) b!2610861))

(assert (= b!2610858 b!2610850))

(assert (= b!2610847 b!2610858))

(assert (= start!253822 b!2610847))

(assert (= start!253822 b!2610853))

(declare-fun m!2945411 () Bool)

(assert (=> b!2610864 m!2945411))

(declare-fun m!2945413 () Bool)

(assert (=> b!2610851 m!2945413))

(declare-fun m!2945415 () Bool)

(assert (=> b!2610851 m!2945415))

(declare-fun m!2945417 () Bool)

(assert (=> b!2610851 m!2945417))

(declare-fun m!2945419 () Bool)

(assert (=> b!2610851 m!2945419))

(declare-fun m!2945421 () Bool)

(assert (=> b!2610851 m!2945421))

(declare-fun m!2945423 () Bool)

(assert (=> b!2610851 m!2945423))

(declare-fun m!2945425 () Bool)

(assert (=> b!2610851 m!2945425))

(declare-fun m!2945427 () Bool)

(assert (=> b!2610851 m!2945427))

(declare-fun m!2945429 () Bool)

(assert (=> b!2610851 m!2945429))

(declare-fun m!2945431 () Bool)

(assert (=> b!2610865 m!2945431))

(declare-fun m!2945433 () Bool)

(assert (=> b!2610853 m!2945433))

(declare-fun m!2945435 () Bool)

(assert (=> b!2610856 m!2945435))

(declare-fun m!2945437 () Bool)

(assert (=> b!2610847 m!2945437))

(declare-fun m!2945439 () Bool)

(assert (=> b!2610862 m!2945439))

(declare-fun m!2945441 () Bool)

(assert (=> b!2610860 m!2945441))

(declare-fun m!2945443 () Bool)

(assert (=> b!2610863 m!2945443))

(declare-fun m!2945445 () Bool)

(assert (=> b!2610854 m!2945445))

(assert (=> b!2610854 m!2945445))

(declare-fun m!2945447 () Bool)

(assert (=> b!2610854 m!2945447))

(declare-fun m!2945449 () Bool)

(assert (=> b!2610854 m!2945449))

(declare-fun m!2945451 () Bool)

(assert (=> b!2610849 m!2945451))

(declare-fun m!2945453 () Bool)

(assert (=> b!2610855 m!2945453))

(declare-fun m!2945455 () Bool)

(assert (=> b!2610855 m!2945455))

(declare-fun m!2945457 () Bool)

(assert (=> start!253822 m!2945457))

(declare-fun m!2945459 () Bool)

(assert (=> start!253822 m!2945459))

(declare-fun m!2945461 () Bool)

(assert (=> b!2610858 m!2945461))

(declare-fun m!2945463 () Bool)

(assert (=> b!2610858 m!2945463))

(declare-fun m!2945465 () Bool)

(assert (=> b!2610852 m!2945465))

(declare-fun m!2945467 () Bool)

(assert (=> b!2610857 m!2945467))

(check-sat (not b_next!74107) (not b!2610855) (not b_next!74101) (not b!2610852) (not b_next!74105) b_and!190967 (not b!2610863) (not b!2610864) (not b!2610856) (not b!2610865) (not b!2610874) (not b!2610857) (not b!2610851) (not b!2610861) (not b!2610849) (not b!2610858) (not start!253822) (not b!2610860) (not b_next!74103) (not b!2610847) (not b!2610862) b_and!190969 (not b!2610853) b_and!190963 b_and!190965 (not b!2610854))
(check-sat (not b_next!74107) (not b_next!74101) (not b_next!74103) b_and!190969 (not b_next!74105) b_and!190963 b_and!190967 b_and!190965)
