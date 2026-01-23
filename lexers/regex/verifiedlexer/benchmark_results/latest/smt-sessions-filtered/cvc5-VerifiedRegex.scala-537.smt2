; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!14636 () Bool)

(assert start!14636)

(declare-fun b_free!4413 () Bool)

(declare-fun b_next!4413 () Bool)

(assert (=> start!14636 (= b_free!4413 (not b_next!4413))))

(declare-fun tp!73373 () Bool)

(declare-fun b_and!6693 () Bool)

(assert (=> start!14636 (= tp!73373 b_and!6693)))

(declare-fun b!139545 () Bool)

(declare-fun b_free!4415 () Bool)

(declare-fun b_next!4415 () Bool)

(assert (=> b!139545 (= b_free!4415 (not b_next!4415))))

(declare-fun tp!73371 () Bool)

(declare-fun b_and!6695 () Bool)

(assert (=> b!139545 (= tp!73371 b_and!6695)))

(declare-fun b_free!4417 () Bool)

(declare-fun b_next!4417 () Bool)

(assert (=> b!139545 (= b_free!4417 (not b_next!4417))))

(declare-fun tp!73383 () Bool)

(declare-fun b_and!6697 () Bool)

(assert (=> b!139545 (= tp!73383 b_and!6697)))

(declare-fun b!139547 () Bool)

(declare-fun b_free!4419 () Bool)

(declare-fun b_next!4419 () Bool)

(assert (=> b!139547 (= b_free!4419 (not b_next!4419))))

(declare-fun tp!73382 () Bool)

(declare-fun b_and!6699 () Bool)

(assert (=> b!139547 (= tp!73382 b_and!6699)))

(declare-fun b_free!4421 () Bool)

(declare-fun b_next!4421 () Bool)

(assert (=> b!139547 (= b_free!4421 (not b_next!4421))))

(declare-fun tp!73380 () Bool)

(declare-fun b_and!6701 () Bool)

(assert (=> b!139547 (= tp!73380 b_and!6701)))

(declare-fun b!139546 () Bool)

(declare-fun b_free!4423 () Bool)

(declare-fun b_next!4423 () Bool)

(assert (=> b!139546 (= b_free!4423 (not b_next!4423))))

(declare-fun tp!73384 () Bool)

(declare-fun b_and!6703 () Bool)

(assert (=> b!139546 (= tp!73384 b_and!6703)))

(declare-fun b_free!4425 () Bool)

(declare-fun b_next!4425 () Bool)

(assert (=> b!139546 (= b_free!4425 (not b_next!4425))))

(declare-fun tp!73376 () Bool)

(declare-fun b_and!6705 () Bool)

(assert (=> b!139546 (= tp!73376 b_and!6705)))

(declare-fun e!82012 () Bool)

(declare-fun b!139541 () Bool)

(declare-datatypes ((List!2381 0))(
  ( (Nil!2371) (Cons!2371 (h!7768 (_ BitVec 16)) (t!23171 List!2381)) )
))
(declare-datatypes ((TokenValue!418 0))(
  ( (FloatLiteralValue!836 (text!3371 List!2381)) (TokenValueExt!417 (__x!2323 Int)) (Broken!2090 (value!15577 List!2381)) (Object!427) (End!418) (Def!418) (Underscore!418) (Match!418) (Else!418) (Error!418) (Case!418) (If!418) (Extends!418) (Abstract!418) (Class!418) (Val!418) (DelimiterValue!836 (del!478 List!2381)) (KeywordValue!424 (value!15578 List!2381)) (CommentValue!836 (value!15579 List!2381)) (WhitespaceValue!836 (value!15580 List!2381)) (IndentationValue!418 (value!15581 List!2381)) (String!3171) (Int32!418) (Broken!2091 (value!15582 List!2381)) (Boolean!419) (Unit!1802) (OperatorValue!421 (op!478 List!2381)) (IdentifierValue!836 (value!15583 List!2381)) (IdentifierValue!837 (value!15584 List!2381)) (WhitespaceValue!837 (value!15585 List!2381)) (True!836) (False!836) (Broken!2092 (value!15586 List!2381)) (Broken!2093 (value!15587 List!2381)) (True!837) (RightBrace!418) (RightBracket!418) (Colon!418) (Null!418) (Comma!418) (LeftBracket!418) (False!837) (LeftBrace!418) (ImaginaryLiteralValue!418 (text!3372 List!2381)) (StringLiteralValue!1254 (value!15588 List!2381)) (EOFValue!418 (value!15589 List!2381)) (IdentValue!418 (value!15590 List!2381)) (DelimiterValue!837 (value!15591 List!2381)) (DedentValue!418 (value!15592 List!2381)) (NewLineValue!418 (value!15593 List!2381)) (IntegerValue!1254 (value!15594 (_ BitVec 32)) (text!3373 List!2381)) (IntegerValue!1255 (value!15595 Int) (text!3374 List!2381)) (Times!418) (Or!418) (Equal!418) (Minus!418) (Broken!2094 (value!15596 List!2381)) (And!418) (Div!418) (LessEqual!418) (Mod!418) (Concat!1038) (Not!418) (Plus!418) (SpaceValue!418 (value!15597 List!2381)) (IntegerValue!1256 (value!15598 Int) (text!3375 List!2381)) (StringLiteralValue!1255 (text!3376 List!2381)) (FloatLiteralValue!837 (text!3377 List!2381)) (BytesLiteralValue!418 (value!15599 List!2381)) (CommentValue!837 (value!15600 List!2381)) (StringLiteralValue!1256 (value!15601 List!2381)) (ErrorTokenValue!418 (msg!479 List!2381)) )
))
(declare-datatypes ((C!2162 0))(
  ( (C!2163 (val!967 Int)) )
))
(declare-datatypes ((List!2382 0))(
  ( (Nil!2372) (Cons!2372 (h!7769 C!2162) (t!23172 List!2382)) )
))
(declare-datatypes ((IArray!1253 0))(
  ( (IArray!1254 (innerList!684 List!2382)) )
))
(declare-datatypes ((Conc!626 0))(
  ( (Node!626 (left!1811 Conc!626) (right!2141 Conc!626) (csize!1482 Int) (cheight!837 Int)) (Leaf!1164 (xs!3221 IArray!1253) (csize!1483 Int)) (Empty!626) )
))
(declare-datatypes ((BalanceConc!1260 0))(
  ( (BalanceConc!1261 (c!29170 Conc!626)) )
))
(declare-datatypes ((Regex!620 0))(
  ( (ElementMatch!620 (c!29171 C!2162)) (Concat!1039 (regOne!1752 Regex!620) (regTwo!1752 Regex!620)) (EmptyExpr!620) (Star!620 (reg!949 Regex!620)) (EmptyLang!620) (Union!620 (regOne!1753 Regex!620) (regTwo!1753 Regex!620)) )
))
(declare-datatypes ((String!3172 0))(
  ( (String!3173 (value!15602 String)) )
))
(declare-datatypes ((TokenValueInjection!608 0))(
  ( (TokenValueInjection!609 (toValue!1007 Int) (toChars!866 Int)) )
))
(declare-datatypes ((Rule!592 0))(
  ( (Rule!593 (regex!396 Regex!620) (tag!574 String!3172) (isSeparator!396 Bool) (transformation!396 TokenValueInjection!608)) )
))
(declare-datatypes ((List!2383 0))(
  ( (Nil!2373) (Cons!2373 (h!7770 Rule!592) (t!23173 List!2383)) )
))
(declare-fun rules!4268 () List!2383)

(declare-fun tp!73377 () Bool)

(declare-fun e!82015 () Bool)

(declare-fun inv!3119 (String!3172) Bool)

(declare-fun inv!3122 (TokenValueInjection!608) Bool)

(assert (=> b!139541 (= e!82015 (and tp!73377 (inv!3119 (tag!574 (h!7770 rules!4268))) (inv!3122 (transformation!396 (h!7770 rules!4268))) e!82012))))

(declare-fun tp!73374 () Bool)

(declare-fun e!82008 () Bool)

(declare-fun e!82016 () Bool)

(declare-datatypes ((Token!536 0))(
  ( (Token!537 (value!15603 TokenValue!418) (rule!903 Rule!592) (size!2088 Int) (originalCharacters!439 List!2382)) )
))
(declare-datatypes ((List!2384 0))(
  ( (Nil!2374) (Cons!2374 (h!7771 Token!536) (t!23174 List!2384)) )
))
(declare-fun l1!3130 () List!2384)

(declare-fun b!139542 () Bool)

(declare-fun inv!21 (TokenValue!418) Bool)

(assert (=> b!139542 (= e!82016 (and (inv!21 (value!15603 (h!7771 l1!3130))) e!82008 tp!73374))))

(declare-fun b!139543 () Bool)

(declare-fun res!64972 () Bool)

(declare-fun e!82020 () Bool)

(assert (=> b!139543 (=> (not res!64972) (not e!82020))))

(declare-datatypes ((LexerInterface!282 0))(
  ( (LexerInterfaceExt!279 (__x!2324 Int)) (Lexer!280) )
))
(declare-fun thiss!27322 () LexerInterface!282)

(declare-fun p!3028 () Int)

(declare-fun l2!3099 () List!2384)

(declare-fun tokensListTwoByTwoPredicateList!21 (LexerInterface!282 List!2384 List!2383 Int) Bool)

(assert (=> b!139543 (= res!64972 (tokensListTwoByTwoPredicateList!21 thiss!27322 l2!3099 rules!4268 p!3028))))

(declare-fun tp!73372 () Bool)

(declare-fun b!139544 () Bool)

(declare-fun e!82009 () Bool)

(declare-fun e!82006 () Bool)

(assert (=> b!139544 (= e!82009 (and (inv!21 (value!15603 (h!7771 l2!3099))) e!82006 tp!73372))))

(declare-fun e!82014 () Bool)

(assert (=> b!139545 (= e!82014 (and tp!73371 tp!73383))))

(assert (=> b!139546 (= e!82012 (and tp!73384 tp!73376))))

(declare-fun res!64974 () Bool)

(assert (=> start!14636 (=> (not res!64974) (not e!82020))))

(assert (=> start!14636 (= res!64974 (is-Lexer!280 thiss!27322))))

(assert (=> start!14636 e!82020))

(assert (=> start!14636 true))

(declare-fun e!82017 () Bool)

(assert (=> start!14636 e!82017))

(assert (=> start!14636 tp!73373))

(declare-fun e!82011 () Bool)

(assert (=> start!14636 e!82011))

(declare-fun e!82023 () Bool)

(assert (=> start!14636 e!82023))

(declare-fun e!82010 () Bool)

(assert (=> b!139547 (= e!82010 (and tp!73382 tp!73380))))

(declare-fun b!139548 () Bool)

(declare-fun tp!73370 () Bool)

(assert (=> b!139548 (= e!82006 (and tp!73370 (inv!3119 (tag!574 (rule!903 (h!7771 l2!3099)))) (inv!3122 (transformation!396 (rule!903 (h!7771 l2!3099)))) e!82010))))

(declare-fun b!139549 () Bool)

(declare-fun res!64976 () Bool)

(declare-fun e!82018 () Bool)

(assert (=> b!139549 (=> (not res!64976) (not e!82018))))

(assert (=> b!139549 (= res!64976 (is-Cons!2374 l1!3130))))

(declare-fun b!139550 () Bool)

(declare-fun tp!73381 () Bool)

(assert (=> b!139550 (= e!82017 (and e!82015 tp!73381))))

(declare-fun b!139551 () Bool)

(declare-fun res!64971 () Bool)

(assert (=> b!139551 (=> (not res!64971) (not e!82018))))

(assert (=> b!139551 (= res!64971 (tokensListTwoByTwoPredicateList!21 thiss!27322 (t!23174 l1!3130) rules!4268 p!3028))))

(declare-fun b!139552 () Bool)

(declare-fun res!64968 () Bool)

(assert (=> b!139552 (=> (not res!64968) (not e!82020))))

(assert (=> b!139552 (= res!64968 (tokensListTwoByTwoPredicateList!21 thiss!27322 l1!3130 rules!4268 p!3028))))

(declare-fun lt!41095 () Token!536)

(declare-fun b!139553 () Bool)

(declare-fun dynLambda!784 (Int Token!536 Token!536 List!2383) Bool)

(declare-fun last!30 (List!2384) Token!536)

(assert (=> b!139553 (= e!82018 (not (dynLambda!784 p!3028 (last!30 (t!23174 l1!3130)) lt!41095 rules!4268)))))

(declare-fun b!139554 () Bool)

(declare-fun tp!73378 () Bool)

(assert (=> b!139554 (= e!82008 (and tp!73378 (inv!3119 (tag!574 (rule!903 (h!7771 l1!3130)))) (inv!3122 (transformation!396 (rule!903 (h!7771 l1!3130)))) e!82014))))

(declare-fun b!139555 () Bool)

(declare-fun res!64973 () Bool)

(assert (=> b!139555 (=> (not res!64973) (not e!82020))))

(declare-fun isEmpty!905 (List!2384) Bool)

(assert (=> b!139555 (= res!64973 (not (isEmpty!905 l1!3130)))))

(declare-fun tp!73375 () Bool)

(declare-fun b!139556 () Bool)

(declare-fun inv!3123 (Token!536) Bool)

(assert (=> b!139556 (= e!82023 (and (inv!3123 (h!7771 l2!3099)) e!82009 tp!73375))))

(declare-fun b!139557 () Bool)

(declare-fun res!64975 () Bool)

(assert (=> b!139557 (=> (not res!64975) (not e!82018))))

(assert (=> b!139557 (= res!64975 (not (isEmpty!905 (t!23174 l1!3130))))))

(declare-fun b!139558 () Bool)

(assert (=> b!139558 (= e!82020 e!82018)))

(declare-fun res!64970 () Bool)

(assert (=> b!139558 (=> (not res!64970) (not e!82018))))

(assert (=> b!139558 (= res!64970 (dynLambda!784 p!3028 (last!30 l1!3130) lt!41095 rules!4268))))

(declare-fun head!555 (List!2384) Token!536)

(assert (=> b!139558 (= lt!41095 (head!555 l2!3099))))

(declare-fun b!139559 () Bool)

(declare-fun res!64969 () Bool)

(assert (=> b!139559 (=> (not res!64969) (not e!82020))))

(assert (=> b!139559 (= res!64969 (not (isEmpty!905 l2!3099)))))

(declare-fun tp!73379 () Bool)

(declare-fun b!139560 () Bool)

(assert (=> b!139560 (= e!82011 (and (inv!3123 (h!7771 l1!3130)) e!82016 tp!73379))))

(assert (= (and start!14636 res!64974) b!139552))

(assert (= (and b!139552 res!64968) b!139543))

(assert (= (and b!139543 res!64972) b!139555))

(assert (= (and b!139555 res!64973) b!139559))

(assert (= (and b!139559 res!64969) b!139558))

(assert (= (and b!139558 res!64970) b!139549))

(assert (= (and b!139549 res!64976) b!139557))

(assert (= (and b!139557 res!64975) b!139551))

(assert (= (and b!139551 res!64971) b!139553))

(assert (= b!139541 b!139546))

(assert (= b!139550 b!139541))

(assert (= (and start!14636 (is-Cons!2373 rules!4268)) b!139550))

(assert (= b!139554 b!139545))

(assert (= b!139542 b!139554))

(assert (= b!139560 b!139542))

(assert (= (and start!14636 (is-Cons!2374 l1!3130)) b!139560))

(assert (= b!139548 b!139547))

(assert (= b!139544 b!139548))

(assert (= b!139556 b!139544))

(assert (= (and start!14636 (is-Cons!2374 l2!3099)) b!139556))

(declare-fun b_lambda!1887 () Bool)

(assert (=> (not b_lambda!1887) (not b!139553)))

(declare-fun t!23168 () Bool)

(declare-fun tb!3869 () Bool)

(assert (=> (and start!14636 (= p!3028 p!3028) t!23168) tb!3869))

(declare-fun result!6020 () Bool)

(assert (=> tb!3869 (= result!6020 true)))

(assert (=> b!139553 t!23168))

(declare-fun b_and!6707 () Bool)

(assert (= b_and!6693 (and (=> t!23168 result!6020) b_and!6707)))

(declare-fun b_lambda!1889 () Bool)

(assert (=> (not b_lambda!1889) (not b!139558)))

(declare-fun t!23170 () Bool)

(declare-fun tb!3871 () Bool)

(assert (=> (and start!14636 (= p!3028 p!3028) t!23170) tb!3871))

(declare-fun result!6022 () Bool)

(assert (=> tb!3871 (= result!6022 true)))

(assert (=> b!139558 t!23170))

(declare-fun b_and!6709 () Bool)

(assert (= b_and!6707 (and (=> t!23170 result!6022) b_and!6709)))

(declare-fun m!123007 () Bool)

(assert (=> b!139542 m!123007))

(declare-fun m!123009 () Bool)

(assert (=> b!139557 m!123009))

(declare-fun m!123011 () Bool)

(assert (=> b!139560 m!123011))

(declare-fun m!123013 () Bool)

(assert (=> b!139558 m!123013))

(assert (=> b!139558 m!123013))

(declare-fun m!123015 () Bool)

(assert (=> b!139558 m!123015))

(declare-fun m!123017 () Bool)

(assert (=> b!139558 m!123017))

(declare-fun m!123019 () Bool)

(assert (=> b!139554 m!123019))

(declare-fun m!123021 () Bool)

(assert (=> b!139554 m!123021))

(declare-fun m!123023 () Bool)

(assert (=> b!139544 m!123023))

(declare-fun m!123025 () Bool)

(assert (=> b!139541 m!123025))

(declare-fun m!123027 () Bool)

(assert (=> b!139541 m!123027))

(declare-fun m!123029 () Bool)

(assert (=> b!139551 m!123029))

(declare-fun m!123031 () Bool)

(assert (=> b!139552 m!123031))

(declare-fun m!123033 () Bool)

(assert (=> b!139556 m!123033))

(declare-fun m!123035 () Bool)

(assert (=> b!139553 m!123035))

(assert (=> b!139553 m!123035))

(declare-fun m!123037 () Bool)

(assert (=> b!139553 m!123037))

(declare-fun m!123039 () Bool)

(assert (=> b!139555 m!123039))

(declare-fun m!123041 () Bool)

(assert (=> b!139543 m!123041))

(declare-fun m!123043 () Bool)

(assert (=> b!139548 m!123043))

(declare-fun m!123045 () Bool)

(assert (=> b!139548 m!123045))

(declare-fun m!123047 () Bool)

(assert (=> b!139559 m!123047))

(push 1)

(assert (not b_next!4425))

(assert (not b_next!4415))

(assert (not b!139550))

(assert (not b_lambda!1887))

(assert b_and!6709)

(assert b_and!6703)

(assert (not b!139557))

(assert (not b_next!4419))

(assert (not b_next!4423))

(assert (not b!139544))

(assert b_and!6695)

(assert (not b!139555))

(assert (not b!139558))

(assert (not b!139560))

(assert (not b!139551))

(assert (not b!139548))

(assert (not b_next!4421))

(assert (not b_next!4413))

(assert (not b!139541))

(assert (not b_lambda!1889))

(assert (not b!139554))

(assert (not b!139556))

(assert (not b!139559))

(assert (not b!139543))

(assert (not b!139553))

(assert (not b_next!4417))

(assert b_and!6697)

(assert b_and!6701)

(assert (not b!139542))

(assert b_and!6705)

(assert b_and!6699)

(assert (not b!139552))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!4425))

(assert (not b_next!4415))

(assert b_and!6709)

(assert b_and!6703)

(assert (not b_next!4419))

(assert (not b_next!4423))

(assert b_and!6695)

(assert b_and!6699)

(assert (not b_next!4421))

(assert (not b_next!4413))

(assert (not b_next!4417))

(assert b_and!6697)

(assert b_and!6701)

(assert b_and!6705)

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!1895 () Bool)

(assert (= b_lambda!1889 (or (and start!14636 b_free!4413) b_lambda!1895)))

(declare-fun b_lambda!1897 () Bool)

(assert (= b_lambda!1887 (or (and start!14636 b_free!4413) b_lambda!1897)))

(push 1)

(assert (not b_next!4425))

(assert (not b_next!4415))

(assert (not b!139550))

(assert b_and!6709)

(assert b_and!6703)

(assert (not b!139557))

(assert (not b!139554))

(assert (not b_next!4423))

(assert (not b!139544))

(assert b_and!6695)

(assert (not b!139555))

(assert (not b!139558))

(assert (not b!139551))

(assert (not b!139548))

(assert (not b_next!4421))

(assert (not b_next!4413))

(assert (not b!139541))

(assert (not b_next!4419))

(assert (not b_lambda!1897))

(assert (not b!139556))

(assert (not b!139559))

(assert (not b!139543))

(assert (not b!139553))

(assert (not b_next!4417))

(assert b_and!6697)

(assert b_and!6701)

(assert (not b!139542))

(assert b_and!6705)

(assert b_and!6699)

(assert (not b!139552))

(assert (not b_lambda!1895))

(assert (not b!139560))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!4425))

(assert (not b_next!4415))

(assert b_and!6709)

(assert b_and!6703)

(assert (not b_next!4419))

(assert (not b_next!4423))

(assert b_and!6695)

(assert b_and!6699)

(assert (not b_next!4421))

(assert (not b_next!4413))

(assert (not b_next!4417))

(assert b_and!6697)

(assert b_and!6701)

(assert b_and!6705)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!33150 () Bool)

(declare-fun res!65018 () Bool)

(declare-fun e!82080 () Bool)

(assert (=> d!33150 (=> (not res!65018) (not e!82080))))

(declare-fun isEmpty!907 (List!2382) Bool)

(assert (=> d!33150 (= res!65018 (not (isEmpty!907 (originalCharacters!439 (h!7771 l1!3130)))))))

(assert (=> d!33150 (= (inv!3123 (h!7771 l1!3130)) e!82080)))

(declare-fun b!139625 () Bool)

(declare-fun res!65019 () Bool)

(assert (=> b!139625 (=> (not res!65019) (not e!82080))))

(declare-fun list!832 (BalanceConc!1260) List!2382)

(declare-fun dynLambda!786 (Int TokenValue!418) BalanceConc!1260)

(assert (=> b!139625 (= res!65019 (= (originalCharacters!439 (h!7771 l1!3130)) (list!832 (dynLambda!786 (toChars!866 (transformation!396 (rule!903 (h!7771 l1!3130)))) (value!15603 (h!7771 l1!3130))))))))

(declare-fun b!139626 () Bool)

(declare-fun size!2090 (List!2382) Int)

(assert (=> b!139626 (= e!82080 (= (size!2088 (h!7771 l1!3130)) (size!2090 (originalCharacters!439 (h!7771 l1!3130)))))))

(assert (= (and d!33150 res!65018) b!139625))

(assert (= (and b!139625 res!65019) b!139626))

(declare-fun b_lambda!1899 () Bool)

(assert (=> (not b_lambda!1899) (not b!139625)))

(declare-fun t!23184 () Bool)

(declare-fun tb!3877 () Bool)

(assert (=> (and b!139545 (= (toChars!866 (transformation!396 (rule!903 (h!7771 l1!3130)))) (toChars!866 (transformation!396 (rule!903 (h!7771 l1!3130))))) t!23184) tb!3877))

(declare-fun b!139631 () Bool)

(declare-fun e!82083 () Bool)

(declare-fun tp!73432 () Bool)

(declare-fun inv!3126 (Conc!626) Bool)

(assert (=> b!139631 (= e!82083 (and (inv!3126 (c!29170 (dynLambda!786 (toChars!866 (transformation!396 (rule!903 (h!7771 l1!3130)))) (value!15603 (h!7771 l1!3130))))) tp!73432))))

(declare-fun result!6028 () Bool)

(declare-fun inv!3127 (BalanceConc!1260) Bool)

(assert (=> tb!3877 (= result!6028 (and (inv!3127 (dynLambda!786 (toChars!866 (transformation!396 (rule!903 (h!7771 l1!3130)))) (value!15603 (h!7771 l1!3130)))) e!82083))))

(assert (= tb!3877 b!139631))

(declare-fun m!123091 () Bool)

(assert (=> b!139631 m!123091))

(declare-fun m!123093 () Bool)

(assert (=> tb!3877 m!123093))

(assert (=> b!139625 t!23184))

(declare-fun b_and!6729 () Bool)

(assert (= b_and!6697 (and (=> t!23184 result!6028) b_and!6729)))

(declare-fun tb!3879 () Bool)

(declare-fun t!23186 () Bool)

(assert (=> (and b!139547 (= (toChars!866 (transformation!396 (rule!903 (h!7771 l2!3099)))) (toChars!866 (transformation!396 (rule!903 (h!7771 l1!3130))))) t!23186) tb!3879))

(declare-fun result!6032 () Bool)

(assert (= result!6032 result!6028))

(assert (=> b!139625 t!23186))

(declare-fun b_and!6731 () Bool)

(assert (= b_and!6701 (and (=> t!23186 result!6032) b_and!6731)))

(declare-fun t!23188 () Bool)

(declare-fun tb!3881 () Bool)

(assert (=> (and b!139546 (= (toChars!866 (transformation!396 (h!7770 rules!4268))) (toChars!866 (transformation!396 (rule!903 (h!7771 l1!3130))))) t!23188) tb!3881))

(declare-fun result!6034 () Bool)

(assert (= result!6034 result!6028))

(assert (=> b!139625 t!23188))

(declare-fun b_and!6733 () Bool)

(assert (= b_and!6705 (and (=> t!23188 result!6034) b_and!6733)))

(declare-fun m!123095 () Bool)

(assert (=> d!33150 m!123095))

(declare-fun m!123097 () Bool)

(assert (=> b!139625 m!123097))

(assert (=> b!139625 m!123097))

(declare-fun m!123099 () Bool)

(assert (=> b!139625 m!123099))

(declare-fun m!123101 () Bool)

(assert (=> b!139626 m!123101))

(assert (=> b!139560 d!33150))

(declare-fun d!33152 () Bool)

(assert (=> d!33152 (= (isEmpty!905 l2!3099) (is-Nil!2374 l2!3099))))

(assert (=> b!139559 d!33152))

(declare-fun d!33154 () Bool)

(assert (=> d!33154 (= (isEmpty!905 (t!23174 l1!3130)) (is-Nil!2374 (t!23174 l1!3130)))))

(assert (=> b!139557 d!33154))

(declare-fun d!33156 () Bool)

(assert (=> d!33156 (= (inv!3119 (tag!574 (rule!903 (h!7771 l2!3099)))) (= (mod (str.len (value!15602 (tag!574 (rule!903 (h!7771 l2!3099))))) 2) 0))))

(assert (=> b!139548 d!33156))

(declare-fun d!33158 () Bool)

(declare-fun res!65022 () Bool)

(declare-fun e!82086 () Bool)

(assert (=> d!33158 (=> (not res!65022) (not e!82086))))

(declare-fun semiInverseModEq!130 (Int Int) Bool)

(assert (=> d!33158 (= res!65022 (semiInverseModEq!130 (toChars!866 (transformation!396 (rule!903 (h!7771 l2!3099)))) (toValue!1007 (transformation!396 (rule!903 (h!7771 l2!3099))))))))

(assert (=> d!33158 (= (inv!3122 (transformation!396 (rule!903 (h!7771 l2!3099)))) e!82086)))

(declare-fun b!139634 () Bool)

(declare-fun equivClasses!113 (Int Int) Bool)

(assert (=> b!139634 (= e!82086 (equivClasses!113 (toChars!866 (transformation!396 (rule!903 (h!7771 l2!3099)))) (toValue!1007 (transformation!396 (rule!903 (h!7771 l2!3099))))))))

(assert (= (and d!33158 res!65022) b!139634))

(declare-fun m!123103 () Bool)

(assert (=> d!33158 m!123103))

(declare-fun m!123105 () Bool)

(assert (=> b!139634 m!123105))

(assert (=> b!139548 d!33158))

(declare-fun d!33160 () Bool)

(declare-fun lt!41101 () Token!536)

(declare-fun contains!377 (List!2384 Token!536) Bool)

(assert (=> d!33160 (contains!377 l1!3130 lt!41101)))

(declare-fun e!82089 () Token!536)

(assert (=> d!33160 (= lt!41101 e!82089)))

(declare-fun c!29176 () Bool)

(assert (=> d!33160 (= c!29176 (and (is-Cons!2374 l1!3130) (is-Nil!2374 (t!23174 l1!3130))))))

(assert (=> d!33160 (not (isEmpty!905 l1!3130))))

(assert (=> d!33160 (= (last!30 l1!3130) lt!41101)))

(declare-fun b!139639 () Bool)

(assert (=> b!139639 (= e!82089 (h!7771 l1!3130))))

(declare-fun b!139640 () Bool)

(assert (=> b!139640 (= e!82089 (last!30 (t!23174 l1!3130)))))

(assert (= (and d!33160 c!29176) b!139639))

(assert (= (and d!33160 (not c!29176)) b!139640))

(declare-fun m!123107 () Bool)

(assert (=> d!33160 m!123107))

(assert (=> d!33160 m!123039))

(assert (=> b!139640 m!123035))

(assert (=> b!139558 d!33160))

(declare-fun d!33162 () Bool)

(assert (=> d!33162 (= (head!555 l2!3099) (h!7771 l2!3099))))

(assert (=> b!139558 d!33162))

(declare-fun b!139651 () Bool)

(declare-fun e!82097 () Bool)

(declare-fun inv!16 (TokenValue!418) Bool)

(assert (=> b!139651 (= e!82097 (inv!16 (value!15603 (h!7771 l2!3099))))))

(declare-fun b!139652 () Bool)

(declare-fun e!82098 () Bool)

(assert (=> b!139652 (= e!82097 e!82098)))

(declare-fun c!29181 () Bool)

(assert (=> b!139652 (= c!29181 (is-IntegerValue!1255 (value!15603 (h!7771 l2!3099))))))

(declare-fun b!139653 () Bool)

(declare-fun e!82096 () Bool)

(declare-fun inv!15 (TokenValue!418) Bool)

(assert (=> b!139653 (= e!82096 (inv!15 (value!15603 (h!7771 l2!3099))))))

(declare-fun b!139654 () Bool)

(declare-fun inv!17 (TokenValue!418) Bool)

(assert (=> b!139654 (= e!82098 (inv!17 (value!15603 (h!7771 l2!3099))))))

(declare-fun d!33164 () Bool)

(declare-fun c!29182 () Bool)

(assert (=> d!33164 (= c!29182 (is-IntegerValue!1254 (value!15603 (h!7771 l2!3099))))))

(assert (=> d!33164 (= (inv!21 (value!15603 (h!7771 l2!3099))) e!82097)))

(declare-fun b!139655 () Bool)

(declare-fun res!65025 () Bool)

(assert (=> b!139655 (=> res!65025 e!82096)))

(assert (=> b!139655 (= res!65025 (not (is-IntegerValue!1256 (value!15603 (h!7771 l2!3099)))))))

(assert (=> b!139655 (= e!82098 e!82096)))

(assert (= (and d!33164 c!29182) b!139651))

(assert (= (and d!33164 (not c!29182)) b!139652))

(assert (= (and b!139652 c!29181) b!139654))

(assert (= (and b!139652 (not c!29181)) b!139655))

(assert (= (and b!139655 (not res!65025)) b!139653))

(declare-fun m!123109 () Bool)

(assert (=> b!139651 m!123109))

(declare-fun m!123111 () Bool)

(assert (=> b!139653 m!123111))

(declare-fun m!123113 () Bool)

(assert (=> b!139654 m!123113))

(assert (=> b!139544 d!33164))

(declare-fun d!33166 () Bool)

(assert (=> d!33166 (= (inv!3119 (tag!574 (rule!903 (h!7771 l1!3130)))) (= (mod (str.len (value!15602 (tag!574 (rule!903 (h!7771 l1!3130))))) 2) 0))))

(assert (=> b!139554 d!33166))

(declare-fun d!33168 () Bool)

(declare-fun res!65026 () Bool)

(declare-fun e!82099 () Bool)

(assert (=> d!33168 (=> (not res!65026) (not e!82099))))

(assert (=> d!33168 (= res!65026 (semiInverseModEq!130 (toChars!866 (transformation!396 (rule!903 (h!7771 l1!3130)))) (toValue!1007 (transformation!396 (rule!903 (h!7771 l1!3130))))))))

(assert (=> d!33168 (= (inv!3122 (transformation!396 (rule!903 (h!7771 l1!3130)))) e!82099)))

(declare-fun b!139656 () Bool)

(assert (=> b!139656 (= e!82099 (equivClasses!113 (toChars!866 (transformation!396 (rule!903 (h!7771 l1!3130)))) (toValue!1007 (transformation!396 (rule!903 (h!7771 l1!3130))))))))

(assert (= (and d!33168 res!65026) b!139656))

(declare-fun m!123115 () Bool)

(assert (=> d!33168 m!123115))

(declare-fun m!123117 () Bool)

(assert (=> b!139656 m!123117))

(assert (=> b!139554 d!33168))

(declare-fun d!33170 () Bool)

(declare-fun res!65031 () Bool)

(declare-fun e!82104 () Bool)

(assert (=> d!33170 (=> res!65031 e!82104)))

(assert (=> d!33170 (= res!65031 (or (not (is-Cons!2374 l2!3099)) (not (is-Cons!2374 (t!23174 l2!3099)))))))

(assert (=> d!33170 (= (tokensListTwoByTwoPredicateList!21 thiss!27322 l2!3099 rules!4268 p!3028) e!82104)))

(declare-fun b!139661 () Bool)

(declare-fun e!82105 () Bool)

(assert (=> b!139661 (= e!82104 e!82105)))

(declare-fun res!65032 () Bool)

(assert (=> b!139661 (=> (not res!65032) (not e!82105))))

(assert (=> b!139661 (= res!65032 (dynLambda!784 p!3028 (h!7771 l2!3099) (h!7771 (t!23174 l2!3099)) rules!4268))))

(declare-fun b!139662 () Bool)

(assert (=> b!139662 (= e!82105 (tokensListTwoByTwoPredicateList!21 thiss!27322 (Cons!2374 (h!7771 (t!23174 l2!3099)) (t!23174 (t!23174 l2!3099))) rules!4268 p!3028))))

(assert (= (and d!33170 (not res!65031)) b!139661))

(assert (= (and b!139661 res!65032) b!139662))

(declare-fun b_lambda!1905 () Bool)

(assert (=> (not b_lambda!1905) (not b!139661)))

(declare-fun t!23190 () Bool)

(declare-fun tb!3883 () Bool)

(assert (=> (and start!14636 (= p!3028 p!3028) t!23190) tb!3883))

(declare-fun result!6036 () Bool)

(assert (=> tb!3883 (= result!6036 true)))

(assert (=> b!139661 t!23190))

(declare-fun b_and!6735 () Bool)

(assert (= b_and!6709 (and (=> t!23190 result!6036) b_and!6735)))

(declare-fun m!123119 () Bool)

(assert (=> b!139661 m!123119))

(declare-fun m!123121 () Bool)

(assert (=> b!139662 m!123121))

(assert (=> b!139543 d!33170))

(declare-fun d!33172 () Bool)

(declare-fun res!65033 () Bool)

(declare-fun e!82106 () Bool)

(assert (=> d!33172 (=> (not res!65033) (not e!82106))))

(assert (=> d!33172 (= res!65033 (not (isEmpty!907 (originalCharacters!439 (h!7771 l2!3099)))))))

(assert (=> d!33172 (= (inv!3123 (h!7771 l2!3099)) e!82106)))

(declare-fun b!139663 () Bool)

(declare-fun res!65034 () Bool)

(assert (=> b!139663 (=> (not res!65034) (not e!82106))))

(assert (=> b!139663 (= res!65034 (= (originalCharacters!439 (h!7771 l2!3099)) (list!832 (dynLambda!786 (toChars!866 (transformation!396 (rule!903 (h!7771 l2!3099)))) (value!15603 (h!7771 l2!3099))))))))

(declare-fun b!139664 () Bool)

(assert (=> b!139664 (= e!82106 (= (size!2088 (h!7771 l2!3099)) (size!2090 (originalCharacters!439 (h!7771 l2!3099)))))))

(assert (= (and d!33172 res!65033) b!139663))

(assert (= (and b!139663 res!65034) b!139664))

(declare-fun b_lambda!1907 () Bool)

(assert (=> (not b_lambda!1907) (not b!139663)))

(declare-fun tb!3885 () Bool)

(declare-fun t!23192 () Bool)

(assert (=> (and b!139545 (= (toChars!866 (transformation!396 (rule!903 (h!7771 l1!3130)))) (toChars!866 (transformation!396 (rule!903 (h!7771 l2!3099))))) t!23192) tb!3885))

(declare-fun b!139665 () Bool)

(declare-fun e!82107 () Bool)

(declare-fun tp!73433 () Bool)

(assert (=> b!139665 (= e!82107 (and (inv!3126 (c!29170 (dynLambda!786 (toChars!866 (transformation!396 (rule!903 (h!7771 l2!3099)))) (value!15603 (h!7771 l2!3099))))) tp!73433))))

(declare-fun result!6038 () Bool)

(assert (=> tb!3885 (= result!6038 (and (inv!3127 (dynLambda!786 (toChars!866 (transformation!396 (rule!903 (h!7771 l2!3099)))) (value!15603 (h!7771 l2!3099)))) e!82107))))

(assert (= tb!3885 b!139665))

(declare-fun m!123123 () Bool)

(assert (=> b!139665 m!123123))

(declare-fun m!123125 () Bool)

(assert (=> tb!3885 m!123125))

(assert (=> b!139663 t!23192))

(declare-fun b_and!6737 () Bool)

(assert (= b_and!6729 (and (=> t!23192 result!6038) b_and!6737)))

(declare-fun t!23194 () Bool)

(declare-fun tb!3887 () Bool)

(assert (=> (and b!139547 (= (toChars!866 (transformation!396 (rule!903 (h!7771 l2!3099)))) (toChars!866 (transformation!396 (rule!903 (h!7771 l2!3099))))) t!23194) tb!3887))

(declare-fun result!6040 () Bool)

(assert (= result!6040 result!6038))

(assert (=> b!139663 t!23194))

(declare-fun b_and!6739 () Bool)

(assert (= b_and!6731 (and (=> t!23194 result!6040) b_and!6739)))

(declare-fun t!23196 () Bool)

(declare-fun tb!3889 () Bool)

(assert (=> (and b!139546 (= (toChars!866 (transformation!396 (h!7770 rules!4268))) (toChars!866 (transformation!396 (rule!903 (h!7771 l2!3099))))) t!23196) tb!3889))

(declare-fun result!6042 () Bool)

(assert (= result!6042 result!6038))

(assert (=> b!139663 t!23196))

(declare-fun b_and!6741 () Bool)

(assert (= b_and!6733 (and (=> t!23196 result!6042) b_and!6741)))

(declare-fun m!123127 () Bool)

(assert (=> d!33172 m!123127))

(declare-fun m!123129 () Bool)

(assert (=> b!139663 m!123129))

(assert (=> b!139663 m!123129))

(declare-fun m!123131 () Bool)

(assert (=> b!139663 m!123131))

(declare-fun m!123133 () Bool)

(assert (=> b!139664 m!123133))

(assert (=> b!139556 d!33172))

(declare-fun d!33174 () Bool)

(assert (=> d!33174 (= (isEmpty!905 l1!3130) (is-Nil!2374 l1!3130))))

(assert (=> b!139555 d!33174))

(declare-fun d!33176 () Bool)

(declare-fun res!65035 () Bool)

(declare-fun e!82108 () Bool)

(assert (=> d!33176 (=> res!65035 e!82108)))

(assert (=> d!33176 (= res!65035 (or (not (is-Cons!2374 l1!3130)) (not (is-Cons!2374 (t!23174 l1!3130)))))))

(assert (=> d!33176 (= (tokensListTwoByTwoPredicateList!21 thiss!27322 l1!3130 rules!4268 p!3028) e!82108)))

(declare-fun b!139666 () Bool)

(declare-fun e!82109 () Bool)

(assert (=> b!139666 (= e!82108 e!82109)))

(declare-fun res!65036 () Bool)

(assert (=> b!139666 (=> (not res!65036) (not e!82109))))

(assert (=> b!139666 (= res!65036 (dynLambda!784 p!3028 (h!7771 l1!3130) (h!7771 (t!23174 l1!3130)) rules!4268))))

(declare-fun b!139667 () Bool)

(assert (=> b!139667 (= e!82109 (tokensListTwoByTwoPredicateList!21 thiss!27322 (Cons!2374 (h!7771 (t!23174 l1!3130)) (t!23174 (t!23174 l1!3130))) rules!4268 p!3028))))

(assert (= (and d!33176 (not res!65035)) b!139666))

(assert (= (and b!139666 res!65036) b!139667))

(declare-fun b_lambda!1909 () Bool)

(assert (=> (not b_lambda!1909) (not b!139666)))

(declare-fun t!23198 () Bool)

(declare-fun tb!3891 () Bool)

(assert (=> (and start!14636 (= p!3028 p!3028) t!23198) tb!3891))

(declare-fun result!6044 () Bool)

(assert (=> tb!3891 (= result!6044 true)))

(assert (=> b!139666 t!23198))

(declare-fun b_and!6743 () Bool)

(assert (= b_and!6735 (and (=> t!23198 result!6044) b_and!6743)))

(declare-fun m!123135 () Bool)

(assert (=> b!139666 m!123135))

(declare-fun m!123137 () Bool)

(assert (=> b!139667 m!123137))

(assert (=> b!139552 d!33176))

(declare-fun d!33178 () Bool)

(assert (=> d!33178 (= (inv!3119 (tag!574 (h!7770 rules!4268))) (= (mod (str.len (value!15602 (tag!574 (h!7770 rules!4268)))) 2) 0))))

(assert (=> b!139541 d!33178))

(declare-fun d!33180 () Bool)

(declare-fun res!65038 () Bool)

(declare-fun e!82110 () Bool)

(assert (=> d!33180 (=> (not res!65038) (not e!82110))))

(assert (=> d!33180 (= res!65038 (semiInverseModEq!130 (toChars!866 (transformation!396 (h!7770 rules!4268))) (toValue!1007 (transformation!396 (h!7770 rules!4268)))))))

(assert (=> d!33180 (= (inv!3122 (transformation!396 (h!7770 rules!4268))) e!82110)))

(declare-fun b!139668 () Bool)

(assert (=> b!139668 (= e!82110 (equivClasses!113 (toChars!866 (transformation!396 (h!7770 rules!4268))) (toValue!1007 (transformation!396 (h!7770 rules!4268)))))))

(assert (= (and d!33180 res!65038) b!139668))

(declare-fun m!123139 () Bool)

(assert (=> d!33180 m!123139))

(declare-fun m!123141 () Bool)

(assert (=> b!139668 m!123141))

(assert (=> b!139541 d!33180))

(declare-fun d!33182 () Bool)

(declare-fun res!65040 () Bool)

(declare-fun e!82111 () Bool)

(assert (=> d!33182 (=> res!65040 e!82111)))

(assert (=> d!33182 (= res!65040 (or (not (is-Cons!2374 (t!23174 l1!3130))) (not (is-Cons!2374 (t!23174 (t!23174 l1!3130))))))))

(assert (=> d!33182 (= (tokensListTwoByTwoPredicateList!21 thiss!27322 (t!23174 l1!3130) rules!4268 p!3028) e!82111)))

(declare-fun b!139669 () Bool)

(declare-fun e!82112 () Bool)

(assert (=> b!139669 (= e!82111 e!82112)))

(declare-fun res!65041 () Bool)

(assert (=> b!139669 (=> (not res!65041) (not e!82112))))

(assert (=> b!139669 (= res!65041 (dynLambda!784 p!3028 (h!7771 (t!23174 l1!3130)) (h!7771 (t!23174 (t!23174 l1!3130))) rules!4268))))

(declare-fun b!139670 () Bool)

(assert (=> b!139670 (= e!82112 (tokensListTwoByTwoPredicateList!21 thiss!27322 (Cons!2374 (h!7771 (t!23174 (t!23174 l1!3130))) (t!23174 (t!23174 (t!23174 l1!3130)))) rules!4268 p!3028))))

(assert (= (and d!33182 (not res!65040)) b!139669))

(assert (= (and b!139669 res!65041) b!139670))

(declare-fun b_lambda!1911 () Bool)

(assert (=> (not b_lambda!1911) (not b!139669)))

(declare-fun t!23200 () Bool)

(declare-fun tb!3893 () Bool)

(assert (=> (and start!14636 (= p!3028 p!3028) t!23200) tb!3893))

(declare-fun result!6046 () Bool)

(assert (=> tb!3893 (= result!6046 true)))

(assert (=> b!139669 t!23200))

(declare-fun b_and!6745 () Bool)

(assert (= b_and!6743 (and (=> t!23200 result!6046) b_and!6745)))

(declare-fun m!123143 () Bool)

(assert (=> b!139669 m!123143))

(declare-fun m!123145 () Bool)

(assert (=> b!139670 m!123145))

(assert (=> b!139551 d!33182))

(declare-fun d!33184 () Bool)

(declare-fun lt!41102 () Token!536)

(assert (=> d!33184 (contains!377 (t!23174 l1!3130) lt!41102)))

(declare-fun e!82113 () Token!536)

(assert (=> d!33184 (= lt!41102 e!82113)))

(declare-fun c!29183 () Bool)

(assert (=> d!33184 (= c!29183 (and (is-Cons!2374 (t!23174 l1!3130)) (is-Nil!2374 (t!23174 (t!23174 l1!3130)))))))

(assert (=> d!33184 (not (isEmpty!905 (t!23174 l1!3130)))))

(assert (=> d!33184 (= (last!30 (t!23174 l1!3130)) lt!41102)))

(declare-fun b!139671 () Bool)

(assert (=> b!139671 (= e!82113 (h!7771 (t!23174 l1!3130)))))

(declare-fun b!139672 () Bool)

(assert (=> b!139672 (= e!82113 (last!30 (t!23174 (t!23174 l1!3130))))))

(assert (= (and d!33184 c!29183) b!139671))

(assert (= (and d!33184 (not c!29183)) b!139672))

(declare-fun m!123147 () Bool)

(assert (=> d!33184 m!123147))

(assert (=> d!33184 m!123009))

(declare-fun m!123149 () Bool)

(assert (=> b!139672 m!123149))

(assert (=> b!139553 d!33184))

(declare-fun b!139673 () Bool)

(declare-fun e!82115 () Bool)

(assert (=> b!139673 (= e!82115 (inv!16 (value!15603 (h!7771 l1!3130))))))

(declare-fun b!139674 () Bool)

(declare-fun e!82116 () Bool)

(assert (=> b!139674 (= e!82115 e!82116)))

(declare-fun c!29184 () Bool)

(assert (=> b!139674 (= c!29184 (is-IntegerValue!1255 (value!15603 (h!7771 l1!3130))))))

(declare-fun b!139675 () Bool)

(declare-fun e!82114 () Bool)

(assert (=> b!139675 (= e!82114 (inv!15 (value!15603 (h!7771 l1!3130))))))

(declare-fun b!139676 () Bool)

(assert (=> b!139676 (= e!82116 (inv!17 (value!15603 (h!7771 l1!3130))))))

(declare-fun d!33186 () Bool)

(declare-fun c!29185 () Bool)

(assert (=> d!33186 (= c!29185 (is-IntegerValue!1254 (value!15603 (h!7771 l1!3130))))))

(assert (=> d!33186 (= (inv!21 (value!15603 (h!7771 l1!3130))) e!82115)))

(declare-fun b!139677 () Bool)

(declare-fun res!65043 () Bool)

(assert (=> b!139677 (=> res!65043 e!82114)))

(assert (=> b!139677 (= res!65043 (not (is-IntegerValue!1256 (value!15603 (h!7771 l1!3130)))))))

(assert (=> b!139677 (= e!82116 e!82114)))

(assert (= (and d!33186 c!29185) b!139673))

(assert (= (and d!33186 (not c!29185)) b!139674))

(assert (= (and b!139674 c!29184) b!139676))

(assert (= (and b!139674 (not c!29184)) b!139677))

(assert (= (and b!139677 (not res!65043)) b!139675))

(declare-fun m!123151 () Bool)

(assert (=> b!139673 m!123151))

(declare-fun m!123153 () Bool)

(assert (=> b!139675 m!123153))

(declare-fun m!123155 () Bool)

(assert (=> b!139676 m!123155))

(assert (=> b!139542 d!33186))

(declare-fun b!139691 () Bool)

(declare-fun b_free!4441 () Bool)

(declare-fun b_next!4441 () Bool)

(assert (=> b!139691 (= b_free!4441 (not b_next!4441))))

(declare-fun tp!73444 () Bool)

(declare-fun b_and!6747 () Bool)

(assert (=> b!139691 (= tp!73444 b_and!6747)))

(declare-fun b_free!4443 () Bool)

(declare-fun b_next!4443 () Bool)

(assert (=> b!139691 (= b_free!4443 (not b_next!4443))))

(declare-fun t!23202 () Bool)

(declare-fun tb!3895 () Bool)

(assert (=> (and b!139691 (= (toChars!866 (transformation!396 (rule!903 (h!7771 (t!23174 l1!3130))))) (toChars!866 (transformation!396 (rule!903 (h!7771 l1!3130))))) t!23202) tb!3895))

(declare-fun result!6050 () Bool)

(assert (= result!6050 result!6028))

(assert (=> b!139625 t!23202))

(declare-fun t!23204 () Bool)

(declare-fun tb!3897 () Bool)

(assert (=> (and b!139691 (= (toChars!866 (transformation!396 (rule!903 (h!7771 (t!23174 l1!3130))))) (toChars!866 (transformation!396 (rule!903 (h!7771 l2!3099))))) t!23204) tb!3897))

(declare-fun result!6052 () Bool)

(assert (= result!6052 result!6038))

(assert (=> b!139663 t!23204))

(declare-fun tp!73448 () Bool)

(declare-fun b_and!6749 () Bool)

(assert (=> b!139691 (= tp!73448 (and (=> t!23202 result!6050) (=> t!23204 result!6052) b_and!6749))))

(declare-fun tp!73445 () Bool)

(declare-fun e!82133 () Bool)

(declare-fun e!82134 () Bool)

(declare-fun b!139690 () Bool)

(assert (=> b!139690 (= e!82134 (and tp!73445 (inv!3119 (tag!574 (rule!903 (h!7771 (t!23174 l1!3130))))) (inv!3122 (transformation!396 (rule!903 (h!7771 (t!23174 l1!3130))))) e!82133))))

(declare-fun e!82130 () Bool)

(assert (=> b!139560 (= tp!73379 e!82130)))

(assert (=> b!139691 (= e!82133 (and tp!73444 tp!73448))))

(declare-fun tp!73447 () Bool)

(declare-fun e!82132 () Bool)

(declare-fun b!139688 () Bool)

(assert (=> b!139688 (= e!82130 (and (inv!3123 (h!7771 (t!23174 l1!3130))) e!82132 tp!73447))))

(declare-fun b!139689 () Bool)

(declare-fun tp!73446 () Bool)

(assert (=> b!139689 (= e!82132 (and (inv!21 (value!15603 (h!7771 (t!23174 l1!3130)))) e!82134 tp!73446))))

(assert (= b!139690 b!139691))

(assert (= b!139689 b!139690))

(assert (= b!139688 b!139689))

(assert (= (and b!139560 (is-Cons!2374 (t!23174 l1!3130))) b!139688))

(declare-fun m!123157 () Bool)

(assert (=> b!139690 m!123157))

(declare-fun m!123159 () Bool)

(assert (=> b!139690 m!123159))

(declare-fun m!123161 () Bool)

(assert (=> b!139688 m!123161))

(declare-fun m!123163 () Bool)

(assert (=> b!139689 m!123163))

(declare-fun b!139696 () Bool)

(declare-fun e!82137 () Bool)

(declare-fun tp_is_empty!1557 () Bool)

(declare-fun tp!73451 () Bool)

(assert (=> b!139696 (= e!82137 (and tp_is_empty!1557 tp!73451))))

(assert (=> b!139544 (= tp!73372 e!82137)))

(assert (= (and b!139544 (is-Cons!2372 (originalCharacters!439 (h!7771 l2!3099)))) b!139696))

(declare-fun e!82140 () Bool)

(assert (=> b!139554 (= tp!73378 e!82140)))

(declare-fun b!139707 () Bool)

(assert (=> b!139707 (= e!82140 tp_is_empty!1557)))

(declare-fun b!139708 () Bool)

(declare-fun tp!73463 () Bool)

(declare-fun tp!73462 () Bool)

(assert (=> b!139708 (= e!82140 (and tp!73463 tp!73462))))

(declare-fun b!139709 () Bool)

(declare-fun tp!73465 () Bool)

(assert (=> b!139709 (= e!82140 tp!73465)))

(declare-fun b!139710 () Bool)

(declare-fun tp!73466 () Bool)

(declare-fun tp!73464 () Bool)

(assert (=> b!139710 (= e!82140 (and tp!73466 tp!73464))))

(assert (= (and b!139554 (is-ElementMatch!620 (regex!396 (rule!903 (h!7771 l1!3130))))) b!139707))

(assert (= (and b!139554 (is-Concat!1039 (regex!396 (rule!903 (h!7771 l1!3130))))) b!139708))

(assert (= (and b!139554 (is-Star!620 (regex!396 (rule!903 (h!7771 l1!3130))))) b!139709))

(assert (= (and b!139554 (is-Union!620 (regex!396 (rule!903 (h!7771 l1!3130))))) b!139710))

(declare-fun b!139714 () Bool)

(declare-fun b_free!4445 () Bool)

(declare-fun b_next!4445 () Bool)

(assert (=> b!139714 (= b_free!4445 (not b_next!4445))))

(declare-fun tp!73467 () Bool)

(declare-fun b_and!6751 () Bool)

(assert (=> b!139714 (= tp!73467 b_and!6751)))

(declare-fun b_free!4447 () Bool)

(declare-fun b_next!4447 () Bool)

(assert (=> b!139714 (= b_free!4447 (not b_next!4447))))

(declare-fun tb!3899 () Bool)

(declare-fun t!23206 () Bool)

(assert (=> (and b!139714 (= (toChars!866 (transformation!396 (rule!903 (h!7771 (t!23174 l2!3099))))) (toChars!866 (transformation!396 (rule!903 (h!7771 l1!3130))))) t!23206) tb!3899))

(declare-fun result!6058 () Bool)

(assert (= result!6058 result!6028))

(assert (=> b!139625 t!23206))

(declare-fun t!23208 () Bool)

(declare-fun tb!3901 () Bool)

(assert (=> (and b!139714 (= (toChars!866 (transformation!396 (rule!903 (h!7771 (t!23174 l2!3099))))) (toChars!866 (transformation!396 (rule!903 (h!7771 l2!3099))))) t!23208) tb!3901))

(declare-fun result!6060 () Bool)

(assert (= result!6060 result!6038))

(assert (=> b!139663 t!23208))

(declare-fun b_and!6753 () Bool)

(declare-fun tp!73471 () Bool)

(assert (=> b!139714 (= tp!73471 (and (=> t!23206 result!6058) (=> t!23208 result!6060) b_and!6753))))

(declare-fun tp!73468 () Bool)

(declare-fun e!82145 () Bool)

(declare-fun e!82146 () Bool)

(declare-fun b!139713 () Bool)

(assert (=> b!139713 (= e!82146 (and tp!73468 (inv!3119 (tag!574 (rule!903 (h!7771 (t!23174 l2!3099))))) (inv!3122 (transformation!396 (rule!903 (h!7771 (t!23174 l2!3099))))) e!82145))))

(declare-fun e!82142 () Bool)

(assert (=> b!139556 (= tp!73375 e!82142)))

(assert (=> b!139714 (= e!82145 (and tp!73467 tp!73471))))

(declare-fun tp!73470 () Bool)

(declare-fun b!139711 () Bool)

(declare-fun e!82144 () Bool)

(assert (=> b!139711 (= e!82142 (and (inv!3123 (h!7771 (t!23174 l2!3099))) e!82144 tp!73470))))

(declare-fun b!139712 () Bool)

(declare-fun tp!73469 () Bool)

(assert (=> b!139712 (= e!82144 (and (inv!21 (value!15603 (h!7771 (t!23174 l2!3099)))) e!82146 tp!73469))))

(assert (= b!139713 b!139714))

(assert (= b!139712 b!139713))

(assert (= b!139711 b!139712))

(assert (= (and b!139556 (is-Cons!2374 (t!23174 l2!3099))) b!139711))

(declare-fun m!123165 () Bool)

(assert (=> b!139713 m!123165))

(declare-fun m!123167 () Bool)

(assert (=> b!139713 m!123167))

(declare-fun m!123169 () Bool)

(assert (=> b!139711 m!123169))

(declare-fun m!123171 () Bool)

(assert (=> b!139712 m!123171))

(declare-fun b!139725 () Bool)

(declare-fun b_free!4449 () Bool)

(declare-fun b_next!4449 () Bool)

(assert (=> b!139725 (= b_free!4449 (not b_next!4449))))

(declare-fun tp!73482 () Bool)

(declare-fun b_and!6755 () Bool)

(assert (=> b!139725 (= tp!73482 b_and!6755)))

(declare-fun b_free!4451 () Bool)

(declare-fun b_next!4451 () Bool)

(assert (=> b!139725 (= b_free!4451 (not b_next!4451))))

(declare-fun t!23210 () Bool)

(declare-fun tb!3903 () Bool)

(assert (=> (and b!139725 (= (toChars!866 (transformation!396 (h!7770 (t!23173 rules!4268)))) (toChars!866 (transformation!396 (rule!903 (h!7771 l1!3130))))) t!23210) tb!3903))

(declare-fun result!6064 () Bool)

(assert (= result!6064 result!6028))

(assert (=> b!139625 t!23210))

(declare-fun t!23212 () Bool)

(declare-fun tb!3905 () Bool)

(assert (=> (and b!139725 (= (toChars!866 (transformation!396 (h!7770 (t!23173 rules!4268)))) (toChars!866 (transformation!396 (rule!903 (h!7771 l2!3099))))) t!23212) tb!3905))

(declare-fun result!6066 () Bool)

(assert (= result!6066 result!6038))

(assert (=> b!139663 t!23212))

(declare-fun b_and!6757 () Bool)

(declare-fun tp!73483 () Bool)

(assert (=> b!139725 (= tp!73483 (and (=> t!23210 result!6064) (=> t!23212 result!6066) b_and!6757))))

(declare-fun e!82157 () Bool)

(assert (=> b!139725 (= e!82157 (and tp!73482 tp!73483))))

(declare-fun e!82158 () Bool)

(declare-fun b!139724 () Bool)

(declare-fun tp!73480 () Bool)

(assert (=> b!139724 (= e!82158 (and tp!73480 (inv!3119 (tag!574 (h!7770 (t!23173 rules!4268)))) (inv!3122 (transformation!396 (h!7770 (t!23173 rules!4268)))) e!82157))))

(declare-fun b!139723 () Bool)

(declare-fun e!82155 () Bool)

(declare-fun tp!73481 () Bool)

(assert (=> b!139723 (= e!82155 (and e!82158 tp!73481))))

(assert (=> b!139550 (= tp!73381 e!82155)))

(assert (= b!139724 b!139725))

(assert (= b!139723 b!139724))

(assert (= (and b!139550 (is-Cons!2373 (t!23173 rules!4268))) b!139723))

(declare-fun m!123173 () Bool)

(assert (=> b!139724 m!123173))

(declare-fun m!123175 () Bool)

(assert (=> b!139724 m!123175))

(declare-fun e!82159 () Bool)

(assert (=> b!139541 (= tp!73377 e!82159)))

(declare-fun b!139726 () Bool)

(assert (=> b!139726 (= e!82159 tp_is_empty!1557)))

(declare-fun b!139727 () Bool)

(declare-fun tp!73485 () Bool)

(declare-fun tp!73484 () Bool)

(assert (=> b!139727 (= e!82159 (and tp!73485 tp!73484))))

(declare-fun b!139728 () Bool)

(declare-fun tp!73487 () Bool)

(assert (=> b!139728 (= e!82159 tp!73487)))

(declare-fun b!139729 () Bool)

(declare-fun tp!73488 () Bool)

(declare-fun tp!73486 () Bool)

(assert (=> b!139729 (= e!82159 (and tp!73488 tp!73486))))

(assert (= (and b!139541 (is-ElementMatch!620 (regex!396 (h!7770 rules!4268)))) b!139726))

(assert (= (and b!139541 (is-Concat!1039 (regex!396 (h!7770 rules!4268)))) b!139727))

(assert (= (and b!139541 (is-Star!620 (regex!396 (h!7770 rules!4268)))) b!139728))

(assert (= (and b!139541 (is-Union!620 (regex!396 (h!7770 rules!4268)))) b!139729))

(declare-fun e!82160 () Bool)

(assert (=> b!139548 (= tp!73370 e!82160)))

(declare-fun b!139730 () Bool)

(assert (=> b!139730 (= e!82160 tp_is_empty!1557)))

(declare-fun b!139731 () Bool)

(declare-fun tp!73490 () Bool)

(declare-fun tp!73489 () Bool)

(assert (=> b!139731 (= e!82160 (and tp!73490 tp!73489))))

(declare-fun b!139732 () Bool)

(declare-fun tp!73492 () Bool)

(assert (=> b!139732 (= e!82160 tp!73492)))

(declare-fun b!139733 () Bool)

(declare-fun tp!73493 () Bool)

(declare-fun tp!73491 () Bool)

(assert (=> b!139733 (= e!82160 (and tp!73493 tp!73491))))

(assert (= (and b!139548 (is-ElementMatch!620 (regex!396 (rule!903 (h!7771 l2!3099))))) b!139730))

(assert (= (and b!139548 (is-Concat!1039 (regex!396 (rule!903 (h!7771 l2!3099))))) b!139731))

(assert (= (and b!139548 (is-Star!620 (regex!396 (rule!903 (h!7771 l2!3099))))) b!139732))

(assert (= (and b!139548 (is-Union!620 (regex!396 (rule!903 (h!7771 l2!3099))))) b!139733))

(declare-fun b!139734 () Bool)

(declare-fun e!82161 () Bool)

(declare-fun tp!73494 () Bool)

(assert (=> b!139734 (= e!82161 (and tp_is_empty!1557 tp!73494))))

(assert (=> b!139542 (= tp!73374 e!82161)))

(assert (= (and b!139542 (is-Cons!2372 (originalCharacters!439 (h!7771 l1!3130)))) b!139734))

(declare-fun b_lambda!1913 () Bool)

(assert (= b_lambda!1907 (or (and b!139725 b_free!4451 (= (toChars!866 (transformation!396 (h!7770 (t!23173 rules!4268)))) (toChars!866 (transformation!396 (rule!903 (h!7771 l2!3099)))))) (and b!139545 b_free!4417 (= (toChars!866 (transformation!396 (rule!903 (h!7771 l1!3130)))) (toChars!866 (transformation!396 (rule!903 (h!7771 l2!3099)))))) (and b!139546 b_free!4425 (= (toChars!866 (transformation!396 (h!7770 rules!4268))) (toChars!866 (transformation!396 (rule!903 (h!7771 l2!3099)))))) (and b!139714 b_free!4447 (= (toChars!866 (transformation!396 (rule!903 (h!7771 (t!23174 l2!3099))))) (toChars!866 (transformation!396 (rule!903 (h!7771 l2!3099)))))) (and b!139547 b_free!4421) (and b!139691 b_free!4443 (= (toChars!866 (transformation!396 (rule!903 (h!7771 (t!23174 l1!3130))))) (toChars!866 (transformation!396 (rule!903 (h!7771 l2!3099)))))) b_lambda!1913)))

(declare-fun b_lambda!1915 () Bool)

(assert (= b_lambda!1899 (or (and b!139725 b_free!4451 (= (toChars!866 (transformation!396 (h!7770 (t!23173 rules!4268)))) (toChars!866 (transformation!396 (rule!903 (h!7771 l1!3130)))))) (and b!139545 b_free!4417) (and b!139547 b_free!4421 (= (toChars!866 (transformation!396 (rule!903 (h!7771 l2!3099)))) (toChars!866 (transformation!396 (rule!903 (h!7771 l1!3130)))))) (and b!139691 b_free!4443 (= (toChars!866 (transformation!396 (rule!903 (h!7771 (t!23174 l1!3130))))) (toChars!866 (transformation!396 (rule!903 (h!7771 l1!3130)))))) (and b!139714 b_free!4447 (= (toChars!866 (transformation!396 (rule!903 (h!7771 (t!23174 l2!3099))))) (toChars!866 (transformation!396 (rule!903 (h!7771 l1!3130)))))) (and b!139546 b_free!4425 (= (toChars!866 (transformation!396 (h!7770 rules!4268))) (toChars!866 (transformation!396 (rule!903 (h!7771 l1!3130)))))) b_lambda!1915)))

(declare-fun b_lambda!1917 () Bool)

(assert (= b_lambda!1911 (or (and start!14636 b_free!4413) b_lambda!1917)))

(declare-fun b_lambda!1919 () Bool)

(assert (= b_lambda!1909 (or (and start!14636 b_free!4413) b_lambda!1919)))

(declare-fun b_lambda!1921 () Bool)

(assert (= b_lambda!1905 (or (and start!14636 b_free!4413) b_lambda!1921)))

(push 1)

(assert (not d!33168))

(assert (not b_next!4425))

(assert (not b!139733))

(assert (not b!139656))

(assert b_and!6695)

(assert (not b!139723))

(assert (not b!139670))

(assert (not b!139710))

(assert (not b!139672))

(assert (not b!139712))

(assert (not b_next!4415))

(assert (not d!33158))

(assert (not b!139688))

(assert (not b_next!4445))

(assert b_and!6739)

(assert (not b!139696))

(assert (not d!33180))

(assert (not b!139711))

(assert (not d!33184))

(assert (not b!139668))

(assert (not b!139728))

(assert (not b_lambda!1917))

(assert b_and!6753)

(assert (not b!139662))

(assert (not b_next!4447))

(assert (not b_next!4421))

(assert (not b_next!4413))

(assert (not b!139690))

(assert (not b_next!4451))

(assert b_and!6703)

(assert b_and!6757)

(assert b_and!6745)

(assert (not b!139653))

(assert (not b!139667))

(assert (not b!139724))

(assert (not b!139708))

(assert (not b!139640))

(assert b_and!6755)

(assert (not b_lambda!1921))

(assert (not b!139676))

(assert (not b_next!4419))

(assert (not b_next!4443))

(assert (not tb!3885))

(assert (not b!139631))

(assert (not b_lambda!1897))

(assert (not b!139654))

(assert (not b_lambda!1919))

(assert (not b_next!4423))

(assert b_and!6737)

(assert (not b!139634))

(assert (not d!33172))

(assert (not b_next!4441))

(assert (not d!33150))

(assert (not b_next!4417))

(assert (not b!139731))

(assert (not b!139734))

(assert (not b!139713))

(assert (not b!139727))

(assert (not b_lambda!1913))

(assert (not tb!3877))

(assert (not b_lambda!1915))

(assert (not b_next!4449))

(assert tp_is_empty!1557)

(assert (not d!33160))

(assert (not b!139675))

(assert b_and!6741)

(assert (not b!139663))

(assert b_and!6747)

(assert b_and!6699)

(assert (not b!139709))

(assert (not b!139689))

(assert (not b_lambda!1895))

(assert (not b!139626))

(assert (not b!139664))

(assert (not b!139729))

(assert (not b!139665))

(assert b_and!6751)

(assert (not b!139651))

(assert b_and!6749)

(assert (not b!139673))

(assert (not b!139732))

(assert (not b!139625))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!4425))

(assert (not b_next!4415))

(assert b_and!6753)

(assert b_and!6755)

(assert (not b_next!4423))

(assert b_and!6737)

(assert (not b_next!4441))

(assert (not b_next!4417))

(assert b_and!6695)

(assert (not b_next!4449))

(assert b_and!6741)

(assert b_and!6747)

(assert b_and!6699)

(assert b_and!6751)

(assert b_and!6749)

(assert (not b_next!4445))

(assert b_and!6739)

(assert (not b_next!4447))

(assert (not b_next!4421))

(assert (not b_next!4413))

(assert (not b_next!4451))

(assert b_and!6703)

(assert b_and!6757)

(assert b_and!6745)

(assert (not b_next!4419))

(assert (not b_next!4443))

(check-sat)

(pop 1)

